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

forge 0.2.0 (11b08e9 2023-08-16T00:15:24.549820263Z)
```

In order to install a specific version of Foundry, use:

```jsonc
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/nlordell/foundry-feature/foundry": {
            "version": "nightly-11b08e9bd4ff0c322ec419419be05a0f71d70e1b"
        }
    }
}
```
