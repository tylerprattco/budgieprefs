#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "${DSIPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx
fi
