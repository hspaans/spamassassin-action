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

on: [push]

jobs:
  build-test:
    runs-on: ubuntu-latest

    steps:

      - uses: actions/checkout@v2

      - name: Verify SpamAssassin rules
        uses: hspaans/spamassassin-action@v1.0.1
        with:
          directory: /
```
