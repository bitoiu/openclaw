FROM alpine/openclaw:latest

USER root

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    ca-certificates \
    python3 \
    make \
    g++ \
    cmake \
    sqlite3 \
  && npm install -g @tobilu/qmd \
  && qmd --help >/dev/null \
  && rm -rf /var/lib/apt/lists/*

USER node

RUN qmd --help >/dev/null
