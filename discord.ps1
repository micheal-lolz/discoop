# Define the URL for the Discord setup file
$discordUrl = "https://discord.com/api/download?platform=win"

# Define the path to download the installer
$installerPath = "$env:TEMP\DiscordSetup.exe"

# Download the Discord installer
Write-Host "Downloading Discord..."
Invoke-WebRequest -Uri $discordUrl -OutFile $installerPath

# Install Discord
Write-Host "Installing Discord..."
Start-Process -FilePath $installerPath -ArgumentList "/verysilent" -Wait

# Clean up
Write-Host "Cleaning up..."
Remove-Item -Path $installerPath

Write-Host "Discord has been installed successfully."

