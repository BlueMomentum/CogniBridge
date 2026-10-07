#!/usr/bin/env bash
set -euo pipefail

# Publish CogniBridge release assets to GitHub.
# Prerequisites: gh auth login (or GH_TOKEN set)

REPO="BlueMomentum/CogniBridge"
TAG="v2026.10.01"
TITLE="CogniBridge 2026.10.1"
RELEASE_DIR="${RELEASE_DIR:-/Users/macbook/projects/cogni_bridge/cogni_bridge/release}"
REPO_DIR="${REPO_DIR:-$(cd "$(dirname "$0")/.." && pwd)}"

if ! gh auth status >/dev/null 2>&1; then
  echo "Error: gh is not authenticated. Run: gh auth login" >&2
  exit 1
fi

cd "$REPO_DIR"

if ! git diff --quiet -- README.md scripts/publish-release.sh || ! git diff --cached --quiet -- README.md scripts/publish-release.sh; then
  git add README.md scripts/publish-release.sh
  git commit -m "Update README for CogniBridge 2026.10.1 release"
fi

git push origin main

NOTES_FILE="$(mktemp)"
cat >"$NOTES_FILE" <<'EOF'
## CogniBridge 2026.10.1

### 更新内容 / What's new

1. 客户动作按 Ontology 组织。打开客户即可看到当前状态和下一步，确认后状态、记录和下一步一起更新。邮件只出草稿，发出前需人工确认。 / Customer actions follow Ontology. Opening a customer shows the current state and next step; confirming updates the state, record, and next step together. Email is draft-only and needs confirmation before sending.
2. 客户开发更稳。发信后进入等待回复，不再反复改同一封草稿；雷达过滤噪声线索，退信停止继续触达。 / Steadier customer development. After sending, the flow waits for a reply instead of revising the same draft; radar filters noisy leads, and bounces stop further outreach.
3. 支持知源云端知识库。可在智桥使用知源智能体干活，输入 @智能体名 指定，或按问题自动选用。本地资料不会上传到云端。 / Zhiyuan cloud knowledge base. Use Zhiyuan agents in CogniBridge by typing @agent name, or let the question choose one. Local materials stay on device.
4. 即时通讯支持多账号。消息和定时任务投递到对应账号，会话总结可跨渠道查看。 / IM supports multiple accounts. Messages and scheduled tasks go to the matching account, and conversation summaries can be viewed across channels.
5. 账户与界面。支持金币充值与充值记录、英文界面，以及自定义 Logo、产品名和助手昵称。 / Account and interface: coin top-up and history, English UI, and custom logo, product name, and assistant nickname.
6. 稳定性。定时任务可重新编辑，并修复了模型超时、注册和启动等问题。 / Stability: scheduled tasks can be edited again, and model timeout, registration, and startup issues are fixed.

### 安装包 / Downloads

| Platform | File |
|----------|------|
| macOS (Apple Silicon) | CogniBridge-2026.10.1-arm64.dmg |
| Windows (x64) | CogniBridge.Setup.2026.10.1.exe |
EOF

gh release create "$TAG" \
  --repo "$REPO" \
  --title "$TITLE" \
  --notes-file "$NOTES_FILE" \
  "$RELEASE_DIR/CogniBridge-2026.10.1-arm64.dmg" \
  "$RELEASE_DIR/CogniBridge Setup 2026.10.1.exe"

rm -f "$NOTES_FILE"
echo "Release $TAG published: https://github.com/$REPO/releases/tag/$TAG"
