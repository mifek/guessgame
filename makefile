readme.md: 
	echo "guessinggame" > readme.md
	echo `date '+%Y-%m-%d %H:%M:%S'` >> readme.md
	grep ".*" -c guessinggame.sh >> readme.md
