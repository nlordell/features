# Hare Dev Container Feature

This directory contains a Dev Container feature for installing [Hare](https://harelang.org/).
The feature will install `hare` to the resulting Dev Container.

## Usage

```jsonc
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/nlordell/features/hare": {}
    }
}
```

```bash
$ hare version

Hare TODO
```
