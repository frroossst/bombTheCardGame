.PHONY: help run client server all

all: client server ## build client and server

help: ## print this message
	@echo "Usage: make [target]"
	@echo ""
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[1;33m%-30s\033[0m %s\n", $$1, $$2}'

run: ## run client and server
	cd server && gleam run &
	cd client && gleam run

client: ## build client
	cd client && gleam build

server: ## build server
	cd server && gleam build

