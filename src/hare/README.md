
# Hare (hare)

Hare is a systems programming language designed to be simple, stable, and robust.

## Example Usage

```json
"features": {
    "ghcr.io/nlordell/features/hare:0": {}
}
```



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


---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/nlordell/features/blob/main/src/hare/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
