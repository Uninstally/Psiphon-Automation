# Psiphon-Automation

A simple Bash script for Linux systems that automatically connects Psiphon3 to the best available server.

---

## What does this script do?

This script automates the Psiphon3 connection process by forcing Psiphon to reconnect if it fails to establish a connection within **15 seconds**.

It is especially useful on highly censored or restricted networks, where connecting to a working Psiphon server may take several minutes. Instead of manually disconnecting and reconnecting repeatedly, the script handles this process automatically.

⚠️ Side note:  
Reducing the delay values is not recommended. Doing so may be interpreted as spam or denial-of-service–like behavior, which could result in your device being temporarily or permanently blocked by Psiphon3 servers.

---

## Setup Instructions

### Step 1 — Install Psiphon

Install Psiphon3 on your Linux device by running the following commands in the terminal in order:

`wget https://raw.githubusercontent.com/SpherionOS/PsiphonLinux/main/plinstaller2`  
`sudo sh plinstaller2`  
`sudo rm -rf plinstaller2`

Alternatively, you can follow the manual installation instructions provided here:  
https://github.com/SpherionOS/PsiphonLinux

---

### Step 2 — Create the automation script

Open a terminal and create a new Bash script file:

`nano PsiAuto.sh`

---

### Step 3 — Add the script

Paste the Psiphon automation Bash script into the file, then save and exit.

---

### Step 4 — Run the script

Make the script executable and run it with elevated privileges:

`chmod +x PsiAuto.sh`  
`sudo ./PsiAuto.sh`

---

## Setting up a system proxy

Once you see the message **✅ Connection successful** in your terminal, Psiphon3 is ready to use with the following **default proxy settings**:

HTTP: 127.0.0.1:8081  
HTTPS: 127.0.0.1:8081  
SOCKS4/5: 127.0.0.1:1081  

You can route traffic through Psiphon by configuring:
- Browser proxy settings
- CLI tools (using `export` / `unset` commands)
- System-wide proxy settings

---

## Expected Behavior

If everything is set up correctly, Psiphon will begin attempting to connect automatically.

You will see terminal logs indicating the connection status:

❌ Connection failed. Restarting Psiphon...  
This indicates Psiphon was unable to reach any servers and is attempting to restart.

✅ Connection successful. Enjoy.  
Psiphon is connected and ready for use.

---
