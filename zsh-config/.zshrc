# ==========================================================
# Konfigurasi Asas Zsh & Oh-My-Zsh
# ==========================================================

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

# Tema telah disahkan wujud: agnosterzak
ZSH_THEME="agnosterzak"

plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# ==========================================================
# Tetapan Sejarah & PATH
# ==========================================================

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Eksport PATH Tambahan
export PATH="/home/aiwasevil/Gemini-Cli/fastfetch-linux-amd64/usr/bin:$PATH"
export PATH="/home/aiwasevil/Gemini-Cli/fastfetch-config:$PATH"

# ==========================================================
# Custom Functions (Cheat Sheet)
# ==========================================================

# Fungsi untuk memaparkan nota bantuan secara automatik
show_cheatsheet() {
    echo ""
    echo "====================================="
    echo "       QUICK CHEAT SHEET (ARCH/ZSH)"
    echo "====================================="
    echo "A. PACMAN"
    echo "   update: sudo pacman -Syu"
    echo "   upg:    sudo pacman -Syu --noconfirm"
    echo "   orphan: Padam pakej yatim"
    echo "   paclean: Kosongkan cache"
    echo ""
    echo "B. SNAP"
    echo "   snapup: Kemas kini semua Snap"
    echo ""
    echo "C. NAVIGASI / UTILITY"
    echo "   lt: Papar struktur direktori"
    echo "   c: Clear terminal"
    echo "   path: Tunjukkan semua laluan PATH"
    echo "   CTRL+R: Cari sejarah arahan"
    echo "====================================="
    echo ""
}


# ==========================================================
# Konfigurasi Prompt & Fetch (fastfetch/starship)
# ==========================================================

# 1. Mulakan Starship dahulu (WAJIB DAHULU)
eval "$(starship init zsh)"
# 2. Jalankan skrip fetch selepas prompt dimuatkan
/home/aiwasevil/Gemini-Cli/fastfetch-config/random-fastfetch.sh
# 3. JALANKAN NOTA (CHEAT SHEET) SELEPAS FASTFETCH
show_cheatsheet


# ==========================================================
# Custom Aliases
# ==========================================================

# === General Utility & Navigation Aliases ===
alias c="clear"
alias h="history"
alias e="exit"
alias duf="du -sh *"
alias dfh="df -h"
alias htop="htop"
# Tunjukkan PATH dalam baris baru
alias path='echo $PATH | tr -s ":" "\n"'
# Navigasi Cepat
alias ..="cd .."
alias ...="cd ../.."

# === LSD Aliases (Set-up icons for files/directories) ===
alias ls='lsd'
alias l='ls -CF'
alias la='ls -A'
alias lla='ls -la'
alias lt='lsd --tree --classic'
alias lsd="lsd"

# === Arch Linux & System Management (Pacman) ===
# Kemas kini penuh
alias update="sudo pacman -Syu"
# Kemas kini sistem tanpa pengesahan (Alias Pendek)
alias upg='sudo pacman -Syu --noconfirm'
alias install="sudo pacman -S"
alias remove="sudo pacman -Rns"
alias search="pacman -Ss"
alias installed="pacman -Qs"
# Padam pakej orphan (yatim)
alias orphan='sudo pacman -Rns $(pacman -Qtdq)'
# Kosongkan cache pakej
alias paclean='sudo pacman -Scc'
# Semak log transaksi Pacman
alias paclog='sudo less /var/log/pacman.log'
# Paparkan maklumat terperinci pakej
alias pkinfo='pacman -Qi'

# === Snap Management ===
# Senaraikan pakej Snap
alias snaps='snap list'
# Cari pakej Snap
alias snapsearch='snap find'
# Kemas kini semua pakej Snap
alias snapup='sudo snap refresh'
# Padam pakej Snap
alias snapdel='sudo snap remove'

# === Git Workflow ===
# Tambah semua perubahan
alias ga='git add -A'
# Commit dengan mesej
alias gc='git commit -m'
# Tolak ke remote repository
alias gp='git push'
# Status kerja ringkas
alias gs='git status -sb'
# Paparkan sejarah commit (graph)
alias glog='git log --oneline --graph'

# ==========================================================
# Tetapan Terminal
# ==========================================================

# Enable colored output for ls
# eval "$(vivid generate zsh)"
export TERM="xterm-256color"

eval $(thefuck --alias)
export LS_COLORS="${LS_COLORS//;42/}"