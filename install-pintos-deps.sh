#!/bin/bash
# Pintos Dependencies Installation Script for Ubuntu/WSL
# Run this script in Ubuntu/WSL: bash install-pintos-deps.sh

echo "Installing Pintos dependencies..."

# Update package list
sudo apt-get update

# Install essential build tools
sudo apt-get install -y build-essential

# Install QEMU (simulator)
sudo apt-get install -y qemu-system-x86

# Install Perl (required for Pintos scripts)
sudo apt-get install -y perl

# Install additional useful tools
sudo apt-get install -y gdb
sudo apt-get install -y git

# Optional: Install Bochs as alternative simulator
# sudo apt-get install -y bochs bochs-x

echo ""
echo "Installation complete!"
echo ""
echo "To verify installation, run:"
echo "  make --version"
echo "  perl --version"
echo "  qemu-system-x86_64 --version"
echo ""
echo "Next steps:"
echo "1. Navigate to pintos directory"
echo "2. Build Pintos: cd src/threads && make"
echo "3. Run Pintos: cd build && pintos --qemu -- run alarm-single"


