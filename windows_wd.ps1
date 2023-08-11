Write-Output [System.Environemnt]::NewLine
Write-Output "WELCOME TO HYPERIONDEV'S WEB DEVELOPMENT BOOTCAMP DEVELOPMENT ENVIRONMENT SETUP SCRIPT"
Write-Output [System.Environemnt]::NewLine
Write-Output "Please ignore any errors concerning tools already installed"
Write-Output "Press Enter/Return and enter your Windows password whenever prompted to allow installation to proceed"

# Install Chocolatey
Invoke-Expression (Invoke-WebRequest -URI 'https://community.chocolatey.org/install.ps1' -UseBasicParsing).Content
Write-Output "Chocolatey has been installed"

# Install Git
choco install git
Write-Output "Git has been installed"

# Install Node.js
choco install nodejs.install
Write-Output "Node.js has been installed"

# Install Visual Studio Code
choco install vscode
Write-Output "Visual Studio has been installed"

Write-Output "You are now set up to get started with your bootcamp."
Write-Output "Submit a query via your HyperionDev dashboard if you run into any issues"
