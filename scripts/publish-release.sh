#!/usr/bin/env bash
set -euo pipefail

# Publish CogniBridge release assets to GitHub.
# Prerequisites: gh auth login (or GH_TOKEN set)

REPO="BlueMomentum/CogniBridge"
TAG="v2026.07.17"
TITLE="CogniBridge 2026.7.17"
RELEASE_DIR="${RELEASE_DIR:-/Users/luduoduo/cnb_projects/cogni_bridge/cogni_bridge/release}"
REPO_DIR="${REPO_DIR:-$(cd "$(dirname "$0")/.." && pwd)}"

if ! gh auth status >/dev/null 2>&1; then
  echo "Error: gh is not authenticated. Run: gh auth login" >&2
  exit 1
fi

cd "$REPO_DIR"

if [[ -n "$(git status --porcelain)" ]]; then
  git add README.md scripts/publish-release.sh
  git commit -m "Update README for CogniBridge 2026.7.17 release"
fi

git push origin main

NOTES_FILE="$(mktemp)"
cat >"$NOTES_FILE" <<'EOF'
## CogniBridge 2026.7.17

### 更新内容 / What's new

1. 新增 Windows 电脑操作能力 / Added Windows computer control for local browser and desktop tasks
2. 优化任务会话、成果预览下载、历史记录搜索及附件展示 / Improved task sessions, result preview and download, history search, and attachments
3. 升级 IM 消息助手，新增智能体回复和人工回复模式 / Upgraded the IM assistant with Agent Reply and Human Reply modes
4. 优化定时任务、业务数据、邮件、字体设置及社交媒体授权 / Improved scheduled tasks, business data, email, font settings, and social authorization
5. 完善中英文文档和多语言协议，修复登录、401、任务、WhatsApp 及打包更新问题 / Improved documentation and agreements and fixed login, 401, task, WhatsApp, and packaging issues

### 安装包 / Downloads

| Platform | File |
|----------|------|
| macOS (Apple Silicon) | CogniBridge-2026.7.17-arm64.dmg |
| macOS (Intel) | CogniBridge-2026.7.17-x64.dmg |
| macOS (Intel) update metadata | CogniBridge-2026.7.17-x64.dmg.blockmap |
| Windows (x64) | CogniBridge Setup 2026.7.17.exe |
EOF

gh release create "$TAG" \
  --repo "$REPO" \
  --title "$TITLE" \
  --notes-file "$NOTES_FILE" \
  "$RELEASE_DIR/CogniBridge-2026.7.17-arm64.dmg" \
  "$RELEASE_DIR/CogniBridge-2026.7.17-x64.dmg" \
  "$RELEASE_DIR/CogniBridge-2026.7.17-x64.dmg.blockmap" \
  "$RELEASE_DIR/CogniBridge Setup 2026.7.17.exe"

rm -f "$NOTES_FILE"
echo "Release $TAG published: https://github.com/$REPO/releases/tag/$TAG"
