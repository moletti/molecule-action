# Github Action: Semantic Release
GitHub Action for Semantic Release

# Example Usage
```yaml
name: Release
on:
  push:
    branches:
      - master

jobs:
  release:
    name: Release
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v2
        with:
          fetch-depth: 0
      - name: Release
        uses: moletti/molecule-action@v1
```