## Add-Signature.ps1
## Signs a file with a codesigning certificate

param([string] $file=$(throw "Please specify a filename."))

$cert = @(Get-ChildItem cert:\CurrentUser\My -codesigning)[0]

Set-AuthenticodeSignature $file $cert