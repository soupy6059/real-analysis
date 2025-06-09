all:
	rm -rf gcm*
	~/.compile order.txt main	

run:
	./main

.PHONY: run
