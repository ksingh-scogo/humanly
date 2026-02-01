#!/bin/bash

# humanly installer

set -e

echo "🦅 Installing humanly..."

# Check if OpenClaw is installed
if ! command -v openclaw &> /dev/null; then
    echo "❌ Error: OpenClaw is not installed"
    echo "Install OpenClaw first: npm install -g openclaw@latest"
    exit 1
fi

# Make executable
chmod +x humanly

# Create symlink in /usr/local/bin
if [ -w /usr/local/bin ]; then
    ln -sf "$(pwd)/humanly" /usr/local/bin/humanly
    echo "✅ Installed to /usr/local/bin/humanly"
else
    echo "⚠️  Cannot write to /usr/local/bin"
    echo "Run with sudo: sudo ./install.sh"
    echo "Or add to your PATH: export PATH=\"$(pwd):\$PATH\""
    exit 1
fi

# Create output directory
mkdir -p ./output

echo ""
echo "✨ Installation complete!"
echo ""
echo "Try it:"
echo "  humanly --help"
echo "  humanly \"https://example.com/article\" linkedin"
echo ""
