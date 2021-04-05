FROM debian:10.9-slim

LABEL org.opencontainers.image.description="SpamAssassin container for GitHub Action spamassassin"
LABEL org.opencontainers.image.source=https://github.com/hspaans/spamassassin-action

LABEL repository="https://github.com/hspaans/spamassassin-action"
LABEL homepage="https://github.com/hspaans/spamassassin-action"
LABEL maintainer="Hans Spaans <hans@dailystuff.nl>"

RUN apt-get update && \
    apt-get -y install --no-install-recommends \
      spamassassin=3.4.2-1+deb10u2 && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint /usr/local/bin/entrypoint
RUN chmod 555 /usr/local/bin/entrypoint

ENTRYPOINT ["/usr/local/bin/entrypoint"]
