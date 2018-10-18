linux:
	GOOS=linux GOARCH=amd64 go build -o="bin/sm"

osx:
	GOOS=darwin GOARCH=amd64 go build -o="bin/sm"

windows:
	GOOS=windows GOARCH=amd64 go build -o="bin/sm.exe"
