# inside ~/zsh/.config/aliases.zsh
#!/bin/sh
alias ls='ls -A --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias g-clear-local='git branch | grep -v -E "dev|main|master" | xargs git branch -D'

# switch every open iTerm session's profile (iterm-profile is in scripts.zsh)
alias /iterm-light='iterm-profile iterm-profile-light'
alias /iterm-dark='iterm-profile iterm-profile-base'


# Other OS specific aliases
case "$(uname -s)" in

Darwin)
	# echo 'Mac OS X'
	alias ls='ls -AG --color=auto'
	;;

Linux)
	alias ls='ls -A --color=auto'
	;;

CYGWIN* | MINGW32* | MSYS* | MINGW*)
	# echo 'MS Windows'
	;;
*)
	# echo 'Other OS'
	;;
esac

# local aliases
if [ -f ~/zsh/.config/aliases.local.zsh ]; then
	source ~/zsh/.config/aliases.local.zsh
fi