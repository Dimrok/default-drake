
test:
	$(eval TMP_FOLDER=$(shell mktemp -d))
	$(eval NAME = $(shell cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1))
	$(eval TEST_FOLDER = $(TMP_FOLDER)/$(NAME))
	./default-drake.sh $(TEST_FOLDER)
	cd $(TEST_FOLDER) && git status && cd _build/linux64 && . .venv/bin/activate && python3 drake && ./bin/bin
