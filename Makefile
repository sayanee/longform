.PHONY: help serve install draft update leftover

default: serve

help: ## Show help message
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m\033[0m\n"} /^[$$()% 0-9a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

serve: ## Start Jekyll server locally
	bundle exec jekyll serve

install: ## Install dependancies
	rm Gemfile.lock
	bundle install

draft: ## Start the Jekyll serve with draft posts
	bundle exec jekyll server --watch --drafts

update: ## Update ruby gems
	rm Gemfile.lock
	bundle update

leftover:
	@current_drafts=$$(ls -al _drafts | wc -l); \
	months_left=$$(echo "scale=2; ($$current_drafts / (3 * 4.33))" | bc); \
	echo "Current drafts: $$current_drafts"; \
	echo "Approximately $$months_left months left at 3 drafts per week."
