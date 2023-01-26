build:
	cd .src && \
	moonc -l . && \
	moonc -t .. .
watch:
	.bin/filewatch.sh "make build" .src/**/*.moon
