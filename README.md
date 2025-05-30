Here's a README for the script you provided. It includes sections on what the script does, how to use it, and any relevant configurations or requirements:

```markdown
# ASCII Art Config Generator for Neofetch

## Introduction

This script is designed to automatically set up the configuration for Neofetch, a system information tool that displays detailed system information in a terminal, enhanced with ASCII art. The script prompts the user to specify the path to an ASCII art file, then generates custom configuration files for both the user and the root user. This allows you to display your chosen ASCII art along with system details when running Neofetch.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [Configuration](#configuration)
- [Examples](#examples)
- [Troubleshooting](#troubleshooting)
- [Contributors](#contributors)
- [License](#license)

## Installation

This script is a bash script and requires a Linux-based environment to execute. Ensure that you have Neofetch installed on your system to make use of this script.

### Prerequisites

- Bash shell (should work on most Linux distributions)
- Neofetch installed on your system

### Steps

1. **Download the script:**
   You can either copy the script into a file or download it directly from a repository if available.
   
2. **Make the script executable:**
   ```bash
   chmod +x ascii_art_config.sh
   ```

3. **Run the script:**
   ```bash
   ./ascii_art_config.sh
   ```

## Usage

1. **Running the script** will prompt you to enter the full path to an ASCII art file. The path can be an absolute path or relative to your home directory (which will be automatically expanded).
   
2. **The script will verify if the file exists** at the given path. If it doesn't exist, it will terminate and display an error message.

3. **Configuration files** will be generated for both the user (`~/.config/neofetch/config.conf`) and root (`/root/.config/neofetch/config.conf`). The script will either write the configuration files as the user or attempt to update the root config using `sudo`.

## Features

- **Customizable ASCII Art**: Set a custom ASCII art to be displayed by Neofetch.
- **User and Root Configuration**: Generates configuration files for both user and root accounts.
- **Automated Setup**: Automatically creates necessary directories and configuration files for Neofetch.

## Configuration

The script generates a `config.conf` file with the following basic structure:

```bash
image_backend="ascii"
image_source="$ascii_path"
```

Where `$ascii_path` is the path to the ASCII art file provided by the user.

Additionally, the script includes a `print_info()` function that outlines which system information to display when running Neofetch. This includes:

- OS
- Kernel
- Host
- Uptime
- Packages
- Shell
- Resolution
- Refresh Rate
- CPU
- GPU
- Memory
- Disk Usage
- Public IP

## Examples

### Example 1: Running the script with valid ASCII art file

```bash
Enter full path to ASCII art file: /home/user/pictures/my_ascii_art.txt
User config written to /home/user/.config/neofetch/config.conf
Trying to update root config with sudo...
Root config updated.
```

### Example 2: Running the script with an invalid file path

```bash
Enter full path to ASCII art file: /home/user/invalid_ascii_art.txt
File not found: /home/user/invalid_ascii_art.txt
```

## Troubleshooting

1. **Error: "File not found"**
   - Ensure the ASCII art file exists at the path you provided. If using `~`, make sure it's expanded correctly.

2. **Permission Denied**
   - When updating the root config, the script will attempt to use `sudo`. If you encounter issues, ensure you have sudo privileges.

3. **Neofetch Not Installed**
   - Ensure Neofetch is installed on your system by running:
     ```bash
     sudo apt install neofetch  # For Debian-based systems
     ```

## Contributors

- **Raef**: Original script author

## License

This script is open-source. Feel free to use, modify, and share as per your needs. There is no specific license mentioned, so it's safe to assume it is under the default "MIT" style unless otherwise noted.
```

This README explains the purpose of the script, installation instructions, usage examples, and troubleshooting tips. Let me know if you'd like any additional sections or modifications!
