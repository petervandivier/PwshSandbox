
# https://adamtheautomator.com/powershell-classes/

class student {
    [string]$FirstName
    [string]$LastName

    student([string]$Name) {
        $this.SetName($Name)
    }

    student() {}

    [void]SetName([string]$Name) {
        $this.FirstName = ($Name -split ' ')[0]
        $this.LastName = ($Name -split ' ')[1]
    }
}

class foodent {
    [string]$FirstName
    [string]$LastName
    [int]$Age = 13

    foodent([string]$Name) {
        $this.SetName($Name)
    }

    foodent() {}

    [void]SetName([string]$Name) {
        $this.FirstName = ($Name -split ' ')[0]
        $this.LastName = ($Name -split ' ')[1]
    }
}


class bardent {
    [string]$FirstName
    [string]$LastName
    [int]$Age = 13

    bardent([string]$Name) {
        $this.SetName($Name)
    }

    bardent() {}

    [void]SetName([string]$Name) {
        $this.FirstName = ($Name | ConvertFrom-Json )[0]
        $this.LastName = ($Name | ConvertFrom-Json)[1]
    }
}