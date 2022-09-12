
using System.Management.Automation;

public class foo : IValidateSetValuesGenerator 
{
    public string[] GetValidValues() 
    {
        string[] ValidFoo = new string[]
        {
            "foo",
            "bar",
            "baz"
        };
        
        return ValidFoo;
    }
}
