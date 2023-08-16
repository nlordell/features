#!/bin/bash

set -e
source dev-container-features-test-lib

check "forge" bash -c "forge --version | grep '11b08e9'"
check "cast" bash -c "cast --version | grep '11b08e9'"
check "anvil" bash -c "anvil --version | grep '11b08e9'"
check "chisel" bash -c "chisel --version | grep '11b08e9'"

reportResults
