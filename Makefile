build: components index.js
	@component build --standalone radioactive-decay --out ./build --name build

components: component.json
	@component install --dev

clean:
	rm -fr build components template.js

test:
	@./node_modules/.bin/mocha \
		--reporter spec \
		--require should

release: clean build test

.PHONY: clean test