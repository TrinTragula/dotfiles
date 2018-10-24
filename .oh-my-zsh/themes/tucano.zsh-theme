local ret_status="%(?:%{$fg_bold[green]%}═⮞:%{$fg_bold[red]%}═⮞)"
local time="%(?:%{$fg_bold[green]%}%D{%L:%M:%S}:%{$fg_bold[red]%}%D{%L:%M:%S})"
local username="(%{$fg_bold[yellow]%}%n%{$reset_color%})"
local directory="[%{$fg[cyan]%}%c%{$reset_color%}]"
PROMPT='${time} %{$reset_color%}${directory} $(git_prompt_info)'$'\n''${username} ${ret_status} %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
