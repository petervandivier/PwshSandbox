BeforeDiscovery {
    $testCases = (Get-ChildItem C:\).Name
}

Describe 'yeah' {
    It 'things <_>' -TestCases $testCases {
        Write-Host "$_ < this got stuff"
        $true | Should -BeTrue
    }
}