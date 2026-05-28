# CogniBridge

<p align="center">
  <strong>All-in-One Personal Assistant Agent · 全场景个人助理 Agent</strong>
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="MIT License"></a>
  <img src="https://img.shields.io/badge/Platform-macOS%20%7C%20Windows-brightgreen" alt="Platform">
  <img src="https://img.shields.io/badge/Version-2026.05.25-47848F" alt="Version">
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
| **macOS (Apple Silicon)** | [CogniBridge-2026.5.25-arm64.dmg](https://www.bluemomentum.cn/cogni_bridge/release/2026.05.25/CogniBridge-2026.5.25-arm64.dmg) | ~494 MB |
| **macOS (Intel)** | [CogniBridge-2026.5.25-x64.dmg](https://www.bluemomentum.cn/cogni_bridge/release/2026.05.25/CogniBridge-2026.5.25-x64.dmg) | ~467 MB |
| **Windows (x64)** | [CogniBridge Setup 2026.5.25.exe](https://www.bluemomentum.cn/cogni_bridge/release/2026.05.25/CogniBridge%20Setup%202026.5.25.exe) | ~487 MB |

- **All versions & release notes:** [CogniBridge Downloads](https://www.bluemomentum.cn/cogni_bridge/release/downloads.html)
- **Manifest (automation):** [`versions.json`](https://www.bluemomentum.cn/cogni_bridge/release/versions.json)

**Latest (2026.05.25) highlights**

1. Improved product–market positioning analysis  
2. Deeper target-customer research  
3. Competitive product research and analysis  

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

### Faster downloads (maintainers)

Installers are ~500 MB each. Hosting only on a single origin ([bluemomentum.cn](https://www.bluemomentum.cn)) can feel slow without a CDN.

**Recommended free setup (pick one primary + keep current site as mirror):**

| Option | Pros | Notes |
|--------|------|-------|
| **[GitHub Releases](https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository)** | Free, global CDN, fits files &lt; 2 GB | Attach `.dmg` / `.exe` to tags like `v2026.05.25`; link README to `https://github.com/BlueMomentum/CogniBridge/releases/latest` |
| **[Cloudflare R2](https://developers.cloudflare.com/r2/)** | Free tier (~10 GB), egress free via Cloudflare | Good if you want your own domain + CDN; upload once, point `versions.json` `baseUrl` to the bucket/public URL |
| **Gitee Releases** | Often faster in mainland China | Useful as a China mirror; sync the same assets from CI |

After uploading to GitHub Releases, add release asset URLs to `versions.json` (or a second `downloadUrl` field) so [downloads.html](https://www.bluemomentum.cn/cogni_bridge/release/downloads.html) can prefer the faster mirror.

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
| **macOS（Apple 芯片）** | [CogniBridge-2026.5.25-arm64.dmg](https://www.bluemomentum.cn/cogni_bridge/release/2026.05.25/CogniBridge-2026.5.25-arm64.dmg) | ~494 MB |
| **macOS（Intel）** | [CogniBridge-2026.5.25-x64.dmg](https://www.bluemomentum.cn/cogni_bridge/release/2026.05.25/CogniBridge-2026.5.25-x64.dmg) | ~467 MB |
| **Windows（64 位）** | [CogniBridge Setup 2026.5.25.exe](https://www.bluemomentum.cn/cogni_bridge/release/2026.05.25/CogniBridge%20Setup%202026.5.25.exe) | ~487 MB |

- **全部版本与更新说明：** [CogniBridge 版本下载](https://www.bluemomentum.cn/cogni_bridge/release/downloads.html)  
- **版本清单（脚本用）：** [`versions.json`](https://www.bluemomentum.cn/cogni_bridge/release/versions.json)

**当前最新版 2026.05.25 更新摘要**

1. 优化用户产品市场定位分析  
2. 增加目标客户深度调研  
3. 增加竞争产品调研和分析  

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

### 下载加速建议（维护者）

当前安装包约 **500 MB**，若仅放在自有服务器且无 CDN，国内/海外用户都可能感觉偏慢。

**建议（免费、统一入口）：**

1. **主站：GitHub Releases** — 将各平台 `.dmg` / `.exe` 上传到 [BlueMomentum/CogniBridge Releases](https://github.com/BlueMomentum/CogniBridge/releases)，README 与 `versions.json` 优先指向 `releases/latest` 资源链接。  
2. **镜像：保留** [bluemomentum.cn 下载页](https://www.bluemomentum.cn/cogni_bridge/release/downloads.html) 作为备用或国内镜像。  
3. **可选：Cloudflare R2** — 免费额度 + 全球 CDN，适合自定义域名统一分发。  
4. **可选：Gitee Releases** — 作为国内补充镜像，与 GitHub 同步同一批文件。

发布流程可在 CI 中 `npm run dist:*` 完成后自动 `gh release upload`，并刷新 `versions.json` 中的 `url` 字段。

### 许可证

[MIT License](LICENSE)

---

<p align="center">
  <sub>Documentation synthesized from CogniBridge product README · 文档依据内部产品说明整理</sub>
</p>
