#!/usr/bin/env bash
# Logs modifications to key project artifacts for traceability.
set -euo pipefail

INPUT=$(cat)
FILE=$(echo "$INPUT" | python3 -c "import sys,json; print(json.load(sys.stdin).get('file_path',''))" 2>/dev/null || echo "")

[[ -z "$FILE" ]] && exit 0

KEY_PATTERNS=(
  "Team7_Survey_Analysis_Insights"
  "Data_Analysis_Insights_Junyoung"
  "ICGC_Smart_Shopper"
  "System_Prompt_NoCall"
  "Consolidated_Summary"
  "Survey.*Blueprint"
)

for PATTERN in "${KEY_PATTERNS[@]}"; do
  if echo "$FILE" | grep -qE "$PATTERN"; then
    LOG_FILE="$(dirname "$0")/../audit.log"
    TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
    echo "[$TIMESTAMP] MODIFIED: $FILE" >> "$LOG_FILE"
    echo "ℹ️  핵심 아티팩트 변경 기록됨: $(basename "$FILE")" >&2
    break
  fi
done

exit 0
