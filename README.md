# PixieBrix Containers for GitHub Actions

## Usage

```yml
jobs:
  tests:
    runs-on: ubuntu-latest
    container:
      # Docs: https://playwright.dev/docs/ci#via-containers
      # Version must match Playwright version in package.json
      # Update the dockerfile and wait for the build in https://github.com/pixiebrix/actions-containers/blob/main/Dockerfile
      image: ghcr.io/pixiebrix/actions-containers:1.53.1
      options: --user 1001
```

## Updates

The browsers are automatically updated every 3 days. Playwright must be updated manually since it has to match here and in the monorepo.

1. Here: Update the version anywhere it appears in the Dockerfile
    - a new tag will be created, the old one will continue working but it won't receive browser updates
3. Monorepo: Update the version both in package.json in the workflow

## Documentation

- https://github.com/pixiebrix/pixiebrix-source/issues/2629
- https://playwright.dev/docs/ci#via-containers
