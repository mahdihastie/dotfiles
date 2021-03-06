source ~/dotfiles/antigen/antigen.zsh
# Load the oh-my-zsh's library.
antigen use oh-my-zsh

local b="antigen-bundle"

# $b atom
$b brew
$b brew-cask
# Guess what to install when running an unknown command.
$b command-not-found
$b composer
$b docker
$b extract
# $b common-aliases
# $b git
# $b gitfast
# $b git-extras
$b heroku
$b httpie
$b last-working-dir
$b lol
$b vagrant
$b osx

$b sudo
$b symfony2
# $b web-search
$b arialdomartini/oh-my-git

# Tracks your most used directories, based on 'frecency'.
$b robbyrussell/oh-my-zsh plugins/z

# nicoulaj's moar completion files for zsh
$b zsh-users/zsh-completions src

# Syntax highlighting on the readline
$b zsh-users/zsh-syntax-highlighting

# colors for all files!
$b trapd00r/zsh-syntax-highlighting-filetypes

# history search
$b zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh

# dont set a theme, because pure does it all
# $b mafredri/zsh-async
# $b sindresorhus/pure

# suggestion as you type
$b zsh-users/zsh-autosuggestions

antigen theme arialdomartini/oh-my-git-themes arialdo-pathinline
# arialdo-granzestyle
# arialdo-pathinline
# oppa-lana-style

# antigen theme ~/src/dotfiles/zsh/ theme

# Tell antigen that you're done.
antigen apply

# Enable autosuggestions automatically
zle-line-init() {
    # zle autosuggest-start
}

zle -N zle-line-init

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

# Aliases and functions
ZSH_HIGHLIGHT_STYLES[alias]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=cyan,bold'

# Commands and builtins
ZSH_HIGHLIGHT_STYLES[command]="fg=green"
ZSH_HIGHLIGHT_STYLES[hashed-command]="fg=green,bold"
ZSH_HIGHLIGHT_STYLES[builtin]="fg=green,bold"
ZSH_HIGHLIGHT_STYLES[precommand]="fg=green,underline"
ZSH_HIGHLIGHT_STYLES[commandseparator]="none"

# Paths
ZSH_HIGHLIGHT_STYLES[path]='fg=white,underline'

# Globbing
ZSH_HIGHLIGHT_STYLES[globbing]='fg=yellow,bold'

# Options and arguments
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=red'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=red'

ZSH_HIGHLIGHT_STYLES[back-quoted-argument]="fg=green"
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]="fg=green"
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]="fg=green"
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]="fg=green"
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]="fg=green"

# Patterns
ZSH_HIGHLIGHT_PATTERNS+=('mv *' 'fg=white,bold,bg=red')
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')
ZSH_HIGHLIGHT_PATTERNS+=('sudo ' 'fg=white,bold,bg=red')
