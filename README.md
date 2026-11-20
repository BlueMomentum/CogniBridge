# CogniBridge

<p align="center">
  <strong>All-in-One Personal Assistant Agent · 全场景个人助理 Agent</strong>
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="MIT License"></a>
  <img src="https://img.shields.io/badge/Platform-macOS%20%7C%20Windows-brightgreen" alt="Platform">
  <img src="https://img.shields.io/badge/Version-2026.11.20-47848F" alt="Version">
</p>

<p align="center">
  <strong>English</strong> · <a href="#中文">中文</a>
</p>

---

## English

**CogniBridge** is a desktop AI cowork agent that runs 24/7 on your machine. It handles everyday work — data analysis, presentations, documents, web search, email, scheduled tasks, and more — under your supervision in **Cowork mode** (local or sandbox execution).

You can also drive it from your phone via **Telegram, Discord, DingTalk, or Feishu (Lark)**.

**Publisher:** [Blue Momentum Technology](https://www.bluemomentum.cn) (蓝色动量科技有限公司)

### Download

| Platform | Installer | Size (approx.) |
|----------|-----------|----------------|
| **macOS (Apple Silicon)** | [CogniBridge-2026.11.20-arm64.dmg](https://github.com/BlueMomentum/CogniBridge/releases/download/v2026.11.20/CogniBridge-2026.11.20-arm64.dmg) | ~633 MB |
| **macOS (Intel)** | [CogniBridge-2026.11.20-x64.dmg](https://github.com/BlueMomentum/CogniBridge/releases/download/v2026.11.20/CogniBridge-2026.11.20-x64.dmg) | ~645 MB |
| **Windows (x64)** | [CogniBridge.Setup.2026.11.20.exe](https://github.com/BlueMomentum/CogniBridge/releases/download/v2026.11.20/CogniBridge.Setup.2026.11.20.exe) | ~621 MB |

- **All versions & release notes:** [GitHub Releases](https://github.com/BlueMomentum/CogniBridge/releases)

**Latest (2026.11.20) highlights**

1. **Cowork engine**: DSH is now the default. Installers no longer bundle OpenClaw by default.
2. **Role-based workspace**: Sales, academic operations, and customer support staff see only the tasks, projects, resources, and deliverables they have permission to access.
3. **Work record sync**: Manage tasks, projects, and deliverables on the desktop and sync them with the Zhiyuan workspace.
4. **Knowledge and Data**: Switch between local and cloud knowledge bases and business data such as customers and orders.
5. **Browser handoff**: Take over from the AI, return control, or stop the operation at any time.
6. **Messaging improvements**: Improved account management, QR-code pairing, and message history. Connection state and conversations are kept separate by account.
7. **Scheduled task migration**: Migrate legacy tasks. The app prompts you to confirm recipients when they need to be checked again.
8. **Desktop improvements**: Better sidebar and chat layouts in narrow windows and improved Windows installer compatibility.

**Requirements:** macOS 11+ (Intel or Apple Silicon) or Windows 10/11 (64-bit). Internet required for AI and optional IM features.

### Key features

- **Cowork mode** — Runs on DSH by default; sensitive actions need your approval
- **Built-in Skills** — Office docs (Word/Excel/PPT/PDF), web search, Playwright automation, video (Remotion), email (IMAP/SMTP), and more  
- **Scheduled tasks** — Cron-style jobs via chat or GUI (news digests, inbox cleanup, reports, etc.)  
- **Persistent memory** — Learns preferences and facts across sessions (local SQLite)  
- **IM remote control** — DingTalk, Feishu, Telegram, Discord, and more  
- **Cross-platform** — macOS (Intel + ARM) and Windows

### Quick start (end users)

1. Download the installer for your OS from the table above.  
2. Open the app, complete onboarding (API keys / model provider as prompted).  
3. Set a **working directory** in Settings — the agent uses it for files and projects.  
4. Start a **Cowork** session or message your connected IM bot.  

**Support:** service@bluemomentum.chat

### For developers

Source and build instructions live in the internal `cogni_bridge` application repo (Electron 40 + React 18 + TypeScript).

| Prerequisite | Value |
|--------------|-------|
| Node.js | `>= 24 < 25` |
| Dev entry | `npm run electron:dev` |
| Packaged output | `release/` via `npm run dist:mac` / `dist:win` |

Optional agent engine: [OpenClaw](https://github.com/openclaw/openclaw) (version pinned in `package.json` → `openclaw.version`).

### License

[MIT License](LICENSE)

---

## 中文

<a id="中文"></a>

**CogniBridge（智桥客户端）** 是一款桌面端 AI 协作助理，7×24 在本地为你处理办公任务：数据分析、PPT、文档、搜索、邮件、定时任务等。核心能力是 **Cowork 模式**——在本地或沙箱中执行工具与命令，敏感操作均需你批准。

同时支持通过 **钉钉、飞书、Telegram、Discord** 等 IM 在手机上远程指挥桌面 Agent。

**出品方：** [蓝色动量科技有限公司](https://www.bluemomentum.cn)

### 下载安装

| 平台 | 安装包 | 大小（约） |
|------|--------|------------|
| **macOS（Apple 芯片）** | [CogniBridge-2026.11.20-arm64.dmg](https://github.com/BlueMomentum/CogniBridge/releases/download/v2026.11.20/CogniBridge-2026.11.20-arm64.dmg) | ~633 MB |
| **macOS（Intel 芯片）** | [CogniBridge-2026.11.20-x64.dmg](https://github.com/BlueMomentum/CogniBridge/releases/download/v2026.11.20/CogniBridge-2026.11.20-x64.dmg) | ~645 MB |
| **Windows（64 位）** | [CogniBridge.Setup.2026.11.20.exe](https://github.com/BlueMomentum/CogniBridge/releases/download/v2026.11.20/CogniBridge.Setup.2026.11.20.exe) | ~621 MB |

- **全部版本与更新说明：** [GitHub Releases](https://github.com/BlueMomentum/CogniBridge/releases)

**当前最新版 2026.11.20 更新摘要**

1. **AI 协作引擎升级**：Cowork 默认切换至 DSH，安装包默认不再内置 OpenClaw。
2. **个人工作台按岗位展示**：销售、教务、客服登录后，可查看各自有权限的任务、项目、资料和成果。
3. **工作记录支持同步**：任务、项目和成果可在桌面端维护，并与知源工作台同步。
4. **知识与业务数据统一入口**：可在「知识和数据」中切换本地知识库、云知识库，以及客户、订单等业务数据。
5. **内置浏览器支持手动接管**：AI 操作网页时，用户可以随时接管、交还控制或停止操作。
6. **即时通讯体验升级**：改进渠道账号管理、扫码连接和历史消息查看，按账号隔离连接状态和会话记录。
7. **旧版自动化任务迁移**：可识别并迁移旧版定时任务，需要重新核对投递对象的任务会提示确认。
8. **优化桌面端体验**：改善窄窗口下的侧栏和对话布局，并更新 Windows 安装包的打包兼容性。

**系统要求：** macOS 11+（Intel 或 Apple 芯片）或 Windows 10/11（64 位）；使用 AI 与 IM 功能需联网。

### 核心特性

- **Cowork 协作** — 默认使用 DSH 引擎；敏感操作需权限确认
- **内置 Skill** — Office 文档、网页搜索、Playwright、Remotion 视频、IMAP/SMTP 邮件等  
- **定时任务** — 对话或界面创建 Cron 任务（资讯汇总、邮箱整理、周期报告等）  
- **持久记忆** — 跨会话记住偏好与事实（本地 SQLite，数据不出设备）  
- **IM 远控** — 钉钉、飞书、Telegram、Discord 等  
- **跨平台** — 支持 macOS（Apple 芯片和 Intel 芯片）及 Windows

### 快速上手（终端用户）

1. 从上表下载对应系统安装包并安装。  
2. 首次启动按向导配置模型 / API（按界面提示）。  
3. 在设置中指定 **工作目录**（Agent 读写文件的根路径）。  
4. 新建 **Cowork** 会话，或通过已绑定的 IM 发送指令。  

**联系支持：** service@bluemomentum.chat

### 开发者说明

完整源码与打包脚本在内部 `cogni_bridge` 仓库（Electron + React + TypeScript）。

| 环境 | 要求 |
|------|------|
| Node.js | `>= 24 < 25` |
| 开发启动 | `npm run electron:dev` |
| 安装包输出 | `npm run dist:mac` / `dist:win` → `release/` |

可选 Agent 引擎：[OpenClaw](https://github.com/openclaw/openclaw)，版本见 `package.json` 中 `openclaw.version`。

智桥外贸版（专家 Skill、分层记忆、`zhiqiao_*` 业务库）在 monorepo 的 `experts/` 与 `docs/` 中有单独产品设计说明；本仓库为 **CogniBridge 桌面客户端** 的对外主页与发布入口。

### 许可证

[MIT License](LICENSE)

---

<p align="center">
  <sub>Documentation synthesized from CogniBridge product README · 文档依据内部产品说明整理</sub>
</p>
