#!/usr/bin/env bash
set -euo pipefail

LOG_FILE="/raid/user_fredoliveira/experiments/BASELINE/baseline-codebase/logs/openbhb_infer_36631.out"

while IFS= read -r line || [[ -n "$line" ]]; do
    printf '%s\n' "$line"
    case "$line" in
        "  Processed "*) sleep 1 ;;
    esac
done < "$LOG_FILE"
