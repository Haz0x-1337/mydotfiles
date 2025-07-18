# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

#ZSH_THEME="agnosterzak"

plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
#pokemon-colorscripts --no-title -s -r #without fastfetch
#pokemon-colorscripts --no-title -s -r | fastfetch -c $HOME/.config/fastfetch/config-pokemon.jsonc --logo-type file-raw --logo-height 10 --logo-width 5 --logo -

# fastfetch. Will be disabled if above colorscript was chosen to install
fastfetch 
#WORDLISTS
rockyou="/usr/share/SecLists/Passwords/Leaked-Databases/rockyou.txt"

user1="/usr/share/SecLists/Usernames/top-usernames-shortlist.txt"
user2="/usr/share/SecLists/Usernames/xato-net-10-million-usernames.txt"

pass1="/usr/share/SecLists/Passwords/Common-Credentials/10k-most-common.txt"
pass2="/usr/share/SecLists/Passwords/Common-Credentials/500-worst-passwords.txt"

dir1="/usr/share/SecLists/Discovery/Web-Content/common.txt"
dir2="/usr/share/SecLists/Discovery/Web-Content/big.txt"

sub1="/usr/share/SecLists/Discovery/DNS/subdomains-top1million-5000.txt"
sub2="/usr/share/SecLists/Discovery/DNS/bitquark-subdomains-top100000.txt"

# Set-up icons for files/directories in terminal using lsd


alias thmvpn='sudo openvpn ~/Downloads/haz0x.ovpn'
alias thmkill='sudo pkill openvpn'
alias cupdate='/home/hazroot/Personal/Scripts/cupdate.sh'
alias macon='/home/hazroot/Personal/Scripts/macchange.sh'
alias macoff='/home/hazroot/Personal/Scripts/macreturn.sh'
alias ff='fastfetch'
alias venact='source /home/hazroot/venvs/thmpresence/bin/activate'
alias burpstart='firefox --no-remote -P Burp & disown'
# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

export PATH="$HOME/TOOLS/john-jumbo/run:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/Personal/Scripts:$PATH"
export PATH="$HOME/.local/share/gem/ruby/3.4.0/bin:$PATH"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

matrix() {
  clear
  echo -e "\033[1;32mInitializing Matrix Protocol...\033[33m"
  sleep 1
  cmatrix -B -C red
}
figlet HAZZLIGHTYEAR | lolcat | awk '{printf "%*s\n", (80 + length)/2, $0}'
# Starship + Oh My Zsh
eval "$(starship init zsh)"

