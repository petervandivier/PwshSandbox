# https://vexx32.github.io/2018/11/29/Dynamic-ValidateSet/

function Get-ValidValues {
    @(
        'foo'
        'bar'
        'baz'
    )
}

function Invoke-Foo {
    [CmdletBinding()]
    param(
        [Parameter(Position = 0, Mandatory)]
        [ArgumentCompleter({
            param($Command, $Parameter, $WordToComplete, $CommandAst, $FakeBoundParams)
            Get-ValidValues
        })]
        [ValidateScript({ $_ -in (Get-ValidValues) })]
        [string]
        $Foo
    )

    $Foo
}