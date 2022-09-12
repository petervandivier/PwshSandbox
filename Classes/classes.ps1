
using namespace System.Management.Automation

class foo : IValidateSetValuesGenerator  {
    [string[]] GetValidValues() {
        $Values = @(
            'foo'
            'bar'
            'baz'
        )
        return $Values
    }
}

# class fooCollection {
#     [foo[]]$Collection
# }
