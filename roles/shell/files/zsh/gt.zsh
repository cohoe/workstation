#!/usr/bin/env zsh

# Thanks @dtyler!

gt () {
	if [[ $# = 1 ]]
	then
		find ~/Projects/ -maxdepth 3 -type d -iname "$(echo $@ | tr -s ' ' '*')*" | while read line
		do
			if [[ $(basename $line) = $1 ]]
			then
				_gt_goto_project $line
				return 0
			fi
		done
	fi
	TARGET=`find ~/Projects/ -maxdepth 3 -type d -iwholename "*$(echo $@ | tr -s ' ' '/')*" | head -n 1`
    echo $@
	if [[ -n $TARGET ]]
	then
		_gt_goto_project $TARGET
	fi
}

_gt_goto_project() {
  cd $1
  if [[ -f env.sh ]]; then
    source env.sh
  fi
}
