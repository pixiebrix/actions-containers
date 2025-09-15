# Keep the image up to date with https://playwright.dev/docs/docker#pull-the-image
# Once updated here, also use the correct tag in the monorepo's workflow
FROM mcr.microsoft.com/playwright:v1.53.1-noble

# List all the browsers including those that are included by default
RUN 
npm install @playwright/test@1.53.1
npx --no playwright install --with-deps chromium msedge msedge-beta
