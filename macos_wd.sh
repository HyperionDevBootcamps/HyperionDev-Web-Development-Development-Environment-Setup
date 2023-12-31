echo -e "\nWELCOME TO HYPERIONDEV'S WEB DEVELOPMENT BOOTCAMP DEVELOPMENT ENVIRONMENT SETUP SCRIPT\n"
echo "Please ignore any errors concerning tools already installed"
echo "Please note that characters won't be displayed in the terminal as you enter your password when prompted for security purposes"
echo "Press Enter/Return and enter your Mac password whenever prompted to allow installation to proceed"

# Only run if the tools are not installed yet
# To check that try to print the SDK path
xcode-select -p &> /dev/null
if [ $? -ne 0 ]; then
  echo "Command Line Tools for Xcode not found. Installing from softwareupdate…"
# This temporary file prompts the 'softwareupdate' utility to list the Command Line Tools
  touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress;
  PROD=$(softwareupdate -l | grep "\*.*Command Line" | tail -n 1 | sed 's/^[^C]* //')
  softwareupdate -i "$PROD" --quiet;
else
  echo "Command Line Tools for Xcode have been installed"
fi

# Install Homebrew
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "Homebrew has been installed"

# Install Git
brew install git
echo "Git has been installed"

# Install Node.js
brew install node
echo "Node.js has been installed"

# Install Visual Studio Code
brew install --cask visual-studio-code
echo "Visual Studio Code has been installed"

echo "You are now set up to get started with your bootcamp"
echo "Submit a query via your HyperionDev dashboard if you run into any issues"