.PHONY: build watch clean

build:
	cd .src && \
	moonc -l . && \
	moonc -t .. .
watch:
	.bin/filewatch.sh "make build" .src/**/*.moon
clean:
	rm $(shell find . -name "*.lua")
