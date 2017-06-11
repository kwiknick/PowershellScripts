$Url = "http://client.akamai.com/install/test-objects/10MB.bin" 
$Path = "Out-Null" 
$WebClient = New-Object Net.WebClient 

Write-Host -BackgroundColor Green " Starting the Speed Test.... "
 
$Speed = " {0:N2} MB/sec" -f ((10/(Measure-Command {$Request=Get-Date; $WebClient.DownloadFile( $Url, $Path )}).TotalSeconds)*8)

Write-Host -ForegroundColor Green $Speed
Write-Host -BackgroundColor Green " ......Ending the Speed Test "
Remove-Item .\Out-Null