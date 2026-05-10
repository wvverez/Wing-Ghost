# Wing-Ghost

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/platform-Linux%20%7C%20macOS-blue)](https://www.linux.org/)
[![Bash](https://img.shields.io/badge/shell-Bash-4EAA25?logo=gnu-bash&logoColor=white)](https://www.gnu.org/software/bash/)
[![Security](https://img.shields.io/badge/security-forensic%20tool-red)](https://github.com/wvverez/Wing-Ghost)
[![Version](https://img.shields.io/badge/version-1.0-brightgreen)](https://github.com/wvverez/Wing-Ghost)
[![Code size](https://img.shields.io/github/languages/code-size/wvverez/Wing-Ghost)](https://github.com/wvverez/Wing-Ghost)

<div align="center">
  <h1>Wing Ghost</h1>
  <img width="736" height="736" alt="image" src="https://github.com/user-attachments/assets/f1c947e3-30c0-4f06-b022-654a287a6749" />
  <p><strong>Secure Log Deleter</strong></p>
  <img src="https://img.shields.io/badge/Status-Active-success?style=for-the-badge" alt="Active">
  <img src="https://img.shields.io/badge/Purpose-Privacy%20%7C%20Security-important?style=for-the-badge" alt="Purpose">
</div>

---

## Features

- Secure deletion with `shred` (3 passes + zero overwrite)
- Visual interface with custom ASCII art banners and animations
- Complete system log cleanup:
  - Login logs (wtmp, btmp, lastlog)
  - System logs (syslog, messages, secure, dmesg)
  - Application logs (*.log, *.log.*)
  - Command histories (Bash, Zsh)
- Cross-platform (Linux, macOS)
- Automatic root privilege detection
- Auto-installation of `shred` dependency
- One-liner execution with `curl`

---

## One-Liner Execution (Run Directly)

Execute Wing Ghost immediately without cloning the repository:

```bash
bash <(curl -s https://raw.githubusercontent.com/wvverez/Wing-Ghost/main/WingGhost.sh)
```
