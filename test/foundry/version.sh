#!/bin/bash

set -e
source dev-container-features-test-lib

check "forge" bash -c "forge --version | grep '9a0f66e'"
check "cast" bash -c "cast --version | grep '9a0f66e'"
check "anvil" bash -c "anvil --version | grep '9a0f66e'"
check "chisel" bash -c "chisel --version | grep '9a0f66e'"

reportResults
