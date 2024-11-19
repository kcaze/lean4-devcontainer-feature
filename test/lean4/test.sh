#!/bin/bash
set -e
source dev-container-features-test-lib

check "elan installed"  bash -c "elan help"