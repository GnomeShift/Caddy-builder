# Stage 1: Build
ARG CADDY_VERSION=2
FROM caddy:${CADDY_VERSION}-builder-alpine AS builder

ARG CADDY_MODULES

RUN set -e; \
    ARGS=""; \
    for mod in ${CADDY_MODULES}; do \
        ARGS="$ARGS --with $mod"; \
    done; \
    xcaddy build $ARGS

# Stage 2: Alpine
FROM caddy:${CADDY_VERSION}-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
