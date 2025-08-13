#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -ltr'
alias la='la -a'
alias pgstart='sudo mkdir -p /run/postgresql && sudo chown $(whoami) /run/postgresql && pg_ctl -D ~/.postgres_data -l ~/.postgres_data/log/logfile start'
alias pgstop='pg_ctl -D ~/.postgres_data stop'

# PS1='[\u@\h \W]\$ '
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

prompt_git_status() {
	local s='';

	# Check if the current directory is in a Git repository.
	if [ $(git rev-parse --is-inside-work-tree &>/dev/null; echo "${?}") == '0' ]; then

		# check if the current directory is in .git before running git checks
		if [ "$(git rev-parse --is-inside-git-dir 2> /dev/null)" == 'false' ]; then

			# Ensure the index is up to date.
			git update-index --really-refresh -q &>/dev/null;

			# Check for uncommitted changes in the index.
			if ! $(git diff --quiet --ignore-submodules --cached); then
				s+='+';
			fi;

			# Check for unstaged changes.
			if ! $(git diff-files --quiet --ignore-submodules --); then
				s+='!';
			fi;

			# Check for untracked files.
			if [ -n "$(git ls-files --others --exclude-standard)" ]; then
				s+='?';
			fi;

			# Check for stashed files.
			if $(git rev-parse --verify refs/stash &>/dev/null); then
				s+='$';
			fi;

		fi;

		# Get the short symbolic ref.
		# If HEAD isn’t a symbolic ref, get the short SHA for the latest commit
		# Otherwise, just give up.
		[ -n "${s}" ] && s=" [${s}]";

        echo -e "${s} ";
	else
		return;
	fi;
}

prompt_git_branch() {
	local branchName='';

	if [ $(git rev-parse --is-inside-work-tree &>/dev/null; echo "${?}") == '0' ]; then
	    branchName="$(git symbolic-ref --quiet --short HEAD 2> /dev/null || \
		    git rev-parse --short HEAD 2> /dev/null || \
		    echo '(unknown)')";

        echo -e "${branchName}";
    fi;
}

# Bash prompt
PS1='[\[\e[38;5;68m\]\u\';
PS1+='[\e[0m\]@';
PS1+='\[\e[0;33m\]\W\[\e[0m\]\] '
PS1+="\[\e[38;5;131m\]\$(prompt_git_branch)\[\e[0m\]\]]\\$ ";

# Folder color
LS_COLORS=$LS_COLORS:'di=0;33:';
export LS_COLORS

. "$HOME/.cargo/env"
