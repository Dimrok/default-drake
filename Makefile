TEST_FOLDER := $(shell mktemp -d)

test:
	./default-drake.sh $(TEST_FOLDER)
	cd $(TEST_FOLDER)
	git status
	cd _build/linux64
	python3 drake
	./bin/bin
