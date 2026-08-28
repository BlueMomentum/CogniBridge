#!/usr/bin/env bash
set -euo pipefail

# Publish CogniBridge release assets to GitHub.
# Prerequisites: gh auth login (or GH_TOKEN set)

REPO="BlueMomentum/CogniBridge"
TAG="v2026.08.28"
TITLE="CogniBridge 2026.8.28"
RELEASE_DIR="${RELEASE_DIR:-/Users/macbook/projects/cogni_bridge/cogni_bridge/release}"
REPO_DIR="${REPO_DIR:-$(cd "$(dirname "$0")/.." && pwd)}"

if ! gh auth status >/dev/null 2>&1; then
  echo "Error: gh is not authenticated. Run: gh auth login" >&2
  exit 1
fi

cd "$REPO_DIR"

if [[ -n "$(git status --porcelain)" ]]; then
  git add README.md scripts/publish-release.sh
  git commit -m "Update README for CogniBridge 2026.8.28 release"
fi

git push origin main

NOTES_FILE="$(mktemp)"
cat >"$NOTES_FILE" <<'EOF'
## CogniBridge 2026.8.28

### 更新内容 / What's new

1. 完善多邮箱闭环：多账号同步、线程、富文本、回复/转发与附件 / Multi-mailbox loop: multi-account sync, threads, rich text, reply/forward, and attachments
2. 邮件可关联客户、线索、商机和订单，支持 AI 草稿与发送确认 / Link emails to customers, leads, opportunities, and orders; AI drafts and send confirmation
3. 扩展客户工作台：关系案例、身份旅程、互动记录与市场洞察 / Expanded customer workspace: relationship cases, journeys, interactions, and market insights
4. 提升定时任务与 IM 投递可靠性 / More reliable scheduled-task and IM delivery
5. 增强中断任务、Gateway 与 IM Session 故障恢复 / Recover interrupted tasks, Gateway sessions, and IM sessions
6. 加强账号安全：公司账号、用户名登录、角色权限与密码变更 / Stronger account security: company accounts, username login, roles, and password changes

### 安装包 / Downloads

| Platform | File |
|----------|------|
| macOS (Apple Silicon) | CogniBridge-2026.8.28-arm64.dmg |
| Windows (x64) | CogniBridge.Setup.2026.8.28.exe |
EOF

gh release create "$TAG" \
  --repo "$REPO" \
  --title "$TITLE" \
  --notes-file "$NOTES_FILE" \
  "$RELEASE_DIR/CogniBridge-2026.8.28-arm64.dmg" \
  "$RELEASE_DIR/CogniBridge Setup 2026.8.28.exe"

rm -f "$NOTES_FILE"
echo "Release $TAG published: https://github.com/$REPO/releases/tag/$TAG"
