ARG OPENCLAW_BASE_IMAGE=ghcr.io/openclaw/openclaw:2026.3.13-1
FROM ${OPENCLAW_BASE_IMAGE}

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
