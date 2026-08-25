# My Dotfiles

A clean, modular, portable shell setup designed to work identically across
multiple Linux environments (Fedora WSL, Ubuntu on the Beelink, future machines,
cloud VMs, etc.). This repo contains my Zsh configuration, aliases, and other
shell customizations — all managed through symlinks so the system always reads
from the canonical version stored here.

---

## 📦 What’s Included

- **.zshrc** — main Zsh configuration (history, completion, plugins, Starship)
- **aliases.zsh** — all my shell + git aliases (muscle memory lives here)
- **Modular structure** under `config/zsh/`
- **Starship prompt** with Nerd Font support
- **Autosuggestions + syntax highlighting**
- **Colorized ls/grep**
- **Unified cockpit across machines**

---

## 🔗 How the Symlink Setup Works

Instead of editing `~/.zshrc` or `~/.config/zsh/aliases.zsh` directly, I symlink
them to the files inside this repo:

```bash
ln -s ~/dotfiles/.zshrc ~/.zshrc

ln -s ~/dotfiles/config/zsh/aliases.zsh ~/.config/zsh/aliases.zsh
```

This means:

- The shell always reads the version stored in `~/dotfiles`
- Any edits I make here instantly apply to my system
- I can commit + push changes to GitHub
- Other machines can pull those changes and stay in sync

---

## 🚀 Installing These Dotfiles on a New Machine

Clone the repo:
```bash
git clone git@github.com:breenkevp/dotfiles.git ~/dotfiles
```
Create the Zsh config directory:
```bash
mkdir -p ~/.config/zsh
```

Symlink the configs:
```bash
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/config/zsh/aliases.zsh ~/.config/zsh/aliases.zsh
```
Reload Zsh:
```bash
exec zsh
```

Done — the machine now uses my full shell setup.

---

## 🔄 Updating Dotfiles Across Machines

When I make changes on one machine:


Everything stays perfectly in sync.

---


---

## 🧠 Philosophy

- Keep `.zshrc` clean  
- Keep aliases modular  
- Keep everything version-controlled  
- Keep the cockpit identical across machines  
- Keep future-me happy  

---

## 🛠 Future Additions

- `functions.zsh` (mkcd, gitroot, cdf, etc.)
- `plugins.zsh`
- `env.zsh`
- `path.zsh`
- Host-specific configs (Beelink vs WSL)
- Bootstrap script for new machines

---

## ❤️ Credits

Built by me for me — because future-me deserves a good shell.
