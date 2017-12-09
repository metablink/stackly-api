run-local:
	go run main.go

run:
	nanobox run go run main.go

deploy:
	nanobox deploy

build-deps:
	godep save ./...

dns:
	nanobox dns add local local.stackly.mtbl.ink

test-local:
	ginkgo ./test/...

test:
	nanobox run go test ./test/...

.PHONY: run deploy build-deps dns-local test-local test