#!/bin/bash

set -e
source dev-container-features-test-lib

check "forge" bash -c "forge --version | grep '4b0d5d8'"
check "cast" bash -c "cast --version | grep '4b0d5d8'"
check "anvil" bash -c "anvil --version | grep '4b0d5d8'"
check "chisel" bash -c "chisel --version | grep '4b0d5d8'"

reportResults
