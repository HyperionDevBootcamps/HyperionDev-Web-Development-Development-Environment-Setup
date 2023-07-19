echo -e "\nWELCOME TO HYPERIONDEV'S WEB DEVELOPMENT BOOTCAMP DEVELOPMENT ENVIRONMENT SETUP SCRIPT\n"
echo "Please ignore any errors concerning tools already installed"
echo "Please note that characters won't be displayed in the terminal as you enter your password when prompted for security purposes"
echo "Press Enter/Return and enter your Linux password whenever prompted to allow installation to proceed"

# Install Node.js
sudo dnf install nodejs
echo "Node.js has been installed."

# Install Visual Studio Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
sudo dnf install code
echo "Visual Studio Code has been installed"

echo "You are now set up to get started with your bootcamp"
echo "Submit a query via your HyperionDev dashboard if you run into any issues"