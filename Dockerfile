# Keep the image up to date with https://playwright.dev/docs/docker#pull-the-image
# Once updated here, also use the correct tag in the monorepo's workflow
FROM mcr.microsoft.com/playwright:v1.53.1-noble

# List all the browsers including those that are included by default
RUN npx @playwright/test@1.53.1 install --with-deps chrome chromium msedge msedge-beta

# Keep 3 commands in one RUN to save space in the image. rm -rf also cleans up the cache
# Re-set root around apt-get
USER root
RUN apt-get update && \
    apt-get install -y libxmlsec1 libxmlsec1-dev libxml2 pkg-config lsb-release python3-pip && \
    rm -rf /var/lib/apt/lists/*
USER 1001
