all: lint dist

deps:
	npm install -g jshint
    
lint:
	jshint *.js
    
dist: README.md\
	LICENSE\
	extension.js\
	metadata.json
	sed -i 's/-dev//' metadata.json
	zip -j remove-dropdown-arrows.zip $?

clean:
	rm -f *.zip
