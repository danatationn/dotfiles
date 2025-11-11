if status is-interactive

# aliases
alias mv 'mv -i'
alias cp 'cp -i'
alias ln 'ln -i'
alias rm 'rm -I'
alias killjobs 'disown (jobs -p)'

# misc
set -gx GEODE_SDK $HOME/.local/share/Geode/sdk
set -gx CPM_SOURCE_CACHE $HOME/.cache/CPM/
fish_add_path $HOME/.millennium/ext/bin/
fish_add_path $HOME/.local/bin  # why isn't this default 
export SUDO_PROMPT="$(tput setaf 3) ? $(tput sgr0)"
zoxide init fish --cmd cd | source

# theme things
set fish_greeting

## kawasaki
set -g theme_display_time yes
set -g theme_display_group no
set -g theme_display_hostname no
set -g theme_display_virtualenv no
set -g theme_color_superuser red
set -g theme_color_user purple
set -g theme_prompt_char_normal ' >'
set -g theme_prompt_char_superuser '>>'
set -g theme_prompt_superuser_glyph ''
set -g theme_display_time_format '+%I:%M:%S'

end

