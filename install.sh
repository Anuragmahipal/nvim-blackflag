#!/bin/bash
echo "[*] Installing ctfscan..."
chmod +x ctfscan
sudo cp ctfscan /usr/local/bin/ctfscan

if command -v ctfscan &> /dev/null; then
    echo "[✓] Installed! You can now use 'ctfscan' from anywhere."
else
    echo "[✗] Install failed. Try manually:"
    echo "sudo cp ctfscan /usr/local/bin/ctfscan"
fi
