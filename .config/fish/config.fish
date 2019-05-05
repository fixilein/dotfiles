function fish_greeting
	cat ~/.cache/wal/sequences &
	neofetch --disable theme icons --disable resolution --color_blocks off
#	fortune -s -o | sponge | cowsay | lolcat
	#fish_vi_key_bindings
end

# add current directory . to PATH
set -gx PATH $PATH .

alias yeet "yaourt --noconfirm"
alias q "exit"
alias v "vim"

function fish_user_key_bindings
    for mode in insert default visual
        bind -M $mode \cf forward-char
    end
end

thefuck --alias | source
