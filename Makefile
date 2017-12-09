run-local:
	go run main.go

run:
	nanobox run go run main.go

link:
	nanobox remote add stackly

deploy:
	nanobox deploy

build-deps:
	godep save ./...

dns:
	nanobox dns add local stackly.dev

test-local:
	ginkgo ./test/...

test:
	nanobox run go test ./test/...

.PHONY: run deploy build-deps dns-local test-local test