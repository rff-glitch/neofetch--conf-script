

A Bash script to customize your **Neofetch** output with your own ASCII art!  
Perfect for those who want a personal touch to their terminal aesthetic. 🖥️✨

---

## 📜 What It Does

This script helps you:

- ✅ Prompt for your custom ASCII art file
- ✅ Automatically generate a `neofetch` configuration
- ✅ Set it up for both the **current user** and **root** (using `sudo`)
- ✅ Enhance your terminal with personalized system info + artwork

---

## 🧰 Requirements

- 🐧 Linux (or any Unix-like OS)
- 🔧 [Neofetch](https://github.com/dylanaraps/neofetch)
- 🖼️ Your own ASCII art file
- 🛠️ `bash` shell
- 🔐 `sudo` privileges (for root config)

---

## 🚀 Installation & Usage

1. **Download the Script**

   ```bash
   git clone https://github.com/rff-glitch/neofetch--conf-script.git
   cd neofetch--conf-script
   chmod +x setup-neofetch.sh
   ```

2. **Run the Script**

   ```bash
   ./setup-neofetch.sh
   ```

   You’ll be prompted to enter the full path to your custom ASCII art file. Example:

   ```
   Enter full path to ASCII art file: /home/user/art.txt
   ```

3. **Done!** 🎉  
   Your custom Neofetch config will be saved to:

   - `~/.config/neofetch/config.conf` (User)
   - `/root/.config/neofetch/config.conf` (Root)

---

## 🧪 Example Neofetch Output

```
      YOUR CUSTOM ASCII HERE
    ---------------------------
    OS: Arch Linux x86_64
    Kernel: 6.3.1
    Uptime: 5h 32m
    CPU: Intel i7-9750H
    GPU: NVIDIA GTX 1650
    Memory: 8GB / 16GB
    ...
```

---

## 🔍 Behind the Scenes

This script performs the following:

- Validates your ASCII file exists ✅
- Creates `.config/neofetch` directories for both user and root 🔐
- Writes a tailored `config.conf` with enhanced system info and your artwork ✍️

### Example Generated Config:
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
image_source="/path/to/your/ascii.txt"
```

---

## 📂 File Structure

```
setup-neofetch.sh
└── ~/.config/neofetch/config.conf
    └── (Your generated configuration)
```

---

## 🙋 FAQ

**Q: What if I mistype the path to the ASCII file?**  
A: The script will tell you if the file doesn't exist and exit safely. Just re-run it with the correct path.

**Q: Can I re-run this script to update the config later?**  
A: Absolutely! Feel free to re-run anytime to change your art.

---

## 👨‍💻 Author

Made with ❤️ by **Raef**

---

## 🪄 License

MIT License. Use freely, modify proudly! 🪐


