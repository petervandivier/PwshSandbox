
# https://github.com/pester/Pester/pull/2023


Describe "d1" { 
    Describe "d2" {
        It "i2" {
            $true | Should -BeTrue
        }
        Describe "d3" { 
            It "i3" {
                $false | Should -BeTrue # Fail
            }
            It "i4" {
                $true | Should -BeTrue
            }
        }
        It "i5" {
            $true | Should -BeTrue
        }
    }
    Describe "d4" {
        It "i6" {
            $true | Should -BeTrue
        }
    }
}

