#!/bin/sh
set -e

if [ "$(id -u)" -ne 0 ]; then
    echo -e 'Script must be run as root. Use sudo, su, or add "USER root" to your Dockerfile before running this script.'
    exit 1
fi

echo "Activating feature 'foundry'"

ROOT="/opt/foundry"
BIN="${ROOT}/bin"

echo "Installing dependencies"
apt-get update
apt-get install -y --no-install-recommends ca-certificates curl git

echo "Creating Foundry installation directory"
if [ ! -d "${ROOT}" ]; then
    mkdir -p "${ROOT}"
    chown "${_REMOTE_USER}" "${ROOT}"
fi

echo "Installing 'foundryup'"
curl -L https://foundry.paradigm.xyz \
    | FOUNDRY_DIR="${ROOT}" PATH="${BIN}:${PATH}" bash

cat > /usr/local/bin/foundryup << EOF
#!/bin/sh
export FOUNDRY_DIR="${ROOT}"
export PATH="${BIN}:\${PATH}"
/opt/foundry/bin/foundryup
EOF
chmod +x /usr/local/bin/foundryup

echo "Installing Foundry version ${VERSION}"
FOUNDRYUP_VERSION="${VERSION}" foundryup
for f in $(ls "${BIN}" | grep -v foundryup); do
    ln -sf "${BIN}/$f" "/usr/local/bin/$f"
done

echo "Cleaning up"
rm -rf /var/lib/apt/lists/*

echo "Done!"
