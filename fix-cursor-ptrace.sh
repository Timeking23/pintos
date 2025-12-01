#!/bin/bash
# Fix Cursor ptrace error on Ubuntu/WSL
# Run this script: bash fix-cursor-ptrace.sh

echo "Attempting to fix Cursor ptrace error..."

# Method 1: Try running with classic confinement (if available)
echo "Method 1: Trying classic confinement..."
sudo snap remove cursor
sudo snap install cursor --classic

echo ""
echo "If that doesn't work, try Method 2: Install via AppImage instead"
echo "Download from: https://cursor.com"
echo ""
echo "Or Method 3: Check WSL configuration"
echo "If you're on WSL, ptrace may be restricted. Try:"
echo "  echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope"

