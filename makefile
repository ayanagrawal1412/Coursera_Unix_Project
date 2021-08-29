README.md: guessinggame.sh
	echo "# Coursera Project for Course Unix Workbench">README.md
	echo "## Guessing Game">>README.md
	date>>README.md
	echo "">>README.md
	echo "The Script guessinggame has following lines of code: ">>README.md
	wc -l guessinggame.sh|egrep -o "[0-9]+" >>README.md
