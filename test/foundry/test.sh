#!/bin/bash

set -e
source dev-container-features-test-lib

check "forge" forge --version
check "cast" cast --version
check "anvil" anvil --version
check "chisel" chisel --version

reportResults