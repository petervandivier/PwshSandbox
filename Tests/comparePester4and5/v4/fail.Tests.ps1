#Requires -Modules @{ModuleName='Pester';MaximumVersion='4.99';Guid='a699dea5-2c73-4616-a270-1f7abb777e71'}

Describe "1 eq 2" {
    Context "failing context" {
        It "fails" {
            1 | Should Be 2
        }
    }
}