# https://pester.dev/docs/usage/data-driven-tests#execution-is-not-top-down

Write-Host "(1) We are starting with discovery." -ForegroundColor Yellow
Describe "d" {
    Write-Host "(2) We are finding tests in this describe." -ForegroundColor Yellow
    It "i" {
        Write-Host "(5) I am running!" -ForegroundColor Yellow
    }

    Write-Host "(3) We are leaving this describe." -ForegroundColor Yellow
}

Write-Host "(4 (& 6 if dot-sourced)) We are done with discovery!" -ForegroundColor Yellow