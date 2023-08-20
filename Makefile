.PHONY: build watch clean user-install-moon

build:
	cd .src && \
	moonc -l . && \
	moonc -t .. .
watch:
	.bin/filewatch.sh "make build" .src/**/*.moon
clean:
	rm $(shell find . -name "*.lua")
user-install-moon:
	luarocks --local --dev install moonscript
