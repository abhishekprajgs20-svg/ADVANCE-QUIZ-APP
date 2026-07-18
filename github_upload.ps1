# PowerShell script to automatically create a GitHub repository and upload the QuizBotApp code
$PAT = "YOUR_GITHUB_PERSONAL_ACCESS_TOKEN"
$Username = "abhishekprajgs20-svg"
$RepoName = "ADVANCE-QUIZ-APP"

# Step 1: Create the GitHub Repository via API
Write-Host "Creating GitHub Repository '$RepoName'..."
$headers = @{
    "Authorization" = "token $PAT"
    "Accept"        = "application/vnd.github.v3+json"
}
$body = @{
    "name"        = $RepoName
    "description" = "Android app WebView wrapper for Quiz Bot Simulator."
    "private"     = $false
} | ConvertTo-Json

try {
    $response = Invoke-RestMethod -Uri "https://api.github.com/user/repos" -Method Post -Headers $headers -Body $body -ContentType "application/json"
    Write-Host "Success: Repository created on GitHub!" -ForegroundColor Green
} catch {
    # Check if repo already exists
    if ($_.Exception.Message -like "*already exists*") {
        Write-Host "Notice: Repository already exists on GitHub. Continuing..." -ForegroundColor Yellow
    } else {
        Write-Host "Error creating repository: $_" -ForegroundColor Red
        Write-Host "Make sure your PAT token is valid and has 'repo' permissions."
        pause
        exit
    }
}

# Step 2: Initialize Git and Push
Write-Host "Checking if Git is installed..."
if (!(Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "Error: Git is not installed on your system! Please download and install Git from https://git-scm.com/ and rerun this script." -ForegroundColor Red
    pause
    exit
}

# Set Git identities locally for this repository
git init
git config user.name $Username
git config user.email "abhishekprajgs20@users.noreply.github.com"

# Add all files to staging
Write-Host "Staging files..."
git add .

# Commit files
Write-Host "Committing files..."
git commit -m "Initial commit of ADVANCE QUIZ APP project"

# Set main branch name
git branch -M main

# Set remote URL explicitly
$remoteUrl = "https://$Username`:$PAT@github.com/$Username/$RepoName.git"
git remote remove origin 2>$null
git remote add origin $remoteUrl

# Push to GitHub
Write-Host "Pushing code to GitHub..."
git push -u origin main -f

Write-Host "Success! Your project is now uploaded to: https://github.com/$Username/$RepoName" -ForegroundColor Green
pause
