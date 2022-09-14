FROM thevlang/vlang:latest

ENV PORT 8080
EXPOSE 8080

WORKDIR /code

COPY ./app /code/app

ENTRYPOINT ["v", "run", "app"]
