#!/usr/bin/env bash
# Blocks deletion of irreplaceable research data via Bash tool.
set -euo pipefail

INPUT=$(cat)
CMD=$(echo "$INPUT" | python3 -c "import sys,json; print(json.load(sys.stdin).get('command',''))" 2>/dev/null || echo "")

[[ -z "$CMD" ]] && exit 0

# Block deletion of interview audio files (handles rm -f, rm -v, etc.)
if echo "$CMD" | grep -qE "\brm\b" && echo "$CMD" | grep -qE "\.m4a"; then
  echo "⛔  BLOCKED: 인터뷰 녹음 파일(.m4a) 삭제는 허용되지 않습니다." >&2
  echo "   녹음 파일은 대체 불가능한 고객 발견 데이터입니다." >&2
  exit 2
fi

# Block deletion of analysis PNG visualizations
if echo "$CMD" | grep -qE "\brm\b" && echo "$CMD" | grep -qE "\.png"; then
  echo "⛔  BLOCKED: 분석 시각화 파일(.png) 삭제는 허용되지 않습니다." >&2
  exit 2
fi

# Block deletion of key markdown reports (English and Korean names)
if echo "$CMD" | grep -qE "\brm\b" && echo "$CMD" | grep -qiE "(Insights?|Analysis|인사이트|보고서).*\.md"; then
  echo "⛔  BLOCKED: 핵심 인사이트/보고서 파일 삭제는 허용되지 않습니다." >&2
  exit 2
fi

# Block git push to remote (require manual confirmation)
if echo "$CMD" | grep -qE "^git push[[:space:]]+(origin|upstream)"; then
  echo "⛔  BLOCKED: 원격 push는 직접 터미널에서 실행하세요." >&2
  echo "   민감 데이터(녹취록, 설문 원본)가 포함될 수 있습니다." >&2
  exit 2
fi

exit 0
