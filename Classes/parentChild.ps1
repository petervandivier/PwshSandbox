# https://powershell.slack.com/archives/C1RCWRDL4/p1658784474555409

class a {
    [int]$a
    hidden $_b = $($this | Add-Member 'b' `
        {
            # get
            "getter $($this._b)"
        } `
        {
            # set
            param($arg)
            $this._p = "setter $arg"
        }
    )

    a(){
        $this.SetB()
    }

    [void]SetB(){
        $this.b = $this.a * 2
    }
}

class aColl {
    [a[]]$aColl

    aColl(){}

    aColl([object[]]$aColl){
        $this.aColl = $aColl
        
        $this.aColl | ForEach-Object {
            $_.SetB()
        }
    }
}

<#
[a]@{a=1}

[aColl](@{a=1},@{a=2})
$foo = [aColl]([a]@{a=1},[a]@{a=2})
# InvalidArgument: Cannot convert the "System.Object[]" value of type "System.Object[]" to type "aColl".

$foo = [aColl]@{aColl=([a]@{a=1},[a]@{a=2})}
#>

