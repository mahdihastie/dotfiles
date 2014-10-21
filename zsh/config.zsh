if [[ -n $SSH_CONNECTION ]]; then
  export PS1='%m:%3~$(git_info_for_prompt)%# '
else
  export PS1='%3~$(git_info_for_prompt)%# '
fi

export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

# fpath=($ZSH/functions $fpath)

# autoload -U $ZSH/functions/*(:t)

setopt nobeep                  # i hate beeps
setopt autopushd               # automatically append dirs to the push/pop list
setopt cdablevars              # avoid the need for an explicit $
setopt correct_all             # correct all the words in the command line
setopt noflowcontrol           # if I could disable Ctrl-s completely I would!
setopt RM_STAR_WAIT            # confirmation after 'rm *' etc..

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps

setopt PROMPT_SUBST
setopt CORRECT
setopt IGNORE_EOF

zle -N newtab

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char


setopt autocd                   # change to dirs without cd
setopt pushd_to_home            # Push to home directory when no argument is given.
setopt auto_pushd               # Push the old directory onto the stack on cd.
setopt auto_name_dirs           # Auto add variable-stored paths to ~ list.
setopt pushd_ignore_dups        # Do not store duplicates in the stack.

# Report CPU usage for commands running longer than 10 seconds.
export TIMEFMT="%U user %S system %P cpu %*E total, running %J"
REPORTTIME=10
