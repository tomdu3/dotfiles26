# Kitty Terminal Configuration

My personal Kitty terminal configuration with Tokyo Night theme, Cascadia Code NF font, and optimized keybindings.

## 📋 Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Key Bindings](#key-bindings)
- [Configuration Details](#configuration-details)
- [Requirements](#requirements)
- [Customization](#customization)

## ✨ Features

- **Tokyo Night Theme** - Beautiful dark color scheme optimized for long coding sessions
- **Cascadia Code NF Font** - Includes programming ligatures for better code readability
- **Transparent Background** - 80% opacity with compositor support for a modern look
- **Fade Tab Bar** - Clean and stylish tab bar with fade effect
- **Vim-style Navigation** - Use `hjkl` for scrolling and resizing
- **Shell Integration** - Jump to previous prompts, browse command output, and more
- **Mouse Support** - Click URLs, select text, and resize windows
- **System Clipboard** - Seamless copy/paste integration
- **Performance Optimized** - Tuned for low latency and high responsiveness

## 📦 Installation

### 1. Install Kitty

- **Ubuntu/Debian:**

```bash
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
# Or via package manager (older version)
sudo apt install kitty
```

- **Fedora:**

```bash
sudo dnf install kitty
```

- **Arch Linux:**

```bash
sudo pacman -S kitty
```

- **macOS:**

```bash
brew install kitty
```

### 2. Install Font

The config uses **Cascadia Code NF**. Install it from:

- [Cascadia Code GitHub](https://github.com/microsoft/cascadia-code)
- Or via package manager:

  ```bash
  # Arch
  yay -S ttf-cascadia-code-nerd

  # macOS
  brew install --cask font-cascadia-code
  ```

### 3. Install Configuration

```bash
# Copy config to Kitty directory
cp ~/.config/nvim/kitty/kitty.conf ~/.config/kitty/kitty.conf
```

If the directory doesn't exist:

```bash
mkdir -p ~/.config/kitty
```

### 4. Start Kitty

```bash
kitty
```

## ⌨️ Key Bindings

### Core Shortcuts

| Key                     | Action            |
| ----------------------- | ----------------- |
| `Ctrl+Shift+Enter`      | New window        |
| `Ctrl+Shift+T`          | New tab           |
| `Ctrl+Shift+W`          | Close window      |
| `Ctrl+Shift+Q`          | Close tab         |
| `Ctrl+Shift+Right/Left` | Next/Previous tab |
| `Ctrl+Shift+L`          | Next layout       |

### Navigation & Scrolling

| Key                                | Action                     |
| ---------------------------------- | -------------------------- |
| `Ctrl+Shift+K` / `Ctrl+Shift+Up`   | Scroll line up             |
| `Ctrl+Shift+J` / `Ctrl+Shift+Down` | Scroll line down           |
| `Ctrl+Shift+PageUp/Down`           | Scroll page up/down        |
| `Ctrl+Shift+Home/End`              | Scroll to top/bottom       |
| `Ctrl+Shift+Z`                     | Scroll to previous prompt  |
| `Ctrl+Shift+X`                     | Scroll to next prompt      |
| `Ctrl+Shift+H`                     | Browse scrollback in pager |

### Window Management

| Key              | Action                                 |
| ---------------- | -------------------------------------- |
| `Ctrl+Shift+]`   | Next window                            |
| `Ctrl+Shift+[`   | Previous window                        |
| `Ctrl+Shift+1-9` | Go to window 1-9                       |
| `Ctrl+Shift+F`   | Move window forward                    |
| `Ctrl+Shift+B`   | Move window backward                   |
| `Ctrl+Shift+R`   | Start resizing window                  |
| `Ctrl+Shift+F7`  | Focus visible window (visual selector) |
| `Ctrl+Shift+F8`  | Swap with visible window               |

### Font & Display

| Key                             | Action             |
| ------------------------------- | ------------------ |
| `Ctrl+Shift+=` / `Ctrl+Shift-+` | Increase font size |
| `Ctrl+Shift--`                  | Decrease font size |
| `Ctrl+Shift+Backspace`          | Reset font size    |
| `Ctrl+Shift+F11`                | Toggle fullscreen  |
| `Ctrl+Shift+F10`                | Toggle maximized   |
| `Ctrl+Shift+F5`                 | Reload config      |

### Copy & Paste

| Key                      | Action                    |
| ------------------------ | ------------------------- |
| `Ctrl+Shift+C` / `Cmd+C` | Copy to clipboard         |
| `Ctrl+Shift+V` / `Cmd+V` | Paste from clipboard      |
| `Ctrl+Shift+S`           | Paste from selection      |
| `Ctrl+Shift+O`           | Pass selection to program |

### Tab Management

| Key                                | Action            |
| ---------------------------------- | ----------------- |
| `Ctrl+Shift+.`                     | Move tab forward  |
| `Ctrl+Shift+,`                     | Move tab backward |
| `Ctrl+Shift+Alt+T` / `Shift+Cmd+I` | Set tab title     |

### Text Selection (Hints)

| Key                        | Action                  |
| -------------------------- | ----------------------- |
| `Ctrl+Shift+E`             | Open URL with hints     |
| `Ctrl+Shift+P` > `F`       | Insert selected path    |
| `Ctrl+Shift+P` > `Shift+F` | Open selected path      |
| `Ctrl+Shift+P` > `L`       | Insert selected line    |
| `Ctrl+Shift+P` > `W`       | Insert selected word    |
| `Ctrl+Shift+P` > `H`       | Insert selected hash    |
| `Ctrl+Shift+P` > `N`       | Open filename:linenum   |
| `Ctrl+Shift+P` > `Y`       | Open selected hyperlink |

### Miscellaneous

| Key                               | Action                   |
| --------------------------------- | ------------------------ |
| `Ctrl+Shift+U`                    | Unicode input            |
| `Ctrl+Shift+F2` / `Cmd+,`         | Edit config file         |
| `Ctrl+Shift+F1`                   | Show Kitty documentation |
| `Ctrl+Shift+Delete` / `Opt+Cmd+R` | Reset terminal           |
| `Cmd+K`                           | Clear up to cursor line  |
| `Ctrl+Shift+F6` / `Opt+Cmd+,`     | Debug config             |

## 🎨 Configuration Details

### Font Settings

```conf
font_family      Cascadia Code NF
font_size        15.0
```

### Theme

Tokyo Night color scheme with 80% background opacity:

```conf
background_opacity 0.8
include current-theme.conf
```

### Tab Bar

- Style: Fade
- Position: Bottom
- Alignment: Left

### Performance

- `repaint_delay`: 10ms
- `input_delay`: 3ms
- `sync_to_monitor`: Enabled (prevents tearing)

### Shell Integration

Enabled features:

- Prompt navigation (`Ctrl+Shift+Z/X`)
- Command output browsing (`Ctrl+Shift+G`)
- Cursor shape changes at prompts
- Working directory tracking

## 🔧 Requirements

- **Kitty** (version 0.30.0 or higher recommended)
- **Cascadia Code NF** font (or any Nerd Font)
- **Compositor** (for transparency, e.g., picom on X11)
- **Wayland/X11** support (auto-detected)

## 🛠️ Customization

### Change Font

Edit the `font_family` line:

```conf
font_family      Your Preferred Font
font_size        16.0
```

### Adjust Opacity

```conf
background_opacity 0.9  # Less transparent
# or
background_opacity 0.6  # More transparent
```

### Change Theme

Replace the theme include:

```conf
# Remove or comment
# include current-theme.conf

# Add your own colors here, or use another theme
```

### Disable Ligatures

```conf
disable_ligatures always  # Never use ligatures
# or
disable_ligatures cursor  # Disable when cursor is over text
```

### Set Default Shell

```conf
shell /usr/bin/zsh
# or
shell /bin/bash
```

### Add Custom Keybindings

```conf
# Example: Open htop in new window
map ctrl+shift+h new_window htop

# Example: Open nvim in new tab
map ctrl+shift+n new_tab nvim ~/
```

## 🐛 Troubleshooting

### Font Not Rendering Correctly

1. Verify font is installed:

   ```bash
   kitty +list-fonts | grep "Cascadia"
   ```

2. Change font family to an installed font if needed

### Transparency Not Working

1. Ensure compositor is running:

   ```bash
   # For X11
   picom --experimental-backends &
   ```

2. Check if `background_opacity` is set correctly

### Shell Integration Not Working

1. Verify your shell is supported (bash, zsh, fish)
2. Ensure `shell_integration` is enabled:

   ```conf
   shell_integration enabled
   ```

### Keybindings Not Working

1. Check for conflicts with other shortcuts
2. Reload config: `Ctrl+Shift+F5` or `Ctrl+Cmd+,`
3. Debug with `kitty --debug-input`

### Lag or Performance Issues

1. Increase `repaint_delay` (e.g., 20ms)
2. Set `sync_to_monitor no`
3. Disable background opacity:

   ```conf
   background_opacity 1.0
   ```

## 📚 Resources

- [Official Kitty Documentation](https://sw.kovidgoyal.net/kitty/)
- [Kitty Config Reference](https://sw.kovidgoyal.net/kitty/conf/)
- [Kitty Keybinding Actions](https://sw.kovidgoyal.net/kitty/actions/)
- [Kitty Shell Integration](https://sw.kovidgoyal.net/kitty/shell-integration/)

---

**Prefix Key:** Most shortcuts use `Ctrl+Shift` (customizable via `kitty_mod`)
