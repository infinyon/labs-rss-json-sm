build:
	smdk build

test:	build
	smdk test --file ./test-data/input.xml --raw

test-readable: build
	smdk test --file ./test-data/input.xml --raw | tail -n +3 | jq

