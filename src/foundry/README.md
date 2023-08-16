
# Foundry (foundry)

Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.

## Example Usage

```json
"features": {
    "ghcr.io/nlordell/features/foundry:0": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| version | Select the version of Foundry to install. | string | nightly |

# Foundry Dev Container Feature

This directory contains a Dev Container feature for installing [Foundry](https://getfoundry.sh/).
The feature will install `forge`, `cast`, `anvil`, and `chisel` to the resulting Dev Container.

## Usage

```jsonc
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/nlordell/features/foundry": {}
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
        "ghcr.io/nlordell/features/foundry": {
            "version": "nightly-11b08e9bd4ff0c322ec419419be05a0f71d70e1b"
        }
    }
}
```


---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/nlordell/features/blob/main/src/foundry/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
