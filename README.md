# PixieBrix Containers for GitHub Actions

## Usage

```yml
jobs:
  tests:
    runs-on: ubuntu-latest
    container:
      # Docs: https://playwright.dev/docs/ci#via-containers
      image: ghcr.io/pixiebrix/actions-containers:main
      options: --user 1001
```

## Documentation

- https://github.com/pixiebrix/pixiebrix-source/issues/2629
- https://playwright.dev/docs/ci#via-containers
