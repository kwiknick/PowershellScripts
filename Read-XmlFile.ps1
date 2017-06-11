param([string] $xmlFilePath = '.\Example.xml')

[xml] $xmlContent = Get-Content -Path $xmlFilePath

$xmlContent.Categories.Category | Format-Table -AutoSize

# The below will get the version of assemblies:
# Write-Host "Name, Version, Time"

# Foreach( $file in Get-ChildItem C:\windows\assembly  -Recurse -filter "*.dll" )
# {
#     if ($file -match "(.*dll)$")
#     {
#         Write-Host $file.Name "," $file.VersionInfo.FileVersion "," $file.lastwritetime
#     }
#     else
#     {
#         Write-Host "Not Found"
#     }
# }

