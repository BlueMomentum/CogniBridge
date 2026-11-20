#!/usr/bin/env bash
set -euo pipefail

# Publish CogniBridge release assets to GitHub.
# Prerequisites: gh auth login (or GH_TOKEN set)

REPO="BlueMomentum/CogniBridge"
TAG="v2026.11.20"
TITLE="CogniBridge 2026.11.20"
RELEASE_DIR="${RELEASE_DIR:-/Users/macbook/projects/cogni_bridge/cogni_bridge/release}"
REPO_DIR="${REPO_DIR:-$(cd "$(dirname "$0")/.." && pwd)}"
ASSETS=(
  "$RELEASE_DIR/CogniBridge-2026.11.20-arm64.dmg"
  "$RELEASE_DIR/CogniBridge-2026.11.20-x64.dmg"
  "$RELEASE_DIR/CogniBridge Setup 2026.11.20.exe"
)

if ! gh auth status >/dev/null 2>&1; then
  echo "Error: gh is not authenticated. Run: gh auth login" >&2
  exit 1
fi

cd "$REPO_DIR"

for asset in "${ASSETS[@]}"; do
  if [[ ! -s "$asset" ]]; then
    echo "Error: missing or empty installer: $asset" >&2
    exit 1
  fi
done

NOTES_FILE="$(mktemp)"
trap 'rm -f "$NOTES_FILE"' EXIT
cat >"$NOTES_FILE" <<'EOF'
## 智桥 2026.11.20 更新说明

1. **AI 协作引擎升级**：Cowork 默认切换至 DSH，安装包默认不再内置 OpenClaw。
2. **个人工作台按岗位展示**：销售、教务、客服登录后，可查看各自有权限的任务、项目、资料和成果。
3. **工作记录支持同步**：任务、项目和成果可在桌面端维护，并与知源工作台同步。
4. **知识与业务数据统一入口**：可在「知识和数据」中切换本地知识库、云知识库，以及客户、订单等业务数据。
5. **内置浏览器支持手动接管**：AI 操作网页时，用户可以随时接管、交还控制或停止操作。
6. **即时通讯体验升级**：改进渠道账号管理、扫码连接和历史消息查看，按账号隔离连接状态和会话记录。
7. **旧版自动化任务迁移**：可识别并迁移旧版定时任务，需要重新核对投递对象的任务会提示确认。
8. **优化桌面端体验**：改善窄窗口下的侧栏和对话布局，并更新 Windows 安装包的打包兼容性。

## What's new in CogniBridge 2026.11.20

1. **Cowork engine**: DSH is now the default. Installers no longer bundle OpenClaw by default.
2. **Role-based workspace**: Sales, academic operations, and customer support staff see only the tasks, projects, resources, and deliverables they have permission to access.
3. **Work record sync**: Manage tasks, projects, and deliverables on the desktop and sync them with the Zhiyuan workspace.
4. **Knowledge and Data**: Switch between local and cloud knowledge bases and business data such as customers and orders.
5. **Browser handoff**: Take over from the AI, return control, or stop the operation at any time.
6. **Messaging improvements**: Improved account management, QR-code pairing, and message history. Connection state and conversations are kept separate by account.
7. **Scheduled task migration**: Migrate legacy tasks. The app prompts you to confirm recipients when they need to be checked again.
8. **Desktop improvements**: Better sidebar and chat layouts in narrow windows and improved Windows installer compatibility.

### 安装包 / Downloads

| Platform | File |
|----------|------|
| macOS (Apple Silicon) | CogniBridge-2026.11.20-arm64.dmg |
| macOS (Intel) | CogniBridge-2026.11.20-x64.dmg |
| Windows (x64) | CogniBridge.Setup.2026.11.20.exe |
EOF

gh release create "$TAG" \
  --repo "$REPO" \
  --draft \
  --title "$TITLE" \
  --notes-file "$NOTES_FILE" \
  "${ASSETS[@]}"

gh release view "$TAG" --repo "$REPO" --json assets \
  --jq '.assets[] | [.name, .size, .state] | @tsv'

echo "Draft $TAG uploaded. Verify the assets, push the release documentation to main, and publish the draft."
