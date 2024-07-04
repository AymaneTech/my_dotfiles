
function ranger {
	local IFS=$'\t\n'
	local tempfile="$(mktemp -t tmp.XXXXXX)"
	local ranger_cmd=(
		command
		ranger
		--cmd="map Q chain shell echo %d > "$tempfile"; quitall"
	)

	${ranger_cmd[@]} "$@"
	if [[ -f "$tempfile" ]] && [[ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]]; then
		cd -- "$(cat "$tempfile")" || return
	fi
	command rm -f -- "$tempfile" 2>/dev/null
}

# to open ranger 
alias rr='ranger'

# alias to open images using kitty tool kitten
alias icat="kitty +kitten icat"

# to open neovim
alias v="nvim"

# to refresh the terminal 
alias ff="exec $SHELL"

# ls shit
alias ll="exa -alh"
alias ls="eza --icons"
alias l="eza -l --icons --git -a"
alias lt="eza --tree --level=2 --long --icons --git"
alias tree="exa --tree"
alias cl="clear"

# to go to my coding workspace
alias codes="cd /mnt/eb2f1159-9c91-4b6c-be64-cf3b468945ff/codes"

# to download videos 
alias download="cd /mnt/eb2f1159-9c91-4b6c-be64-cf3b468945ff/DIFramework &&  yt-dlp"

# navigation
cx() { cd "$@" && ll; }
fcd() { cd "$(find . -type d -not -path '*/.*' | fzf)" && l; }
f() { echo "$(find . -type f -not -path '*/.*' | fzf)" | pbcopy }
fv() { nvim "$(find . -type f -not -path '*/.*' | fzf)" }
mkcd (){ mkdir -p "$@" && cd "$@"}

