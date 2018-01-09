PROMPT='%{$fg[white]%}♪ %{$reset_color%}'
RPROMPT='%{$bg_bold[magenta]%} %c %{$reset_color%} %{$BG[033]%}% $(git_prompt_info)%{$reset_color%} %{$bg_bold[blue]%} `date +"%T"` %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX=" "
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
PROMPT="✨  "

export CLICOLOR=1
export LSCOLORS="exfxcxdxbxbxbxbxbxbxbx"
export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=31;40:cd=31;40:su=31;40:sg=31;40:tw=31;40:ow=31;40:"

export LC_ALL=en_US.UTF-8
export TERM="xterm-256color"
