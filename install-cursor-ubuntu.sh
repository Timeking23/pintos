#!/bin/bash
# Install Cursor AI Editor on Ubuntu via Snap
# Run this script: bash install-cursor-ubuntu.sh

echo "Installing Cursor AI Editor..."

# Ensure snapd is installed (usually pre-installed on Ubuntu 16.04+)
if ! command -v snap &> /dev/null; then
    echo "Installing snapd..."
    sudo apt update
    sudo apt install -y snapd
fi

# Install Cursor via snap
echo "Installing Cursor from Snap Store..."
sudo snap install cursor

echo ""
echo "Installation complete!"
echo ""
echo "To launch Cursor, run:"
echo "  cursor"
echo ""
echo "Or search for 'Cursor' in your application menu."


