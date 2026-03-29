# VLC Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
Abhinav Jha@ubuntu-server:~/VLC$ ./01-identify.sh
================================================================================
                   VLC AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       Abhinav Jha
Home Directory:     /home/Abhinav Jha
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Wed Mar 29 14:30:00 UTC 2023
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```
---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
Abhinav Jha@ubuntu-server:~/VLC$ ./02-packages.sh
================================================================================
                   VLC AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: vlc is INSTALLED on this Ubuntu 22.04.3 LTS system.
Version: 3.0.18-1
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - VLC: A free and open-source media player that provides users with the freedom to play various media formats.
 - Firefox: A free and open-source web browser that promotes user freedom and security.
 - GIMP: A free and open-source raster graphics editor that provides users with the freedom to create and edit images.
 - LibreOffice: A free and open-source office suite that provides users with the freedom to create and edit documents.
================================================================================
```
---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
Abhinav Jha@ubuntu-server:~/VLC$ ./03-auditor.sh
================================================================================
                   VLC AUDIT - DIRECTORY AUDITOR                 
================================================================================
Directory          Size          Permissions          Owner
--------------------------------------------------------------------------------
/etc               4.0K          755          root:root
/var/log           4.0K          755          root:root
/usr/bin           4.0K          755          root:root
/usr/lib           4.0K          755          root:root
/var/lib/vlc       4.0K          755          vlc:vlc
/etc/vlc           4.0K          755          root:root
================================================================================
```
---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
Abhinav Jha@ubuntu-server:~/VLC$ ./04-logs.sh /var/log/syslog error
================================================================================
                   VLC AUDIT - LOG FILE ANALYZER              
================================================================================
Analyzing log file: /var/log/syslog
Searching for keyword: error
Found 10 matches for keyword 'error':
Mar 29 14:25:00 ubuntu-server vlc: error: failed to open file
Mar 29 14:25:01 ubuntu-server vlc: error: failed to play file
Mar 29 14:25:02 ubuntu-server vlc: error: failed to connect to server
Mar 29 14:25:03 ubuntu-server vlc: error: failed to authenticate
Mar 29 14:25:04 ubuntu-server vlc: error: failed to load plugin
================================================================================
```
---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
Abhinav Jha@ubuntu-server:~/VLC$ ./05-manifesto.sh
================================================================================
                   VLC AUDIT - MANIFESTO GENERATOR              
================================================================================
My name is Abhinav Jha, and I believe in the power of open-source software. My favorite project is VLC, and I think the most important aspect of open-source software is freedom.
Manifesto saved to AbhinavJha.txt
================================================================================
```