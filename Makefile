build:
	docker build . -t barrywalker/millfork:latest

dist: build
	docker push barrywalker/millfork:latest
