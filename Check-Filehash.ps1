
Param(
	[Parameter(Mandatory=$true)]
	[ValidateNotNullorEmpty()]
	[string]$filePath,
	
	[Parameter(Mandatory=$true)]
	[ValidateNotNullorEmpty()]
	[string]$hashAlgorithm
)

$result = CertUtil -hashfile $filePath $hashAlgorithm
$result = $result -replace '\s',''

Write-Host
Write-Host
Write-Output $result
Write-Host
