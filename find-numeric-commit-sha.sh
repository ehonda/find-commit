#!/bin/bash

set -euo pipefail

./get-short-commit-sha.sh "^[0-9]+e{0,1}[0-9]+$"
