<#
.SYNOPSIS
    This script is an easier way to remember and compare files using powershell.
.EXAMPLE
    PS> .\Compare-Files.ps1 -File1 c:\myfirstfile.txt -File2 c:\mysecondfile.txt

    This example will compare the 2 files provided.
.PARAMETER
    $File1 
.PARAMETER
    $File2
#>

param (
    [Parameter(Mandatory=$true)]
    [string]$File1, 
    [Parameter(Mandatory=$true)]
    [string]$File2
)

Compare-Object (Get-Content $File1) (Get-Content $File2)

