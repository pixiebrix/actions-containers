FROM mcr.microsoft.com/playwright:v1.53.1-noble
RUN npx playwright install --with-deps msedge msedge-beta
