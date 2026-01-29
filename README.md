# Psiphon-Automation

A simple Bash script for Linux systems that automatically connects Psiphon3 to the best available server.

---

## What does this script do?

This script automates the Psiphon connection process by forcing Psiphon to reconnect if it fails to establish a connection within 15 seconds.

It is especially useful on highly censored networks, where connecting to a working Psiphon server may take several minutes. Instead of manually disconnecting and reconnecting repeatedly, the script handles this process automatically.

⚠️ Side note: Reducing the delay values is not recommended. Doing so may be interpreted as spam or denial-of-service–like behavior, which could result in your device being temporarily or permanently blocked by Psiphon servers.

---

## Setup Instructions

### Step 1
Install Psiphon3 on your Linux device.
You can follow the instructions provided here:
https://github.com/SpherionOS/PsiphonLinux

### Step 2
Open a terminal and create a Bash script file like so:

nano PsiAuto.sh

### Step 3
Paste the automation Bash script into the file and save it.

### Step 4
Make the script executable and run it with elevated privileges:

chmod +x PsiAuto.sh
sudo ./PsiAuto.sh

---

## Expected Behavior

If everything is set up correctly, Psiphon will begin attempting to connect automatically.

You will see terminal logs indicating the connection status:

❌ Connection failed. Restarting Psiphon...

This means Psiphon Could not reach any servers and it's going for a Restart.

✅ Connection successful. Enjoy...

Self explanatory, it's connected, go enjoy browsing.