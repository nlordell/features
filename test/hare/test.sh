#!/bin/bash

set -e
source dev-container-features-test-lib

check "hare" hare version

reportResults
