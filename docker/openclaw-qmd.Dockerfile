ARG OPENCLAW_BASE_IMAGE=ghcr.io/openclaw/openclaw:2026.3.28
FROM ${OPENCLAW_BASE_IMAGE}

USER root

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    python3 \
    make \
    g++ \
    cmake \
    sqlite3 \
  && npm install -g @tobilu/qmd \
  && qmd --help >/dev/null \
  && curl -fsSL "https://github.com/googleworkspace/cli/releases/download/v0.18.1/gws-x86_64-unknown-linux-gnu.tar.gz" \
     -o /tmp/gws.tar.gz \
  && tar -xzf /tmp/gws.tar.gz -C /tmp/ \
  && mv /tmp/gws-x86_64-unknown-linux-gnu/gws /usr/local/bin/gws \
  && chmod +x /usr/local/bin/gws \
  && rm -rf /tmp/gws.tar.gz /tmp/gws-x86_64-unknown-linux-gnu \
  && /usr/local/bin/gws --version \
  && rm -rf /var/lib/apt/lists/*

USER node

RUN qmd --help >/dev/null
