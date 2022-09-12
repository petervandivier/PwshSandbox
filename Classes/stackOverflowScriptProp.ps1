# https://stackoverflow.com/a/40365941/4709762

class c {
    hidden $_p = $($this | Add-Member ScriptProperty 'p' `
        {
            # get
            "getter $($this._p)"
        }`
        {
            # set
            param ( $arg )
            $this._p = "setter $arg"
        }
    )
}

class d {
    [int]$a
    [int]$c
    hidden $_p = $($this | Add-Member ScriptProperty 'p' `
        {
            # get
            "getter $($this.a)"
        }`
        {
            # set
            param ( $arg )
            $this.a = "setter $arg"
            $this.c = $this.a # does not work
        }
    )
}
