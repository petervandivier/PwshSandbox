

# PsScriptAnalyzer reports false positive for $vars defined in `Discovery` not used until `It`
[System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]

# above suppression requires Param()
Param()

Describe "Invoke a linter false positive" {
    Context "Test is fine, linter throws an error" -ForEach $Files {
        It "<_.FullName> begins with 'C:\'" {
            $_.FullName.Substring(0,3) | Should -Be 'C:\'
        }
    }
}