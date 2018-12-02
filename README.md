# Docker sqflint

Docker image with sqflint installed, to help speed up build times in CI pipelines.

This uses an alpine based with Python and installs [sqflint](https://github.com/LordGolias/sqf).

[![Docker Build Statu](https://img.shields.io/docker/pulls/acemod/sqflint.svg)](https://hub.docker.com/r/acemod/sqflint/)

## Table of Contents

- [Available tools](#availble-tools)
- [Usage](#usage)
- [Contribute](#contribute)
- [License](#license)

## Available tools

- git
- python3
- make
- zip
- sqflint

## Usage

In gitlab-ci:

```yaml
unit-tests:
    stage: test
    image: acemod/sqflint:latest
    script:
      - sqflint --exit=e -d addons
```

circle-ci:

```yml
version: 2
jobs:
  build:
    docker:
      - image: acemod/sqflint
    steps:
      - checkout
      - run:
          name: linting
          command: |
            sqflint --exit=e -d addons
```

## Contribute

PRs accepted. All issues should be reported in the [Github issue tracker](https://github.com/acemod/docker-sqflint/issues).

## License

[MIT © ACE Mod](LICENSE)
