#!/bin/bash

set -euo pipefail

./get_short_commit_sha.sh "^[0-9]+e{0,1}[0-9]+$"
