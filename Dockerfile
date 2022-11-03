FROM thevlang/vlang:latest as builder

ENV APP_HOME /code

WORKDIR "$APP_HOME"
# essential tools
RUN apt-get update -y && apt-get install -y --no-install-recommends \
    ca-certificates \
    netbase \
    curl \
    git \
    make \
    libpq-dev \
  && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN v install zztkm.vdotenv
COPY ./app "$APP_HOME"/app
RUN v fmt -w .
RUN v app

FROM thevlang/vlang:latest as prod

ENV APP_HOME /code
RUN mkdir -p "$APP_HOME"
WORKDIR "$APP_HOME"
COPY --from=builder "$APP_HOME"/app/app "$APP_HOME"
ENV PORT 8080
EXPOSE 8080
RUN apt-get update -y && apt-get install -y --no-install-recommends \
    ca-certificates \
    libpq-dev \
  && apt-get clean && rm -rf /var/lib/apt/lists/*
ENTRYPOINT [ "./app"]
