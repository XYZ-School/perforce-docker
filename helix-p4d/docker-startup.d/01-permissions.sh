#!/bin/bash

set -e

# all files under P4ROOT must be owned by perforce system user
mkdir -p "${P4ROOT}"
chown -R perforce:perforce "${P4ROOT}"

# all files under ssl directory should have strict permissions set
mkdir -p "${P4SSLDIR}"
chown -R perforce:perforce "${P4SSLDIR}"
chmod 0700 "${P4SSLDIR}"
chmod 0600 "${P4SSLDIR}"/* &>/dev/null || true # P4SSLDIR could be empty
