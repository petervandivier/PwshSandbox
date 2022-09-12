try {1/0} catch {
    Write-Error "Error Message: $_.Exception.Message"
}

try {1/0} catch {
    Write-Error "Error Message: $($_.Exception.Message)"
}

try {1/0} catch {
    Write-Error "Error Message: $_"
}