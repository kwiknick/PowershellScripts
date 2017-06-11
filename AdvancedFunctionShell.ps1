#This is the basis for how you should write powershell functions
function New-AdvancedFunction {
    <#
    .SYNOPSIS

    .EXAMPLE
        PS> New-AdvancedFunction -Param1 MYPARAM

        This example does something to this and that.
    .PARAMETER
    .PARAMETER
    .PARAMETER
    #>
    [CmdletBinding()]
    param (

    )
    process {
        try {

        } catch {
            Write-Error "$($_.Exeption.Message) - Line Number: $($_.InvocationInfo.ScriptLineNumber)"
        }
    }
}