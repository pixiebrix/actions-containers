FROM mcr.microsoft.com/playwright:v1.55.0-noble

RUN npx playwright install msedge msedge-beta
