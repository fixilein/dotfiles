function fish_greeting
	cat ~/.cache/wal/sequences &
	neofetch --disable theme icons --disable resolution --color_blocks off
#	neofetch --ascii_distro arch --ascii_bold on
#	fortune -s -o | sponge | cowsay | lolcat
	fish_vi_key_bindings
end

# add current directory . to PATH
set -gx PATH $PATH .
set -gx PATH $PATH ~/scripts

alias yeet "yaourt --noconfirm"
alias q "exit"
alias weather "curl wttr.in" 
alias please "sudo"
alias fucking "sudo"

function fish_user_key_bindings
    for mode in insert default visual
        bind -M $mode \cf forward-char
    end
end

thefuck --alias | source
