USER := ramnathv
REPO := testbook

compile:
	ruhoh compile

deploy: compile
	cd compiled/$(REPO) && \
	git init . && \
	git add . && \
	git commit -m 'update blog'; \
	git push git@github.com:$(USER)/$(REPO) master:gh-pages --force && \
	rm -rf .git && \
    cd ../..