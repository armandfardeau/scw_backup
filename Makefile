DRY_RUN := true
VERBOSE := false
TAG := ""

build:
	docker build -t scw_backup . 

run: 
	docker run -e ACCESS_KEY=${ACCESS_KEY} -e SECRET_KEY=${SECRET_KEY} -e ORGANIZATION_ID=${ORGANIZATION_ID} -e DEFAULT_PROJECT_ID=${DEFAULT_PROJECT_ID} -e VERBOSE=${VERBOSE} -e DRY_RUN=${DRY_RUN} -e TAG=${TAG} scw_backup:latest

test:
	@make build
	@make run
