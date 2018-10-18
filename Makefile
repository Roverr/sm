linux:
	GOOS=linux GOARCH=amd64 go build -o="bin/sm-linux"

osx:
	GOOS=darwin GOARCH=amd64 go build -o="bin/sm-osx"

windows:
	GOOS=windows GOARCH=amd64 go build -o="bin/sm.exe"

PHONY: all
all:
	$(MAKE) linux && $(MAKE) osx && $(MAKE) windows