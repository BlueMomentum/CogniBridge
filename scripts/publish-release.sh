#!/usr/bin/env bash
set -euo pipefail

# Publish CogniBridge release assets to GitHub.
# Prerequisites: gh auth login (or GH_TOKEN set)

REPO="BlueMomentum/CogniBridge"
TAG="v2026.07.01"
TITLE="CogniBridge 2026.7.1"
RELEASE_DIR="${RELEASE_DIR:-/Users/luduoduo/cnb_projects/cogni_bridge/cogni_bridge/release}"
REPO_DIR="${REPO_DIR:-$(cd "$(dirname "$0")/.." && pwd)}"

if ! gh auth status >/dev/null 2>&1; then
  echo "Error: gh is not authenticated. Run: gh auth login" >&2
  exit 1
fi

cd "$REPO_DIR"

if [[ -n "$(git status --porcelain)" ]]; then
  git add README.md
  git commit -m "Update README for CogniBridge 2026.7.1 release"
fi

git push origin main

NOTES_FILE="$(mktemp)"
cat >"$NOTES_FILE" <<'EOF'
## CogniBridge 2026.7.1

### 更新内容 / What's new

1. 任务处理过程中的显示条目优化 / Improved task-processing display items  
2. 优化任务处理流程，优化服务超时自启动 / Optimized task flow and auto-restart on service timeout  
3. proxy 相关网络连接问题修复 / Fixed proxy-related network connection issues  

### 安装包 / Downloads

| Platform | File |
|----------|------|
| macOS (Apple Silicon) | CogniBridge-2026.7.1-arm64.dmg |
| macOS (Intel) | CogniBridge-2026.7.1-x64.dmg |
| Windows (x64) | CogniBridge Setup 2026.7.1.exe |
EOF

gh release create "$TAG" \
  --repo "$REPO" \
  --title "$TITLE" \
  --notes-file "$NOTES_FILE" \
  "$RELEASE_DIR/CogniBridge-2026.7.1-arm64.dmg" \
  "$RELEASE_DIR/CogniBridge-2026.7.1-x64.dmg" \
  "$RELEASE_DIR/CogniBridge Setup 2026.7.1.exe"

rm -f "$NOTES_FILE"
echo "Release $TAG published: https://github.com/$REPO/releases/tag/$TAG"
