#!/bin/bash

foregrounds=()
backgrounds=()

for i in {0..7} ; do
    foregrounds+=(3$i)
    foregrounds+=(9$i)

    backgrounds+=(4$i)
    backgrounds+=(10$i)
done

foregrounds+=(39)
backgrounds+=(49)


for bg in ${backgrounds[@]} ; do
    if [[ "$bg" == "10"* ]]; then s=""; else s=" ";fi
    echo "|    --    |    --    |    --    |    --    |    --    |"
    echo "|  normal  |   bold   |  italic  |underline | inverted |"
	for fg in ${foregrounds[@]} ; do
		# Formatting
        echo -n "| "
		for attr in 0 1 3 4 7 ; do
			echo -en "\e[${attr};${bg};${fg}m${attr} ${bg} ${fg}\e[0m $s| "
		done
		echo # Newline
	done
done
