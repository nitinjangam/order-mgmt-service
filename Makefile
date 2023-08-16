# Makefile for Order Management Service

# Variables
GO := go
GOFMT := gofmt
APP_NAME := order-mgmt-service
ENV_FILE := .env
TEST_COVERAGE := coverage.out

.PHONY: all
all: help

.PHONY: deps
deps: ## Install project dependencies
	@$(GO) mod download

.PHONY: format
format: ## Format the code using gofmt
	@$(GOFMT) -w .

.PHONY: test
test: ## Run tests and generate coverage report
	@$(GO) test -coverprofile=$(TEST_COVERAGE) ./...

.PHONY: run
run: ## Run the service
	@$(GO) run main.go

.PHONY: clean
clean: ## Clean temporary files
	@rm -f $(TEST_COVERAGE)

.PHONY: help
help: ## Show this help message
	@echo "Usage: make [target]"
	@echo "Targets:"
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\([^:]*\):[^#]*##\(.*\)/  \1 - \2/'
