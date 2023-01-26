build:
	cd .src && \
	moonc -l . && \
	moonc -t .. .
