#!/usr/bin/env bash
set -euo pipefail

# Publish CogniBridge release assets to GitHub.
# Prerequisites: gh auth login (or GH_TOKEN set)

REPO="BlueMomentum/CogniBridge"
TAG="v2026.08.05"
TITLE="CogniBridge 2026.8.5"
RELEASE_DIR="${RELEASE_DIR:-/Users/luduoduo/cnb_projects/cogni_bridge/cogni_bridge/release}"
REPO_DIR="${REPO_DIR:-$(cd "$(dirname "$0")/.." && pwd)}"

if ! gh auth status >/dev/null 2>&1; then
  echo "Error: gh is not authenticated. Run: gh auth login" >&2
  exit 1
fi

cd "$REPO_DIR"

if [[ -n "$(git status --porcelain)" ]]; then
  git add README.md scripts/publish-release.sh
  git commit -m "Update README for CogniBridge 2026.8.5 release"
fi

git push origin main

NOTES_FILE="$(mktemp)"
cat >"$NOTES_FILE" <<'EOF'
## CogniBridge 2026.8.5

### 更新内容 / What's new

1. OpenClaw 运行时升级至 v2026.6.3，优化 MCP/Skill、安全策略、模型配置、Windows Computer Use 及桌面端体验 / Upgraded OpenClaw to v2026.6.3 and improved MCP/Skill setup, security, model configuration, Windows Computer Use, and desktop UX
2. 新增本地知识库、多格式解析、OCR/视觉识别、全文检索及专家关联问答 / Added local knowledge bases, multi-format parsing, OCR/vision, full-text search, and expert-linked Q&A
3. 新增拟人化业务专家、快捷操作、单聊和群聊 / Added humanized business experts, quick actions, one-to-one chats, and group chats
4. 增加 Token/用量记录、用户聚合及服务端统计 / Added token and usage records, user aggregation, and server-side statistics
5. 提升任务、定时任务、IM 会话及 WhatsApp/Telegram/Discord 消息交付稳定性 / Improved task, scheduled task, IM, and WhatsApp/Telegram/Discord delivery stability
6. 新增客户开发闭环工作台，支持线索发现、竞品调研、产品诊断及后续跟进 / Added a customer development workspace for lead discovery, competitor research, product diagnosis, and follow-up

### 安装包 / Downloads

| Platform | File |
|----------|------|
| macOS (Apple Silicon) | CogniBridge-2026.8.5-arm64.dmg |
| macOS (Intel) | CogniBridge-2026.8.5-x64.dmg |
| macOS (Intel) update metadata | CogniBridge-2026.8.5-x64.dmg.blockmap |
| Windows (x64) | CogniBridge.Setup.2026.8.5.exe |
EOF

gh release create "$TAG" \
  --repo "$REPO" \
  --title "$TITLE" \
  --notes-file "$NOTES_FILE" \
  "$RELEASE_DIR/CogniBridge-2026.8.5-arm64.dmg" \
  "$RELEASE_DIR/CogniBridge-2026.8.5-x64.dmg" \
  "$RELEASE_DIR/CogniBridge-2026.8.5-x64.dmg.blockmap" \
  "$RELEASE_DIR/CogniBridge Setup 2026.8.5.exe"

rm -f "$NOTES_FILE"
echo "Release $TAG published: https://github.com/$REPO/releases/tag/$TAG"
