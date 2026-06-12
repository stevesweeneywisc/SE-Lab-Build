Param(
    [string]$arg_message
)
#Write-Host "Argument 1: " $arg_message


#$commit_message = "$(Get-Date) - $arg_message"
$commit_message = "$arg_message"
#Write-Host $commit_message
    
Write-Host "Staging all changes..." -ForegroundColor Green
git add .
    
Write-Host "Committing with message: '$commit_message'" -ForegroundColor Green
git commit -m "$commit_message"
    
Write-Host "Pushing changes to remote..." -ForegroundColor Green
git push -u origin main

