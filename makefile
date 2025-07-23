
export PORT=80
export TAG=1.0.0-beta.13

dev: ## Запускает сервер разработки
	docker run \
		--rm \
		--name wiki-front \
		-p ${PORT}:80 \
		--env WIKI_PROVIDER=local \
		--env WIKI_PROVIDER_LOCAL_PATH=/opt/wiki \
		--env CACHE_TIME=1 \
		--env FORCE_CACHE_TIME=1 \
		-v "$(PWD)":/opt/wiki registry.gitlab.com/faithnode/lk/wiki-front:${TAG}
.PHONY: dev