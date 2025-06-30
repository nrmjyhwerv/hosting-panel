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
