# CogniBridge

<p align="center">
  <strong>All-in-One Personal Assistant Agent · 全场景个人助理 Agent</strong>
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="MIT License"></a>
  <img src="https://img.shields.io/badge/Platform-macOS%20%7C%20Windows-brightgreen" alt="Platform">
  <img src="https://img.shields.io/badge/Version-2026.8.5-47848F" alt="Version">
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
| **macOS (Apple Silicon)** | [CogniBridge-2026.8.5-arm64.dmg](https://github.com/BlueMomentum/CogniBridge/releases/download/v2026.08.05/CogniBridge-2026.8.5-arm64.dmg) | ~388 MB |
| **macOS (Intel)** | [CogniBridge-2026.8.5-x64.dmg](https://github.com/BlueMomentum/CogniBridge/releases/download/v2026.08.05/CogniBridge-2026.8.5-x64.dmg) | ~415 MB |
| **Windows (x64)** | [CogniBridge.Setup.2026.8.5.exe](https://github.com/BlueMomentum/CogniBridge/releases/download/v2026.08.05/CogniBridge.Setup.2026.8.5.exe) | ~412 MB |

- **All versions & release notes:** [GitHub Releases](https://github.com/BlueMomentum/CogniBridge/releases)

**Latest (2026.8.5) highlights**

- Upgraded the OpenClaw runtime to `v2026.6.3`, with improved MCP/Skill installation, security policies, model configuration, Windows Computer Use, menus, startup speed, workspace details, internationalization, and packaging.
- Added local knowledge bases with incremental import, PDF/DOCX/XLSX/PPTX parsing, OCR/visual recognition, full-text search, expert-linked Q&A, and material deletion/reindexing.
- Added humanized business experts, quick actions, one-to-one expert chats, and group chats, with improved conversation history and multilingual display.
- Added token and usage records, user-level aggregation, server-side usage statistics, and management-side usage views.
- Improved task continuation and recovery, scheduled task history and archiving, IM synchronization, human replies, media thumbnails, and WhatsApp/Telegram/Discord delivery stability.
- Added a customer development workspace covering lead discovery, competitor research, product diagnosis, customer outreach, stage progression, persistent data, results, and follow-up tasks.

**Requirements:** macOS 11+ (Intel or Apple Silicon) or Windows 10/11 (64-bit). Internet required for AI and optional IM features.

### Key features

- **Cowork mode** — Agent runs tools, files, and commands locally or in an OpenClaw sandbox; every sensitive action needs your approval  
- **Built-in Skills** — Office docs (Word/Excel/PPT/PDF), web search, Playwright automation, video (Remotion), email (IMAP/SMTP), and more  
- **Scheduled tasks** — Cron-style jobs via chat or GUI (news digests, inbox cleanup, reports, etc.)  
- **Persistent memory** — Learns preferences and facts across sessions (local SQLite)  
- **IM remote control** — DingTalk, Feishu, Telegram, Discord, and more  
- **Cross-platform** — macOS (Intel + ARM) and Windows; data stays on your device  

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
| **macOS（Apple 芯片）** | [CogniBridge-2026.8.5-arm64.dmg](https://github.com/BlueMomentum/CogniBridge/releases/download/v2026.08.05/CogniBridge-2026.8.5-arm64.dmg) | ~388 MB |
| **macOS（Intel）** | [CogniBridge-2026.8.5-x64.dmg](https://github.com/BlueMomentum/CogniBridge/releases/download/v2026.08.05/CogniBridge-2026.8.5-x64.dmg) | ~415 MB |
| **Windows（64 位）** | [CogniBridge.Setup.2026.8.5.exe](https://github.com/BlueMomentum/CogniBridge/releases/download/v2026.08.05/CogniBridge.Setup.2026.8.5.exe) | ~412 MB |

- **全部版本与更新说明：** [GitHub Releases](https://github.com/BlueMomentum/CogniBridge/releases)

**当前最新版 2026.8.5 更新摘要**

- OpenClaw 运行时升级至 `v2026.6.3`，增强 MCP/Skill 安装、安全策略和模型配置，并优化 Windows Computer Use、菜单、启动速度、工作区详情、国际化及打包安装体验。
- 新增本地知识库、增量导入及 PDF/DOCX/XLSX/PPTX 多格式解析，支持 OCR/视觉识别、全文检索、专家关联问答和资料删除/重建索引。
- 新增拟人化业务专家、快捷操作、专家单聊和群聊能力，优化专家会话展示、历史记录及多语言体验。
- 增加 Token/用量记录、按用户聚合展示、服务端用量统计及管理端数据查看能力。
- 提升任务续接、异常结束、空回复恢复、定时任务历史与归档、IM 会话同步、人工回复、媒体缩略图及 WhatsApp/Telegram/Discord 等通道稳定性。
- 新增客户开发闭环工作台，覆盖线索发现、竞品调研、产品诊断、客户开发、阶段推进、数据持久化、结果沉淀及后续跟进任务。

**系统要求：** macOS 11+（Intel 或 Apple 芯片）或 Windows 10/11（64 位）；使用 AI 与 IM 功能需联网。

### 核心特性

- **Cowork 协作** — 本地或 OpenClaw 沙箱执行；文件、终端、网络等操作需权限确认  
- **内置 Skill** — Office 文档、网页搜索、Playwright、Remotion 视频、IMAP/SMTP 邮件等  
- **定时任务** — 对话或界面创建 Cron 任务（资讯汇总、邮箱整理、周期报告等）  
- **持久记忆** — 跨会话记住偏好与事实（本地 SQLite，数据不出设备）  
- **IM 远控** — 钉钉、飞书、Telegram、Discord 等  
- **跨平台** — macOS / Windows；业务数据本地化存储  

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
