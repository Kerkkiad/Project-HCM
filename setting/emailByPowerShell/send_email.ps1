[CmdletBinding()]
param(
    [Parameter(Mandatory=$true)][string]$PassKey,
    [string]$Subject,
    [string]$Body,
    [string[]]$ToEmails,
    [string[]]$CcEmails,
    [string]$FromEmail,
    [string]$AttachmentPaths
)
function Send-Email {
    param([string]$Subject,[string]$Body,[string[]]$ToEmails,[string[]]$CcEmails,[string]$FromEmail,[pscredential]$Credential,[string[]]$AttachmentPaths)
    try {
        $msg = New-Object System.Net.Mail.MailMessage
        $msg.From = $FromEmail
        foreach ($address in $ToEmails) { $msg.To.Add($address) }
        foreach ($address in $CcEmails) { $msg.CC.Add($address) }
        $msg.Subject = $Subject; $msg.Body = $Body; $msg.IsBodyHtml = $true
        foreach ($path in $AttachmentPaths) { if (Test-Path $path) { $msg.Attachments.Add((New-Object System.Net.Mail.Attachment($path))) } }
        $smtp = New-Object System.Net.Mail.SmtpClient('mail.example.invalid',587)
        $smtp.EnableSsl = $true; $smtp.Credentials = $Credential
        $smtp.Send($msg)
        Write-Host 'Email sent successfully'
    } catch { Write-Host "Failed to send email: $_" -ERROR }
}
