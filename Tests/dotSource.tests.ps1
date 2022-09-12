#Requires -Modules foo

Push-Location $PSScriptRoot

BeforeAll {
    Add-Type (Get-Content ./Classes/classes.cs -Raw)
}

Describe "FooHash should contain all of type [foo]" {
    It "<_>" -ForEach ($FooHash.GetEnumerator().Name | Sort-Object) {
        $_ | Should -BeIn ([foo]::New().GetValidValues()) 
    }
}

Describe "[foo] should be fully enumerated in `$FooHash" {
    It "<_>" -ForEach ([foo]::New().GetValidValues() | Sort-Object) {
        $FooHash.GetEnumerator().Name | Should -Contain $_
    }
}

Pop-Location
