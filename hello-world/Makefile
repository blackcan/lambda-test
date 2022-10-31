.PHONY: build clean

build:
	go get .
	GOOS=linux GOARCH=amd64 go build -o hello-world

clean:
	rm -f hello-world