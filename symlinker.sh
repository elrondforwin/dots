#!/usr/bin/env bash
set -euo pipefail

DOTS_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

# Add one symlink. Paths beginning with ~ are resolved from the user's home;
# other relative source paths are resolved from this script's directory.
add_link() {
    local destination="$1" source="$2"
    local target="${destination/#\~/$HOME}"
    [[ "$target" = /* ]] || target="$HOME/$target"
    [[ "$source" = /* ]] || source="$DOTS_DIR/$source"

    if [[ -L "$target" && "$(readlink -- "$target")" = "$source" ]]; then
        printf 'Already linked: %s\n' "$target"
        return
    fi

    if [[ -e "$target" || -L "$target" ]]; then
        printf 'Target already exists: %s\n' "$target"
        # The default is to skip, so pressing Enter never replaces existing data.
        read -r -p 'Back it up and create the symlink? [y/N] ' answer
        [[ "$answer" =~ ^[Yy]$ ]] || { printf 'Skipped: %s\n' "$target"; return; }
        local backup="${target}.bak.$(date +%Y%m%d-%H%M%S)"
        while [[ -e "$backup" || -L "$backup" ]]; do backup="${backup}.1"; done
        mv -- "$target" "$backup"
        printf 'Backup: %s\n' "$backup"
    fi

    mkdir -p -- "$(dirname -- "$target")"
    ln -s -- "$source" "$target"
    printf 'Linked: %s -> %s\n' "$target" "$source"
}

# Add new dotfile or directory mappings here using add_link DESTINATION SOURCE.
install_links() {
    add_link '~/.zshrc' '.zshrc'
    add_link '~/.p10k.zsh' '.p10k.zsh'
    add_link '~/.ideavimrc' '.ideavimrc'
    add_link '~/.config/hypr' '.config/hypr'
    add_link '~/.config/kitty/kitty.conf' '.config/kitty/kitty.conf'
    add_link '~/.config/herdr/config.toml' '.config/herdr/config.toml'
    add_link '~/.config/niri' '.config/niri'
}

install_links
