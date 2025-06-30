# panel || install

# 🚀 Hosting Panel Setup Guide

This guide will help you install and run the Hosting Panel and Node service on your VPS.

---

## 📥 Installation

### 1. Install the Hosting Panel and Node Service

```bash
bash <(curl -s https://raw.githubusercontent.com/nrmjyhwerv/hosting-panel/refs/heads/main/vps)

bash <(curl -s https://raw.githubusercontent.com/nrmjyhwerv/hosting-panel/refs/heads/main/node)
```

---

### 2. Configure Node

```bash
npm run configure -- --panel http://localhost:3000 --key ae3305a4-57fe-470d-898b-ec094f9784c3
```

---

## 🔁 Auto-Restart Script

Create a file named `start.sh`:

```bash
#!/bin/bash
cd "$(dirname "$0")"   # Change directory to where the script is
while true; do
    echo "Starting node..."
    node index.js
    echo "Node crashed with exit code $? - restarting in 5 seconds..."
    sleep 5
done
```

Make it executable:

```bash
chmod +x start.sh
```

---

## 🖥️ Create Desktop Shortcut (Ubuntu GNOME)

Create a file named `start-node.desktop`:

```ini
[Desktop Entry]
Type=Application
Name=Start Node App
Exec=gnome-terminal -- bash -c "/full/path/to/start.sh; exec bash"
Terminal=false
```

> 🔁 Replace `/full/path/to/start.sh` with the actual path to your `start.sh` file.

Make it executable:

```bash
chmod +x start-node.desktop
```

---

## ✅ Launching the App

Double-click `start-node.desktop` to run the Node app in a terminal window with automatic crash recovery.

---
