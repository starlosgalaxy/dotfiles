itab() {
	local branch
	if [[ "$(git rev-parse --is-inside-work-tree 2>/dev/null)" != true ]]; then
		printf 'not in a git repo\n'
		return 1
	fi
	branch=$(git symbolic-ref --quiet --short HEAD 2>/dev/null) || branch=$(git rev-parse --short HEAD) || return
	printf '\033]1;%s\007' "$branch"
}

# switch every open iTerm session (all windows/tabs/panes) to the given profile
iterm-profile() {
	local profile=${1:?usage: iterm-profile <profile name>} tty
	for tty in ${(s:, :)"$(osascript -e 'tell application "iTerm2" to get tty of every session of every tab of every window')"}; do
		[[ -w $tty ]] && printf '\033]1337;SetProfile=%s\007' "$profile" > "$tty"
	done
}

# local scripts
if [ -f ~/zsh/.config/scripts.local.zsh ]; then
	source ~/zsh/.config/scripts.local.zsh
fi