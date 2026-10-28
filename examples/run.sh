#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_data_hijack info
PYTHONPATH=src python -m gbt_data_hijack check --payload '{}'
PYTHONPATH=src python -m gbt_data_hijack run   --payload '{}'
