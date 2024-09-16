$discordUrl = "https://discord.com/api/download?platform=win"

$installerPath = "$env:TEMP\DiscordSetup.exe"

Write-Host "Downloading Discord..."
Invoke-WebRequest -Uri $discordUrl -OutFile $installerPath

Write-Host "Installing Discord..."
Start-Process -FilePath $installerPath -ArgumentList "/verysilent" -Wait

Write-Host "Cleaning up..."
Remove-Item -Path $installerPath

Write-Host "Discord has been installed successfully."

