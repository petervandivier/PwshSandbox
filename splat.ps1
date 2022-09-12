# Describe "demo" {
#     BeforeDiscovery {
#         $foo = @(
#             @{a = 1; b = 2},
#             @{a = 2; b = 4},
#             @{a = 3; b = 6},
#             @{a = 4; b = 8}
#         )
#     }
#     It "data-driven <_.a>" -ForEach $foo {
#         $_.b | Should -Be (2* $_.a)
#     }
#     It "static " {
#         $foo.count | Should -Be 4
#     }
# }

$foo = @(
    @{a = 1; b = 2},
    @{a = 2; b = 4},
    @{a = 3; b = 6},
    @{a = 4; b = 8}
)

$foo | ForEach-Object {
    Describe "Testing $($_.a) " {
        It "b is 2x" {
            $_.b | Should Be (2 * $_.a)
        }
    }
}