#!/usr/bin/env bash
# Blocks Write/Edit operations on Final_Versions (submitted files).
set -euo pipefail

INPUT=$(cat)
FILE=$(echo "$INPUT" | python3 -c "import sys,json; print(json.load(sys.stdin).get('file_path',''))" 2>/dev/null || echo "")

[[ -z "$FILE" ]] && exit 0

if echo "$FILE" | grep -qE "(Final_Versions|최종본)"; then
  echo "⛔  BLOCKED: 'Final_Versions' 폴더는 보호됩니다." >&2
  echo "   초안은 Working_Drafts(04_Midterm_Presentation/Working_Drafts/) 폴더를 사용하세요." >&2
  echo "   파일: $FILE" >&2
  exit 2
fi

exit 0
