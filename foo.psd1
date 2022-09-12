@{
    RootModule = '.\foo.psm1'
    ModuleVersion = '0.0'
    VariablesToExport = @(
        'FooHash'
    )
    FunctionsToExport = @(
        'Get-Foo'
    )
}