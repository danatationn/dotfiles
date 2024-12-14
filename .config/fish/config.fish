if status is-interactive

# aliases
alias v 'nvim'
alias r 'ranger'
alias p 'paru'
alias pi 'paru -Syu'
alias pr 'paru -Rcns'	
alias ff 'fastfetch'
alias mv 'mv -i'
alias cp 'cp -i'
alias ln 'ln -i'
alias rm 'rm -I'
alias c clear

# misc
set -gx CPM_SOURCE_CACHE "$HOME/.cache/CPM/"
fish_add_path $HOME/.millennium/ext/bin/
fish_add_path $HOME/.local/share/coursier/bin/
export SUDO_PROMPT="$(tput setaf 11) ? $(tput sgr0)"
zoxide init fish --cmd cd | source

# theme things
set -g theme_display_time yes
set -g theme_display_group no
set -g theme_display_hostname no
set -g theme_display_virtualenv no
set -g theme_color_superuser purple
set -g theme_color_user purple
set -g theme_prompt_char_normal ' >'
set -g theme_prompt_char_superuser '>>'
set -g theme_prompt_superuser_glyph ''
set -g theme_display_time_format '+%I:%M:%S'

end

