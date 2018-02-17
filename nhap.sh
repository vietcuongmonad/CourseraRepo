function range {
	if [[ $1 -gt 0 ]]
	then
		echo {0..$1}
	else 
		echo {$1..0}
	fi
}

function extremes {
	big=$1
	small=$1

	for i in $@ 
	do
		if [[ big -lt $i ]]
		then
			big=$i
		fi

		if [[ small -gt $i ]]
		then
			small=$i
		fi
	done

	echo $small $big
}
