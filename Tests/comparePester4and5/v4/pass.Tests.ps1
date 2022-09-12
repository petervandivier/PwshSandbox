#Requires -Modules @{ModuleName='Pester';MaximumVersion='4.99';Guid='a699dea5-2c73-4616-a270-1f7abb777e71'}

Describe "1 eq 1" {
    Context "passing context" {
        It "passes" {
            1 | Should Be 1
        }
    }
}