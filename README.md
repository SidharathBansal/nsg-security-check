# Azure NSG Audit & Cleanup 🚀

## Overview
This repository contains scripts to **audit and clean up Azure Network Security Groups (NSGs)** by:
- Finding **open ports (22, 3389, 27017, etc.)**
- Identifying **rules allowing traffic from 0.0.0.0/0 (anywhere)**
- Detecting **unassigned NSGs**
- Automating **NSG cleanup** to improve security

## Features
✅ Scan NSGs for open ports and unrestricted inbound rules  
✅ Identify unassigned NSGs  
✅ Delete unused NSGs automatically  
✅ Simple Bash & Azure CLI scripts  

## Usage

### 1️⃣ **Scan for security risks**
Run the following script to list NSGs with open ports and risky rules:
```sh
bash nsg_audit.sh
```

### 2️⃣ **Delete unassigned NSGs**
To remove NSGs that are no longer assigned to a resource:
```sh
bash nsg_cleanup.sh
```

## Prerequisites
- **Azure CLI** installed and logged in
- Permissions to list and delete NSGs

## Why This Matters
🔹 **Strengthen security** by removing unwanted open ports  
🔹 **Reduce cloud clutter** by deleting unassigned NSGs  
🔹 **Stay compliant** with security best practices  

📌 **Security isn’t set-and-forget!** Automate your NSG reviews today. 🚀
