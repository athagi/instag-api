.PHONY: build
build: 
	GOOS=linux go build -o bin/listTags src/tag/list/main.go
	GOOS=linux go build -o bin/createTag src/tag/create/main.go 

.PHONY: deploy
deploy: build
	sls deploy -v
	
.PHONY: clean
clean: 
	rm -rf ./bin

.PHONY: destroy
destroy:
	sls remove 

.PHONY: run-locally
run-locally: build
	SLS_DEBUG=* sls invoke local --function listTags --path lib/tag-list-data.json
	SLS_DEBUG=* sls invoke local --function createTag --path lib/tag-create-data.json

.PHONY: test
test:
	go test -v -cover ./src/...
