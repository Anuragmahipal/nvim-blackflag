# 🏴‍☠️ nvim-blackflag

A custom Neovim config built for CTF warriors, reverse engineers, and cyberpunk developers who live in the terminal.

> Made by [@Anuragmahipal](https://github.com/Anuragmahipal) • Built for speed, stealth, and shell-hacking.

---

## ⚡ Features

- 🔍 Fast file navigation with `Telescope`
- 🧬 Hex editing mode for binary analysis
- 📜 Built-in terminal toggle for inline tools
- 🧠 Base64 / ROT13 / string decoding helpers
- 🎯 Grep for `flag{}` strings instantly
- 🎵 Ready for WAV/spectrogram forensics
- 💻 Minimal UI, terminal-native, CTF-ready

---

## 🚀 Usage

```bash
git clone https://github.com/Anuragmahipal/nvim-blackflag ~/.config/nvim
nvim
```

This will launch Neovim with the `blackflag` config enabled.

---

## 🛠 CTF Toolkit Inside

| Tool              | Use Case                                | Command / Shortcut              |
|------------------|-----------------------------------------|----------------------------------|
| 🧬 Hexmode        | Analyze binary files                    | `:%!xxd` to view, `:%!xxd -r` to revert |
| 🔎 Flag Finder    | Search flags in files                   | `:Rg flag{` or `<leader>fg`     |
| 🔓 Decode         | Decode strings                          | `:%!base64 -d`, `:%!rev`, etc.  |
| 🎛 Terminal       | Use CLI tools in split                  | `<leader>t` or `:ToggleTerm`    |
| 🎧 Audio Forensics| Load `.wav` files + sox/ffmpeg tools     | `nvim audio.wav`, analyze via terminal |

---

## 📂 Structure

```text
~/.config/nvim/
├── init.lua              # main config entry
├── lua/
│   ├── plugins.lua       # plugin list
│   ├── keymaps.lua       # shortcuts
│   └── settings.lua      # editor behavior
└── README.md             # you are here
```

---

## 💀 Why Blackflag?

Because CTFs aren’t about pretty colors — they’re about control, speed, and power. `nvim-blackflag` gives you a command-line edge in binary forensics, reverse engineering, and speed hacking.

> You're not here to write novels. You're here to break binaries. 🧨

---

## 🤘 Contribution

Feel free to fork, hack, and PR. If you build a new decoder or feature for CTF workflows, let's plug it in.

---

## 📸 Preview

![preview](preview.png)
