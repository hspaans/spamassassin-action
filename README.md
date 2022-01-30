# spamassassin-action

## Usage

This GitHub Action runs SpamAssassin to lint rules.

### Parameter: directory

Indicates the directory in the repository containing the rules.

This parameter is optional; by default it will be `/`

## Example

```yaml
---
name: CI

on:
  pull_request:
  push:
    branches:
      - master
  schedule:
    - cron: "38 3 * * 4"

jobs:
  build-test:
    runs-on: ubuntu-latest

    steps:

      - name: Checkout Code
        uses: actions/checkout@v2

      - name: Verify SpamAssassin rules
        uses: hspaans/spamassassin-action@v2
        with:
          directory: /
```
