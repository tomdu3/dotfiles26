# Tmux Configuration

My personal tmux configuration with a modern setup, vim-like navigation, session persistence, and Tokyo Night theme.

## 📋 Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Key Bindings](#key-bindings)
- [Plugins](#plugins)
- [Requirements](#requirements)
- [Customization](#customization)
- [Troubleshooting](#troubleshooting)

## ✨ Features

- **Vim-style Navigation** - Use `hjkl` for pane resizing and intuitive copy mode
- **Session Persistence** - Automatic saving and restoration with tmux-resurrect and tmux-continuum
- **Tokyo Night Theme** - Beautiful color scheme from [tmux-tokyo-night](https://github.com/fabioluciano/tmux-tokyo-night)
- **Mouse Support** - Click to select windows, panes, and resize
- **System Clipboard Integration** - Copy/paste with xclip support
- **Vim-tmux Navigator** - Seamless navigation between tmux panes and vim splits

## 📦 Installation

### 1. Install tmux

- **Ubuntu/Debian:**

```sh
sudo apt install tmux
```

- **Fedora:**

```sh
sudo dnf install tmux
```

- **Arch Linux:**

```sh
sudo pacman -S tmux
```

### 2. Install TPM (Tmux Plugin Manager)

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### 3. Install the configuration

```sh
cp ~/.config/nvim/tmux/.tmux.conf ~/.tmux.conf
```

### 4. Install plugins

Start tmux and press `prefix + I` (capital `I`) to install the plugins.

```sh
tmux
# Then press: Ctrl-a + I
```

### 5. Start tmux

```sh
tmux
```

## ⌨️ Key Bindings

| Key                 | Action                               |
| ------------------- | ------------------------------------ |
| `Ctrl-a`            | Prefix (instead of default `Ctrl-b`) |
| `\|`                | Split window horizontally            |
| `-`                 | Split window vertically              |
| `hjkl`              | Resize panes (5 lines/columns)       |
| `m`                 | Toggle pane zoom                     |
| `r`                 | Reload tmux configuration            |
| `v` (copy mode)     | Start text selection                 |
| `y` (copy mode)     | Copy selected text                   |
| `Enter` (copy mode) | Copy and cancel, send to xclip       |

### Copy Mode (Vim-style)

- Enter copy mode: `prefix + [`
- Navigate with vim keys: `hjkl`
- Start selection: `v`
- Copy selection: `y`
- Copy to system clipboard automatically (via xclip)

## 🔌 Plugins

| Plugin                                                                  | Description                              |
| ----------------------------------------------------------------------- | ---------------------------------------- |
| [tpm](https://github.com/tmux-plugins/tpm)                              | Tmux Plugin Manager                      |
| [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) | Seamless navigation between vim and tmux |
| [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)        | Persist tmux sessions after restart      |
| [tmux-continuum](https://github.com/tmux-plugins/tmux-continuum)        | Auto-save sessions every 15 minutes      |
| [tmux-yank](https://github.com/tmux-plugins/tmux-yank)                  | Enhanced copy/paste to system clipboard  |
| [tmux-tokyo-night](https://github.com/fabioluciano/tmux-tokyo-night)    | Tokyo Night color theme                  |

### Plugin Settings

```tmux
set -g @resurrect-capture-pane-contents 'on'  # Save pane contents
set -g @continuum-restore 'on'                # Auto-restore sessions
```

## 🔧 Requirements

- **tmux** (version 2.6 or higher recommended)
- **xclip** (for clipboard integration):

  ```sh
  # Ubuntu/Debian
  sudo apt install xclip

  # Fedora
  sudo dnf install xclip

  # Arch
  sudo pacman -S xclip
  ```

- **zsh** (optional, set as default shell)

## 🛠️ Customization

### Change default shell

Edit the config line:

```tmux
set-option -g default-shell /usr/bin/zsh
```

### Disable mouse support

Comment out:

```tmux
# set -g mouse on
```

### Add more plugins

Add to the plugins section and reload:

```tmux
set -g @plugin 'your-plugin-name'
# Then press prefix + I to install
```

## 🐛 Troubleshooting

### Plugins not loading

1. Make sure TPM is installed:

   ```sh
   ls ~/.tmux/plugins/tpm
   ```

2. Press `prefix + I` to install plugins
3. Check that the run command is at the bottom of `.tmux.conf`

### Copy to clipboard not working

1. Verify xclip is installed:

   ```sh
   which xclip
   ```

2. Test xclip manually:

   ```sh
   echo "test" | xclip -se c -i
   xclip -se c -o
   ```

### Configuration not reloading

1. Check for syntax errors:

   ```sh
   tmux list-commands
   ```

2. Manually source the file:

   ```sh
   tmux source-file ~/.tmux.conf
   ```

### Escape delay in Neovim

The config sets `escape-time 10` to remove delay when exiting insert mode. If you experience issues, increase the value:

```tmux
set -sg escape-time 50
```

## 📄 License

Feel free to use and modify this configuration for your own needs.

---

**Prefix key:** `Ctrl-a` (press both keys simultaneously)

```

```
