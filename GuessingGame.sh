function Guess {
local cnt=$(ls.|wc-w) 
local cond=1
local answ=0
while [[$cond -eq 1]]
do
	echo "how many files in this directory?"
	read answ
	if [[$answ -eq $cnt]]
		then condition=0
		echo "you was correct!"
	elif [[$answ -lt $cnt]]
		then
		echo "wrong! more than that"
	else
		echo "wrong! less than that"
	fi
done
}
Guess
