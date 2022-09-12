function Get-Foo {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory)]
        [ValidateSet([foo])]
        [string]$Name
    )

    $Name
}