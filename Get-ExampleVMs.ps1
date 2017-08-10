param(
    [string] $xmlFilePath1 = '.\ExampleVMs.xml',
    [string] $xmlFilePath2 = '.\ExampleVMs2.xml',
    [string] $envToGrab = 'dev',
    [string] $toEmailAddress = 'List_IT@company.com'
    )

$fromEmailAddress = 'No.Reply@company.com'
[xml] $xmlContent1 = Get-Content -Path $xmlFilePath1
[xml] $xmlContent2 = Get-Content -Path $xmlFilePath2

# This area will have to be an area that walks the path of the elements and does the unique 
# on the concatenated one.
$servers1 = $xmlContent1.environment.$envToGrab.server
$servers2 = $xmlContent2.environment.$envToGrab.server

$servers = $servers1 + $servers2 | Select-Object -unique

$emailBody = foreach ($server in $servers) 
{
    Write-Host "Here is the server to ping: $server"
}

# Maybe setup some if logic to set the "To address" for the email based on environment.
if ($emailBody -contains "timed out")
{
    $email = @{
                From = $fromEmailAddress
                To = $toEmailAddress
                Subject = "A $envToGrab Server is Down"
                SMTPServer = "<smtp server>"
                Body = $emailBody
              }

    Send-Mailmessage @email
}

