function f {
    Param(
        [string[]]$p
    )

    $a = @( 'foo', 'bar', 'baz' )

    $r = $p | Where { $_ -in $a } 

    $x = @()
    $p | Where-Object {$_[0] -eq '-'} | ForEach-Object {
        $x += $p.Substring(1)
    }
    $r = $r | Where {$_ -notin $x}

    $r
}