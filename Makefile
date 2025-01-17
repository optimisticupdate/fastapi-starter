.PHONY: bash

help: ## Show this help.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

bash: ## Start the python development container with a shell
	docker-compose -f ./docker-compose.yml run --rm -i -p 8000:8000 api bash
