# PowerShell script to copy the mobile responsive HTML into the Android assets directory
$source = "D:\UNIGRAM\QUIZ BOT.html"
$dest = "D:\UNIGRAM\QuizBotApp\app\src\main\assets\index.html"

# Create destination folder if it doesn't exist
$destFolder = [System.IO.Path]::GetDirectoryName($dest)
if (!(Test-Path $destFolder)) {
    New-Item -ItemType Directory -Force -Path $destFolder
}

# Copy the file
Copy-Item -Path $source -Destination $dest -Force
Write-Host "Success: Copied Quiz Bot HTML into Android assets!"
pause
