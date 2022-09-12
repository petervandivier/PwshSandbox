
using namespace System.Management.Automation

class ab : IValidateSetValuesGenerator {
    [string[]] GetValidValues() {
        $Values = @('a','b')
        return $Values
    }
}

class cd : IValidateSetValuesGenerator {
    [string[]] GetValidValues() {
        $Values = @('c','d')
        return $Values
    }
}

function f {
    [CmdLetBinding(PositionalBinding=$false)]
    Param(
        [Parameter(Position=0,ParameterSetName = 'a')]
        [string]$a,

        [Parameter(Position=0,ParameterSetName = 'b')]
        [int]$b
    )
    $PSCmdlet.ParameterSetName
}

function g {
    [CmdLetBinding(PositionalBinding=$false)]
    Param(
        [Parameter(Position=0,ParameterSetName = 'c')]
        [ValidateSet('c','d')]
        [cd]$c,

        [Parameter(Position=0,ParameterSetName = 'a')]
        [ab]$a
    )
    $PSCmdlet.ParameterSetName
}