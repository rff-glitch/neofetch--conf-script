#!/bin/bash

# Prompt user for ASCII art path
read -e -p "Enter full path to ASCII art file: " ascii_path
ascii_path="${ascii_path/#\~/$HOME}"  # Expand ~

# Check file exists
if [[ ! -f "$ascii_path" ]]; then
    echo "File not found: $ascii_path"
    exit 1
fi

# Function to generate config content
generate_config() {
cat << EOF
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
EOF
}

# Write user config
USER_DIR="$HOME/.config/neofetch"
mkdir -p "$USER_DIR"
generate_config > "$USER_DIR/config.conf" && echo "User config written to $USER_DIR/config.conf"

# Write root config using sudo
if [[ $EUID -ne 0 ]]; then
    echo "Trying to update root config with sudo..."
    sudo bash -c "mkdir -p /root/.config/neofetch && cat > /root/.config/neofetch/config.conf" <<< "$(generate_config)" && echo "Root config updated."
else
    mkdir -p /root/.config/neofetch
    generate_config > /root/.config/neofetch/config.conf && echo "Root config updated."
fi
#by raef
