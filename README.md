

![Neofetch Logo](https://raw.githubusercontent.com/dylanaraps/neofetch/master/img/logo.png)

## Table of Contents
- [Introduction](#introduction)
- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [Dependencies](#dependencies)
- [Configuration](#configuration)
- [Examples](#examples)
- [Troubleshooting](#troubleshooting)
- [Contributors](#contributors)
- [License](#license)

## Introduction

This script prompts you to enter the path of your desired ASCII art file, verifies its existence, and automatically generates the necessary configuration for Neofetch. It writes the configuration for both the current user and root if applicable.

## Installation

To use this script, follow these steps:

1. Download the script to your local machine.
2. Make the script executable:

   ```bash
   chmod +x ascii-configurator.sh
   ```

3. Run the script:

   ```bash
   ./ascii-configurator.sh
   ```

## Usage

1. **Prompt for ASCII Art Path**: When you run the script, it will ask you to provide the full path to an ASCII art file. Make sure the file exists and is accessible.
2. **Verify and Create Configurations**: The script checks if the file exists, and if it does, it generates the configuration file for Neofetch with the specified ASCII art for both the user and root directories.

   Example of what you will see during execution:
   ```bash
   Enter full path to ASCII art file: /home/user/pictures/ascii_art.txt
   User config written to /home/user/.config/neofetch/config.conf
   Trying to update root config with sudo...
   Root config updated.
   ```

## Features
- **Custom ASCII Art**: Use any ASCII art file you prefer to display with Neofetch.
- **User & Root Configuration**: Automatically updates both the user and root Neofetch configurations.
- **Simple and Easy**: Quick setup and use, perfect for customizing your system's information display.

## Dependencies

- **Neofetch**: Ensure you have Neofetch installed on your system to use this configuration.
  - You can install Neofetch with:

    ```bash
    sudo apt install neofetch  # Debian/Ubuntu
    sudo pacman -S neofetch    # Arch/Manjaro
    brew install neofetch      # macOS (Homebrew)
    ```

- **Bash**: The script is written in Bash, so ensure Bash is available on your system (most Linux distributions have it pre-installed).

## Configuration

The script generates a configuration file with the following structure:

```bash
print_info() {
    info title
    info underline
    info "OS" distro
    info "Kernel" kernel
    info "Host" model
    info "Uptime" uptime
    info "Packages" packages
    info "Shell" shell
    info "Resolution" resolution
    info "Refresh Rate" refresh_rate
    info "CPU" cpu
    info "GPU" gpu
    info "Memory" memory
    info "Disk Usage" disk
    info "Public IP" public_ip
    info cols
}

image_backend="ascii"
image_source="$ascii_path"
```

The `image_source` variable will point to the ASCII art file you specified.

## Examples

Here is an example of how the Neofetch output will look after running the script (depending on your system details and ASCII art):

```bash
${c1} _______________________


  ______                __ 
  | ___ \              / _|
  | |_/ /  __ _   ___ | |_ 
  |    /  / _` | / _ \|  _|
  | |\ \ | (_| ||  __/| |  
  \_| \_| \__,_| \___||_|  
                   xby raef
                         

```

## Troubleshooting

- **File Not Found**: If the script reports that the file doesn't exist, double-check the file path you entered.
- **Permission Issues**: If you're running the script as a non-root user and it cannot update the root configuration, ensure you have `sudo` privileges.
  
## Contributors

- **Raef**: Author and creator of the script.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

