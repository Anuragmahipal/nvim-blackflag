


# 🛠️ `ctfscan` – Terminal Flag Sniper

> Instant flag finder & decoder for CTFs.  
> Built by [@Anuragmahipal](https://github.com/Anuragmahipal)  
> 🦾 No GUI. No bloat. Just raw shell power.

---

## ⚔️ What is `ctfscan`?

`ctfscan` is a **blazing-fast terminal utility** for CTF players, reverse engineers, and anyone trying to slice through encoded clues and flag-filled binaries.

📦 It fits in your terminal.  
⚡ Runs in a blink.  
🕵️‍♂️ Built for real-world use.

---

## 🔥 Features

| 🔧 Tool        | 📌 Purpose                                |
|---------------|--------------------------------------------|
| `-ff`         | Find `flag{}` / `FLAG{}` / `CTF{}` patterns |
| `-d64`        | Decode base64 data from file               |
| `-dhex`       | Decode hex strings (like shellcode)        |
| Default mode  | Auto-search for flag-like patterns         |

---

## 🚀 Quick Start

```bash
# 1. Clone it
git clone https://github.com/Anuragmahipal/ctfscan.git
cd ctfscan

# 2. Make it executable
chmod +x ctfscan

# 3. Move to system PATH
sudo cp ctfscan /usr/local/bin/

# 4. Use it from anywhere
ctfscan -ff secret.txt
```

---

## ⚡ Usage Cheatsheet

```bash
ctfscan -ff <file_or_directory>
# 🔎 Search for flags recursively

ctfscan -d64 <file>
# 📜 Decode base64 content

ctfscan -dhex <file>
# 🧬 Decode hex data (pipe-safe)

ctfscan <file>
# 🎯 Try to auto-grep for FLAG{}
```

---

## 💻 CTF Workflow Integration

Pair `ctfscan` with `nvim-blackflag` or other setups:

- Grep for flags while editing
- Decode strings on the fly
- Hex + base64 decoding directly from terminal
- Use in `fzf`, `telescope`, `toggleterm`, etc.

---

## 🧠 Sample Use Cases

```bash
# Find all flags in a directory:
ctfscan -ff ./capture/

# Decode a file that's base64 encoded:
ctfscan -d64 encoded.txt

# Pipe into another tool:
ctfscan -ff target.bin | tee flags.txt
```

---

## ⚙️ Requirements

- Any POSIX-compatible shell (bash preferred)
- `grep`, `base64`, `xxd` installed
- Works on Linux, macOS, WSL

---

## ☠️ Why Use This?

Because `grep` is noisy. `xxd` is clunky. And most tools aren't built for **CTF pace**.

`ctfscan` is laser-focused, scriptable, minimal, and shell-native.

> Find flags faster. Decode deeper. Hack cleaner. 🧨

---

## 📜 License

MIT — Fork it, enhance it, make it yours.

---

## 👾 Screenshot

```bash
$ ctfscan -ff memory_dump.bin
[+] Found: FLAG{real_binary_capture}
```
