# Foundry Dev Container Feature

This repository contains a Dev Container feature for installing [Foundry](https://getfoundry.sh/).
The feature will install `forge`, `cast`, `anvil`, and `chisel` to the resulting Dev Container.

## Usage

```jsonc
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/nlordell/foundry-feature/foundry": {}
    }
}
```

```bash
$ forge --version

forge 0.2.0 (4b0d5d8 2023-07-07T00:04:10.359853565Z)
```

In order to install a specific version of Foundry, use:

```jsonc
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/nlordell/foundry-feature/foundry": {
            "version": "nightly-4b0d5d8dc6f1ceb06944524fc0ba59bddc55f60a"
        }
    }
}
```
