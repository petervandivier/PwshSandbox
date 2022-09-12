
Push-Location $PSScriptRoot

Add-Type (Get-Content ./Classes/classes.cs -Raw)

. ./Functions/Get-Foo.ps1

$global:FooHash = @{
    foo = @{}
    bar = @{}
    baz = @{}
}

Export-ModuleMember -Variable FooHash

Pop-Location
