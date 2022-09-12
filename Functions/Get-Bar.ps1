function Get-Bar {
    [CmdletBinding()]
    Param(
        [string]$Name = 'bar'
    )

    if($PSBoundParameters.Keys -contains 'Name'){
        "User: $Name"
    }
    else{
        "Default: $Name"
    }
}
