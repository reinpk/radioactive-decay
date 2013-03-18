build: components index.js
	@component build --dev

components: component.json
	@component install --dev

clean:
	rm -fr build components

test:
	open test/index.html

release: clean build test

.PHONY: clean test