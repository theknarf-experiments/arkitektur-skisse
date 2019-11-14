test.png: src/test.dot
	@dot -o test.png -Tpng src/test.dot

imgcat: test.png
	@~/.iterm2/imgcat test.png && echo "\n\n\n\n\n\n\n"

imgcat-watch: imgcat
	@fswatch src/ | xargs -n 1 -I {} bash -c "make imgcat"
