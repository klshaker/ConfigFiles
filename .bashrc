export CLICOLOR=1
export PS1="\[\033[1;31m\]\u\[\e[0m\] \[\e[34m\]\W\[\e[0m\]\$\[\e[0m\] "
export EDITOR="vim"

alias caen="ssh klshaker@login-course.engin.umich.edu"
alias bash_reset=". ~/.bash_profile"
alias vim="mvim -v"
caen_ssh(){
	ssh klshaker@caen-vnc$1.engin.umich.edu
}

scpdown(){
	
	CAEN_FOLDER=$1
	HOME_FOLDER=$2
	if [ $3 = "file" ]; then
		scp klshaker@login-course.engin.umich.edu:$CAEN_FOLDER $HOME_FOLDER
	else 
		scp -r klshaker@login-course.engin.umich.edu:$CAEN_FOLDER $HOME_FOLDER
	fi
} 

scpup(){



    HOME_ITEM=$1
    CAEN_FOLDER=$2 

  scp $HOME_ITEM klshaker@login-course.engin.umich.edu:$CAEN_FOLDER
  
}
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias c='clear'                             # c:            Clear terminal display
alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop
col(){ awk -v col=$1 '{print $col}'; }      # easy way to view table data only prints out the col stated in the argument
alias reset_profile='. ~/.bash_profile'   	# rerun bash profile to update the changes we just made very helpful when playing with the bash_profile
mkcd () { mkdir "$1"; cd "$1"; } 			# make a directory and change to it

bind -m emacs \C-h:backward-word
bind -m emacs \C-f:forward-word
