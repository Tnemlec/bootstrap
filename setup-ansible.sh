#!/usr/bin/bash

set -eou pipefail

cd "$(dirname "$0")"

sudo apt update && sudo apt install -y ansible