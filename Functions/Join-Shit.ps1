function Join-Shit {
    [CmdLetBinding()]
    Param(
        [object]$left,
        [object]$right,
        [string]$key
    )

    $returnCollection = @()

    $left | % {
        $keyValue = $_.$key
        $rightValue = $right | Where-Object {$_.$key -eq $keyValue} 

        $returnCollection += @{
            key = $keyValue
            ExistsOnRight = [bool]$rightValue
            ExistsOnLeft = $true
            LeftValue = $_
            RightValue = $rightValue
        }
    }

    $right | Where-Object {$_.$key -notin $returnCollection.$key} | % {
        $returnCollection += @{
            key = $_.$key
            ExistsOnRight = $true
            ExistsOnLeft = $false
            LeftValue = $null
            RightValue = $_
        }
    }

    $returnCollection
}
