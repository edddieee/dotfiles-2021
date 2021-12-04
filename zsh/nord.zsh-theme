PROMPT=$'%F{8}┌─╼[%F{4}%~%F{8}]╾─╼[$(git_prompt_info)]%f'
PROMPT+=$'%F{8}╾─╼[%F{4}%D{%H:%M:%S}%F{8}]
%F{8}└─╼%f '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%} %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"
