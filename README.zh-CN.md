<p align="center">
  <img width="250" src="apps/weblibre/assets/icon/icon.png" alt="WebLibre logo">
</p>

# WebLibre

<p align="center"><strong>一款专注隐私的 Android 浏览器，具备强大的浏览隔离、本地优先工具和深度自定义能力。</strong></p>

<p align="center">
  <a href="https://github.com/FaFre/WebLibre/releases">
    <img alt="Latest GitHub release" src="https://img.shields.io/github/v/release/FaFre/WebLibre">
  </a>
  <a href="https://f-droid.org/en/packages/eu.weblibre.gecko/">
    <img alt="F-Droid version" src="https://img.shields.io/f-droid/v/eu.weblibre.gecko">
  </a>
  <a href="COPYING">
    <img alt="License: AGPL-3.0" src="https://img.shields.io/badge/license-AGPL--3.0-blue">
  </a>
  <a href="https://liberapay.com/FaFre/donate">
    <img alt="Liberapay patrons" src="https://img.shields.io/liberapay/patrons/FaFre">
  </a>
</p>

[English](README.md) | [简体中文](README.zh-CN.md)

WebLibre 是一款适用于 Android 设备的独立浏览器，基于 [Mozilla Gecko 引擎](https://wiki.mozilla.org/Gecko)和 [Mozilla Android Components](https://mozac.org/) 构建。它将严格的隐私默认设置与容器、隔离标签页、内置 Tor 和代理路由、Firefox 兼容的扩展、设备端搜索以及灵活的标签页管理结合在一起。

WebLibre 不是 Firefox 的分支。它是一个独立的浏览器体验，专为那些想要熟悉的日常浏览、同时不愿放弃对网站、身份和网络连接分离控制权的用户而设计。

**从 Firefox for Android、Fennec 或 IronFox 迁移过来？** 网站和扩展的行为完全一致，因为 WebLibre 使用相同的 Gecko 引擎。在此基础上，WebLibre 还增加了 Firefox 及其加固分支所不具备的功能：隔离标签页、带逐容器 Cookie 隔离和 Tor/代理路由的容器、内置多协议代理客户端、树形标签页管理，以及跨标签页、历史和订阅源的设备端本地搜索。

> [!IMPORTANT]
> **早期访问** - WebLibre 正在积极开发中。许多人已在日常使用，但功能和设置可能会发生变化。部分更新可能会引发问题或改变功能的工作方式。

## 安装 WebLibre

WebLibre 需要 Android 8.0 或更高版本。推荐 Android 13 或更高版本。在 Android 12 及更早版本上，你可能会遇到显示问题。

<p align="center">
  <a href="https://github.com/FaFre/WebLibre/releases">
    <img height="90" alt="Get WebLibre from GitHub" src="https://docs.weblibre.eu/weblibre/_images/badges/github.png">
  </a>
  <a href="https://f-droid.org/en/packages/eu.weblibre.gecko/">
    <img height="90" alt="Get WebLibre on F-Droid" src="https://docs.weblibre.eu/weblibre/_images/badges/fdroid.png">
  </a>
  <a href="https://play.google.com/store/apps/details?id=eu.weblibre.gecko">
    <img height="90" alt="Get WebLibre on Google Play" src="https://docs.weblibre.eu/weblibre/_images/badges/google_play.png">
  </a>
</p>

- **[GitHub Releases](https://github.com/FaFre/WebLibre/releases)** - 直接下载；[Obtainium](https://obtainium.imranr.dev/) 可管理更新。大多数当前设备使用 `arm64-v8a` APK；`armeabi-v7a` 适用于较旧的 32 位设备。
- **[Google Play](https://play.google.com/store/apps/details?id=eu.weblibre.gecko)** - 通过 Google Play 自动更新。
- **[F-Droid](https://f-droid.org/en/packages/eu.weblibre.gecko/)** - F-Droid 自行构建和签名。由于构建流程复杂且需 F-Droid 团队人工审核，新版本可能比 GitHub 或 Google Play 晚很多。

> [!WARNING]
> 你无法在 F-Droid 构建和 GitHub/Google Play 构建之间直接切换，因为它们使用不同的签名密钥——你必须先卸载当前版本，这会删除你的数据。
>
> 卸载前，请创建加密的[配置文件备份](https://docs.weblibre.eu/weblibre/profiles.html#_back_up_a_profile)。使用**更改备份目录**将备份保存到 WebLibre 应用存储之外的位置，然后验证备份。

### 验证下载

你可以使用 `apksigner verify --print-certs` 验证 APK 是否为官方构建。SHA-256 证书指纹为：

- **GitHub Releases / Google Play:**

  ```text
  8F:52:6E:1E:53:D6:BD:4D:FB:F4:F4:B9:3C:2A:91:EC:B5:CB:8D:A5:E1:4A:D9:4C:25:70:E1:E3:C7:13:52:7F
  ```

- **F-Droid**（由 F-Droid 使用其自己的密钥签名）:

  ```text
  BB:2A:97:F5:61:53:35:C9:E5:7C:86:6F:1C:30:ED:4F:D7:D7:BD:DC:BC:BC:06:68:FE:93:A5:79:17:3D:3D:2D
  ```

## 新手上路

首次启动时，选择适合你的设置方式：

- **快速开始** 应用推荐的默认设置并自动安装 uBlock Origin。
- **自定义设置** 让你选择搜索引擎、DNS over HTTPS、布局、加固、设备端 AI 和扩展选项。
- **从备份恢复** 在设置前导入已有的加密 WebLibre 配置文件。

安装后，以下指南帮助你最快上手：

- **[首次启动指南](https://docs.weblibre.eu/weblibre/getting-started.html)** - 了解每个首次启动选项（快速开始、自定义设置、从备份恢复）的作用。
- **[隐私检查](https://docs.weblibre.eu/weblibre/quick-start.html)** - 设置后审视最重要的隐私设置。
- **[从其他浏览器迁移](https://docs.weblibre.eu/weblibre/migration.html)** - 分阶段导入书签和浏览习惯。
- **[常用操作指南](https://docs.weblibre.eu/weblibre/workflows.html)** - 学习日常任务和进阶操作流程。

## WebLibre 的与众不同之处

### 可调节的隐私控制

新安装默认启用严格的跟踪保护。WebLibre 还包括 DNS over HTTPS、仅 HTTPS 保护、URL 跟踪参数清除、全局隐私控制、指纹防御、站点隔离、用于其他应用打开链接的 Intent 守门人，以及可选的截图保护。

每个隐私设置都可以更改。更强的保护可能会影响部分网站的正常使用，因此你可以为特定网站添加例外或使用较宽松的模式。

**了解更多：** [隐私概览](https://docs.weblibre.eu/weblibre/privacy/overview.html) | [威胁模型](https://docs.weblibre.eu/weblibre/threat-model.html)

### 标签页、容器和配置文件

- 打开**常规**、**私密**或**隔离**标签页。每个隔离标签页与其他所有标签页拥有独立的会话。与私密标签页不同，隔离标签页在退出并重新打开 WebLibre 后仍然保持。
- 以列表、网格或树形视图组织标签页，支持父子关系、堆叠、筛选、固定、批量操作和快速切换器。
- 使用**容器**区分不同活动，并自动将网站分配到对应容器。
- 在容器上启用 **Cookie 隔离**，使其拥有独立的 Cookie、登录状态和站点数据，还可选择添加退出时清除规则或按容器的 Tor/代理路由。
- 创建独立的**配置文件**，拥有独立的标签页、书签、历史、登录信息、扩展、订阅源和设置。配置文件可备份并使用兼容的 Android 设备认证进行保护。

**了解更多：** [标签页管理](https://docs.weblibre.eu/weblibre/tabs/tab-management.html) | [容器](https://docs.weblibre.eu/weblibre/tabs/containers.html) | [配置文件](https://docs.weblibre.eu/weblibre/profiles.html)

### 内置 Tor 和代理路由

WebLibre 内置 Tor，无需单独的 Tor 应用。可通过 Tor 路由常规浏览、私密标签页或选定的 Cookie 隔离容器，需要时还可使用 obfs4 和 Snowflake 等网桥。

内置代理客户端支持 SOCKS、HTTP、WireGuard、Shadowsocks 等[十余种协议](https://docs.weblibre.eu/weblibre/proxy.html)。可手动创建连接，或从订阅、二维码、WireGuard 文件和 sing-box JSON 导入。

**了解更多：** [Tor 集成](https://docs.weblibre.eu/weblibre/tor.html) | [代理连接](https://docs.weblibre.eu/weblibre/proxy.html)

### Firefox 兼容的扩展

在引导过程中安装 uBlock Origin，在 WebLibre 的应用内商店发现附加组件，使用自定义集合，或安装本地 `.xpi` 文件。已安装的扩展可以在浏览器内更新、配置和固定到工具栏。

并非所有桌面版 Firefox 扩展都能在 Android 上良好运行。依赖桌面专属界面的附加组件可能受限，未签名的扩展仅应从你信任的来源安装。

**了解更多：** [扩展](https://docs.weblibre.eu/weblibre/extensions.html)

### 先本地搜索，再搜索网络

地址栏可以在向网络搜索引擎发送查询之前，搜索已打开的标签页、书签、已保存的订阅源文章、历史记录和热门站点。本地搜索索引还可以在设备上索引你访问页面的文本，支持对私密标签页、个别容器和索引删除的精细控制。

Bang 提供者和自定义搜索引擎让你将查询直接发送到特定网站。本地结果始终保留在你的设备上。如果启用了网络自动补全，部分文本会发送到你选择的建议提供者；提交网络搜索时，完整查询会发送到你选择的搜索引擎。

**了解更多：** [个人本地搜索](https://docs.weblibre.eu/weblibre/search/local-search.html) | [Bang 提供者](https://docs.weblibre.eu/weblibre/search/bangs.html)

### 阅读与组织工具

- **设备端 AI** 可以根据打开的标签页标题建议容器草稿和名称。它是可选的，在更改任何内容之前需要确认，并可能下载模型到你的手机。
- **页面翻译** 在下载所需语言模型后在设备端翻译支持的语言。
- **阅读模式**、PDF/Markdown/全页导出、二维码扫描器和可安装的 Web 应用均已内置。
- **RSS/Atom 订阅源**和 Small Web 发现帮助你关注和发现独立站点。
- **Firefox Sync** 可以在你的其他设备间同步标签页、书签和历史。

**了解更多：** [设备端 AI](https://docs.weblibre.eu/weblibre/on-device-ai.html) | [内容工具](https://docs.weblibre.eu/weblibre/reader-mode.html) | [完整文档](https://docs.weblibre.eu/)

## 文档与社区

完整用户文档可在 **[docs.weblibre.eu](https://docs.weblibre.eu/)** 查看。

- **[故障排除](https://docs.weblibre.eu/weblibre/troubleshooting.html)** - 修复常见问题并了解如何提交 Bug 报告。
- **[反馈平台](https://feedback.weblibre.eu/)** - 提出建议并为功能投票。
- **[Matrix 聊天](https://matrix.to/#/#weblibre:unredacted.org)** - 提问并与社区交流。
- **[GitHub Issues](https://github.com/FaFre/WebLibre/issues)** - 报告可复现的 Bug 并跟踪开发进展。

## 支持项目

- **[WebLibre 支持者](https://docs.weblibre.eu/weblibre/supporter-subscription.html)** - 资助开发并获得 WebLibre Search 和 WebLibre 设置的加密同步。浏览器及其内置隐私控制始终免费。
- **[GitHub Sponsors](https://github.com/sponsors/FaFre)** - 通过 GitHub 赞助开发。
- **[Liberapay](https://liberapay.com/FaFre/donate)** - 定期捐赠。
- **[Ko-fi](https://ko-fi.com/FaFre)** - 一次性捐赠。

<p align="center">
  <a href="https://liberapay.com/FaFre/donate"><img alt="Donate with Liberapay" src="https://docs.weblibre.eu/weblibre/_images/badges/liberapay.svg"></a>
  <a href="https://ko-fi.com/FaFre"><img alt="Donate with Ko-fi" src="https://docs.weblibre.eu/weblibre/_images/badges/kofi.svg"></a>
  <a href="https://github.com/sponsors/FaFre"><img alt="Donate with GitHub Sponsors" src="https://docs.weblibre.eu/weblibre/_images/badges/github_sponsors.svg"></a>
  <a href="#monero"><img alt="Donate with Monero" src="https://docs.weblibre.eu/weblibre/_images/badges/monero.svg"></a>
  <a href="#litecoin"><img alt="Donate with Litecoin" src="https://docs.weblibre.eu/weblibre/_images/badges/litecoin.svg"></a>
</p>

### Monero

```text
89rpdkq1XJYJYUshjF23YZhJdNEpghrQTXnz7vxnrLVHGrrqXTZ6BdKbqgyQnNZCkxTDA4RfhDsUcF6eHAAqco4WDQR2cZF
```

### Litecoin

```text
ltc1q0dtutc9zgkvffevwsz7s87379puk37hwn4un94
```

## 许可证

WebLibre 是自由软件，基于 [GNU Affero General Public License v3.0](COPYING) 许可。
