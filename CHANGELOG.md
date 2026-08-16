## 0.20.0
### GeckoView 152.0.4

This is the largest WebLibre release to date, consolidating fifteen alpha releases since v0.11.0. It introduces a full proxy management system, a local full-text search index, configurable touch gestures, a redesigned tab switcher with vertical side rails, container-aware history, and a major desktop mode overhaul.

## Highlights

- **Proxy Management** — sing-box powered proxy profiles with per-container and global routing
- **Local Search Index** — full-text search of the pages you visit, entirely on-device
- **Touch Gestures** — draw gestures on web pages to navigate and control tabs
- **Tab Stacking** — redesigned quick tab switcher with new Accordion and Two Rows layouts
- **Vertical Side Rail** — place the tab bar on the left or right edge of the screen
- **Container-Aware History** — see and filter which container a visit came from
- **Desktop Mode Overhaul** — global, per-site, and per-tab desktop mode control
- **Pure Black (OLED) Theme** — true black backgrounds in app and reader mode
- **Engine Upgrade** — Mozilla Components / GeckoView 152.0.4

## Proxy Management (New)

- **Sing-box proxy profiles** — Create and manage custom proxy connections supporting SOCKS, HTTP, Shadowsocks, VMess, VLESS, Trojan, Hysteria, Hysteria2, TUIC, SSH, WireGuard, ShadowTLS, and AnyTLS. Each profile runs its own managed tunnel with live status indicators, latency chips, and IP display.
- **Six ways to import** — Manual configuration, subscription URLs, QR code scan, clipboard paste (auto-detects `ss://`, `vmess://`, `trojan://` and similar URIs), WireGuard config files, or raw sing-box JSON outbounds.
- **Per-container proxy routing** — Assign any proxy profile or Tor to a specific container; tabs in that container route through the assigned proxy.
- **Global proxy routing** — Route all regular tabs through a single proxy, with a separate assignment for private tabs. Individual containers can bypass the global proxy to connect directly.
- **Profile management screen** — All profiles (including Tor) with protocol badges, run/stop toggles, latency testing, and a "Stop All" button.
- **Per-request DNS leak protection** — DNS leak guarding runs per-request and per-container inside the proxy layer.
- **Profile sharing and logs** — Export profiles as `weblibre-proxy://` URIs, and inspect the sing-box runtime with a real-time log viewer.

## Local Search Index (New)

- **Full-text search of browsed pages** — Visited pages are indexed locally, enabling on-device content search without sending any data off your device.
- **Fine-grained control** — Toggle the index globally, choose whether private tabs are indexed, and exclude individual containers. Excluded containers have their history removed from the index immediately.
- **Index management** — See how many pages are indexed and clear the index at any time while keeping your history. Stale entries are pruned automatically.

## Containers

- **Strict Mode** — Restrict a container so only its assigned sites can load there; unassigned sites are blocked. Requires cookie isolation.
- **Exclude from History** — Prevent a container's visits from being recorded in browsing history (separate from the search index opt-out). Requires cookie isolation.
- **Icon picker** — Choose from over 5,000 Material Design Icons for container branding, shown in the container bar, lists, and tab indicators.
- **Custom colors** — In addition to the refreshed standard palette, a custom color picker with hex and HSL controls is available, applied consistently across chips, lists, selectors, and tab UI.
- **Pinning and reordering** — Pin containers to keep them at the top of lists, and long-press-drag chips in the bottom bar to reorder them.
- **Redesigned management UI** — The container list, selection sheet, and editor were overhauled with card layouts, tab counts, proxy info, and privacy badges.

## Container-Aware History

- History entries can now display which container a visit came from, and the History screen can be filtered by container.
- With a container filter active, clearing history only clears that container's history.
- Deleting a container offers to also delete its history; otherwise those visits are kept without a container label.
- Note: existing history is not retroactively assigned to containers; labels apply to newly recorded visits and are local to WebLibre.

## Tabs and Tab Switching

- **Tab Stacking** — The quick tab switcher was redesigned and is configured under Settings > Toolbar Layout > Tab Stacking, with new layouts:
  - **Accordion** — containers as chips, expanding the selected container inline
  - **Two Rows** — the selected container's tabs on one row, recently used tabs on another
  - Plus the existing Recently Used Tabs, Container Tabs, and Disabled modes. Existing settings are migrated automatically.
- **Vertical side rail** — The tab bar can be placed on the left or right edge as a vertical rail with address controls, toolbar actions, and pinned add-ons. Swipe vertically on the rail to switch tabs.
- **Customizable switcher buttons** — Choose which action buttons appear at the end of the tab switcher bar, configured independently from the contextual toolbar.
- **Tab hierarchy tools** — Long-press a tab for a Hierarchy submenu (change parent, detach, reorder among siblings). Drag-and-drop can group two tabs in a new container or establish a parent-child relationship. Manual reorganizations are preserved and no longer overwritten by engine state.
- **Depth indicators** — Nested tabs show chevron badges revealing nesting depth, with configurable depth display and compact badges on narrow layouts.
- **Switcher polish** — Drag-to-reorder in the switcher, container-colored tab bar, tab counts on container chips, optional close buttons on every chip, reliable centering of the active tab, and clearer marking of pinned, private, isolated, and nested tabs.
- **Faster, safer startup restore** — Restored tabs appear earlier as placeholder chips while the engine finishes restoring; tapping one queues the selection. Saved tab data is only cleaned up after the engine confirms restore is complete.

## Touch Gestures (New)

- Draw gestures on web pages to navigate, control tabs, and trigger page actions. Off by default; enable under Settings > Gestures.
- A stroke interval setting prevents accidental triggers from fast, jittery movements.
- Pull-to-refresh no longer accidentally triggers on gesture strokes near the top of the page.
- Long-press the gestures toggle in the browser menu to jump straight to gesture settings.

## Desktop Mode

- **Global desktop mode** — "Always Request Desktop Site" under Settings > Browsing > Desktop Mode applies to every tab, including already-open ones.
- **Per-site desktop mode** — Maintain a list of sites that always load in desktop mode, regardless of the global setting. Add sites from the page menu or manage the list in settings. Subdomains are covered automatically.
- Per-tab toggling continues to work as before and takes precedence.

## Reader Mode

- **True black (AMOLED) reader theme** — With Pure Black enabled, the reader's dark theme is genuine black.
- **Refreshed article layout** — Improved spacing and typography, edge-to-edge images, nicer quotes and lists, and properly wrapped code blocks.
- The appearance button now toggles open/closed, appearance controls no longer hide behind the bottom toolbar, and a "show toolbar" button is available while reading with the toolbar hidden.

## Appearance and Home Screen

- **Pure Black (OLED)** — Settings > General > Pure Black switches dark mode backgrounds to true black, saving battery on OLED screens.
- **Refresh Rate setting** — System, High, or Low under Settings > General; High (the default) makes scrolling smoother on 90/120 Hz displays, Low reduces battery usage. Android-only, depends on device support.
- **System bar tinting** — Status and navigation bar areas match the active container or toolbar color, with icon contrast adjusted automatically.
- **Reworked home screen** — Quick actions (New tab, View tabs, Resume last tab) moved near the top, plus a dismissible "Support WebLibre" banner explaining the optional Supporter subscription. The browser and all privacy features remain free.
- **New app icon** — Refreshed launcher icon including adaptive and monochrome variants.
- "Top Sites" has been renamed to "Shortcuts" throughout the app.
- Optional close button on the new tab / search screen (Settings > General > Show Close Button), handy on e-ink devices.

## Search and Bangs

- **Popular Sites suggestions** — The search screen and address bar autocomplete now suggest well-known websites, so even a fresh install completes "git" to "github.com".
- **Reverse bang matching** — Pasting a URL produced by a bang search (for example a Google search result URL) recognizes the bang template and swaps the URL for the extracted query with the bang pre-selected.
- **Bang robustness** — Bangs match correctly across `www.`, bare, and `m.` domain variants; custom bang editing handles URL encoding safely and trims accidental whitespace; typed text is preserved when switching search providers; selecting a bang highlights the existing query for quick replacement.
- **Find in page integration** — Tapping a search result from history or the local index prompts to find that text on the page instead of opening the find bar uninvited.
- An "Autocomplete on Submit" setting accepts inline suggestions when pressing Enter.

## Privacy and Security

- **Expanded hardening** — Over 30 additional telemetry, experiment, and tracking preferences are locked against upstream Gecko updates silently re-enabling them. Locked settings show a padlock icon.
- **Private tabs notification** — A persistent notification appears while private tabs are open; tapping or swiping it closes them all.
- **Better .onion handling** — Onion addresses typed without a scheme open over `http://`, and HTTPS upgrades are no longer forced for onion services (explicitly typed `https://` onion addresses keep HTTPS).
- **Tracking protection** — Custom Tracking Protection gains a separate switch for ads, analytics, and social trackers, plus a Content Blocking Database option for GeckoView's built-in blocklists (requires restart).
- **Recent searches cleanup** — Recent searches can be cleared when deleting browsing data and included in the automatic Incognito Mode cleanup.
- **Referer policy compatibility** — The strictest cross-origin referer mode is now an advanced opt-in instead of the default, fixing breakage on sites that depend on referer information.
- **New lock option** — "Lock on Startup Only" unlocks a protected profile once at app start instead of on every background or timeout.
- The Android "install unknown apps" permission was removed from the manifest.

## Extensions

- **Bookmark access for extensions** — Extensions such as floccus can now read and organize bookmarks, with instant change notifications — unique among mobile Gecko browsers.
- Pinned extensions no longer appear duplicated in the overflow menu, and disabled extensions are hidden from the toolbar and shortcut menu.

## Browser Behavior

- **Custom Tabs toggle** — Decide whether other apps open links in a lightweight in-app tab or as a normal tab in the main browser (enabled by default).
- **Reload doubles as stop** — The reload button shows an X during page load; tap it to cancel loading.
- **Connections menu** — Tor and proxy controls are grouped in a collapsible Connections section of the browser menu with a connected count and quick access to management. The browser menu quick toggles use a segmented control.
- **Improved Picture-in-Picture** — Fullscreen video behaves reliably when pressing Home, switching apps, or returning to WebLibre; accidental PiP triggers from permission prompts are fixed.
- **Site data clearing** — "Clear Site Data" can optionally close the current tab after clearing.
- Link context menus can open a link as a different tab type (regular, private, or isolated).

## Downloads

- Completion and failure snackbars, with an "Open" action to launch finished files.
- Tapping a download in history opens it with the appropriate system app.
- Correct filename resolution, saving downloads to the system Downloads directory with proper names.

## Settings

- **Global settings search** — Search across all categories from the main Settings screen; results show breadcrumbs, and tapping one navigates, auto-scrolls, and highlights the exact entry.
- New top-level Proxy category, an ML Downloads entry in Advanced Settings to clear downloaded AI models, and remembered bookmark list preferences (sorting and folders-only view).

## Tor

- **Service reliability overhaul** — Fixed race conditions in service binding, proper foreground service lifecycle, bootstrap polling fallback, and pluggable transport (obfs4, snowflake) port readiness polling. Tor now survives hot restarts and engine reconnections.
- Updated Tor components with newer upstream fixes.

## Platform and Performance

- **Engine upgrade** — Mozilla Components / GeckoView 152.0.4 with newer web compatibility, performance improvements, and upstream fixes.
- **Impeller graphics engine** re-enabled for smoother rendering and animations.
- **Smaller, faster builds** — Release builds use code and resource shrinking (R8 optimization).
- **Reduced background work** — Browser screenshot work is skipped while full-screen panels (Settings, Search, Tabs) are open, and an advanced option can unload the web engine under full-screen overlays to free resources.
- **Samsung and gesture navigation fixes** — System back gestures no longer cause unwanted page scrolls, and the home screen search widget is resizable with correct sizing.
- **Better multi-window support** — Split-screen, freeform, and pop-up window resizing works smoothly, with taps landing in the right place.
- Cold-start intent replay makes sharing links to WebLibre reliable even when the app was not running, and improved compatibility with older Android versions.

## Notable Fixes

- Fixed broken navigation after cancelling an "open in app" prompt.
- Fixed tab churn when a site is assigned to a container: tabs already in the correct container are left alone.
- Fixed site-assigned containers not taking precedence over the currently selected container, including for shared content.
- Fixed tab hierarchy and parent relationships being lost to engine race conditions.
- Fixed keyboard and auto-hiding toolbar layout issues, including the toolbar getting stuck after keyboard changes.
- Fixed custom tab toolbar sizing, reappearance, and color scheme issues.
- Fixed the QR scanner to request camera permission up front and fail gracefully when denied.
- Fixed PWA popup and window-open handling for login and payment flows, and rare failures when reopening an existing web app window.

## Upgrade Notes

- Existing Quick Tab Switcher settings are migrated to the new Tab Stacking options automatically; new installs default to Accordion when container UI is enabled.
- Existing browsing history is not retroactively assigned to containers.
- The Content Blocking Database setting requires an app restart to take effect.
- Container Strict Mode and Exclude from History both require cookie isolation to be enabled for the container.

---

> **中文翻译**

这是迄今为止 WebLibre 规模最大的版本，整合了自 v0.11.0 以来的十五个 Alpha 版本。本版本引入了完整的代理管理系统、本地全文搜索索引、可配置的触摸手势、重新设计的标签页切换器（带侧边竖轨）、容器感知历史记录，以及桌面模式的大幅改进。

## 亮点

- **代理管理** — 基于 sing-box 的代理配置，支持按容器和全局路由
- **本地搜索索引** — 全文搜索你访问过的页面，完全在设备端运行
- **触摸手势** — 在网页上手绘手势来导航和控制标签页
- **标签页堆叠** — 重新设计的快速标签页切换器，新增折叠和双行布局
- **竖向侧轨** — 将标签栏放置在屏幕左缘或右缘
- **容器感知历史** — 查看并筛选访问记录来自哪个容器
- **桌面模式改进** — 全局、按站点和按标签页的桌面模式控制
- **纯黑（OLED）主题** — 应用和阅读模式中的真黑背景
- **引擎升级** — Mozilla Components / GeckoView 152.0.4

## 代理管理（新增）

- **sing-box 代理配置** — 创建和管理自定义代理连接，支持 SOCKS、HTTP、Shadowsocks、VMess、VLESS、Trojan、Hysteria、Hysteria2、TUIC、SSH、WireGuard、ShadowTLS 和 AnyTLS。每个配置运行独立的管理隧道，带有实时状态指示、延迟显示和 IP 信息。
- **六种导入方式** — 手动配置、订阅 URL、二维码扫描、剪贴板粘贴（自动识别 `ss://`、`vmess://`、`trojan://` 等链接）、WireGuard 配置文件，或原始 sing-box JSON 出站配置。
- **按容器代理路由** — 将任意代理配置或 Tor 分配给特定容器；该容器中的标签页通过指定代理路由流量。
- **全局代理路由** — 所有常规标签页通过同一代理路由，私密标签页可单独指定。个别容器可绕过全局代理直连。
- **配置管理界面** — 所有配置（包括 Tor）显示协议标识、启停开关、延迟测试和"全部停止"按钮。
- **逐请求 DNS 泄漏保护** — DNS 泄漏防护在代理层按请求和按容器运行。
- **配置分享与日志** — 将配置导出为 `weblibre-proxy://` 链接，并通过实时日志查看器检查 sing-box 运行状态。

## 本地搜索索引（新增）

- **已浏览页面的全文搜索** — 访问过的页面在本地建立索引，支持设备端内容搜索，无需将任何数据发送到外部。
- **精细控制** — 可全局开关索引、选择是否索引私密标签页、排除个别容器。被排除容器的索引历史会立即清除。
- **索引管理** — 查看已索引的页面数量，随时清除索引同时保留历史记录。过期条目自动清理。

## 容器

- **严格模式** — 限制容器只加载已分配的站点；未分配的站点将被阻止。需要启用 Cookie 隔离。
- **排除历史记录** — 阻止容器的访问记录被写入浏览历史（与搜索索引排除独立设置）。需要启用 Cookie 隔离。
- **图标选择器** — 从超过 5000 个 Material Design 图标中选择容器图标，显示在容器栏、列表和标签页指示器中。
- **自定义颜色** — 除了更新的标准调色板外，还提供带十六进制和 HSL 控制的自定义颜色选择器，统一应用于标签、列表、选择器和标签页界面。
- **固定与排序** — 固定容器使其始终排在列表顶部，长按拖动底部栏中的标签可重新排序。
- **重新设计的管理界面** — 容器列表、选择面板和编辑器全面改进，采用卡片布局，显示标签页数量、代理信息和隐私标识。

## 容器感知历史

- 历史记录现在可以显示访问来自哪个容器，历史界面可按容器筛选。
- 启用容器筛选时，清除历史仅清除该容器的历史。
- 删除容器时可选择同时删除其历史；否则这些访问记录保留但不带容器标签。
- 注意：现有历史不会追溯分配到容器；标签仅适用于新记录的访问，且仅在 WebLibre 本地生效。

## 标签页与标签页切换

- **标签页堆叠** — 快速标签页切换器重新设计，在设置 > 工具栏布局 > 标签页堆叠中配置，新增布局：
  - **折叠式** — 容器显示为标签，内联展开选中的容器
  - **双行** — 选中容器的标签页显示在一行，最近使用的标签页在另一行
  - 以及已有的最近使用标签页、容器标签页和禁用模式。现有设置自动迁移。
- **竖向侧轨** — 标签栏可放置在屏幕左缘或右缘，作为竖轨显示，包含地址控件、工具栏操作和已固定的附加组件。在侧轨上垂直滑动可切换标签页。
- **可自定义的切换器按钮** — 选择标签页切换器栏末尾显示哪些操作按钮，独立于上下文工具栏配置。
- **标签页层级工具** — 长按标签页弹出层级子菜单（更改父级、分离、在同级间排序）。拖放可将两个标签页分组到新容器或建立父子关系。手动调整会被保留，不再被引擎状态覆盖。
- **深度指示器** — 嵌套标签页显示箭头标识揭示嵌套深度，深度显示可配置，窄屏布局下使用紧凑标识。
- **切换器细节打磨** — 切换器中拖拽排序、容器配色的标签栏、容器标签上的标签页数量、每个标签可选关闭按钮、活动标签页可靠居中，以及对固定、私密、隔离和嵌套标签页更清晰的标记。
- **更快更安全的启动恢复** — 恢复的标签页更早以占位标签形式出现，引擎完成恢复后才会清理保存的标签数据；点击占位标签会排队等待选中。

## 触摸手势（新增）

- 在网页上手绘手势来导航、控制标签页和触发页面操作。默认关闭；在设置 > 手势中启用。
- 笔画间隔设置可防止快速、抖动动作的误触发。
- 下拉刷新不再因页面顶部附近的手势笔画而误触发。
- 长按浏览器菜单中的手势开关可直接跳转到手势设置。

## 桌面模式

- **全局桌面模式** — 设置 > 浏览 > 桌面模式中的"始终请求桌面版网站"适用于所有标签页，包括已打开的。
- **按站点桌面模式** — 维护一个始终以桌面模式加载的网站列表，不受全局设置影响。可从页面菜单添加站点或在设置中管理列表。子域名自动覆盖。
- 按标签页切换继续像以前一样工作并优先。

## 阅读模式

- **真黑（AMOLED）阅读主题** — 启用纯黑模式后，阅读的暗色主题变为真正的黑色。
- **改进的文章布局** — 优化的间距和排版、全宽图片、更美观的引用和列表，以及正确换行的代码块。
- 外观按钮现在切换开/关状态，外观控件不再隐藏在底部工具栏后面，工具栏隐藏时阅读可使用"显示工具栏"按钮。

## 外观与主屏幕

- **纯黑（OLED）** — 设置 > 通用 > 纯黑将暗色模式背景切换为真黑，在 OLED 屏幕上节省电量。
- **刷新率设置** — 在设置 > 通用下可选系统、高或低；高（默认）使 90/120Hz 显示屏上滚动更流畅，低则减少耗电。仅限 Android，取决于设备支持。
- **系统栏着色** — 状态栏和导航栏区域匹配活动容器或工具栏颜色，图标对比度自动调整。
- **主屏幕重构** — 快捷操作（新建标签页、查看标签页、恢复上个标签页）移至顶部附近，加上可关闭的"支持 WebLibre"横幅说明可选的订阅支持。浏览器及所有隐私功能保持免费。
- **新应用图标** — 更新的启动图标，包含自适应和单色变体。
- "常用站点"在整个应用中更名为"快捷方式"。
- 新标签页/搜索屏幕可选关闭按钮（设置 > 通用 > 显示关闭按钮），适用于电子墨水设备。

## 搜索与 Bang

- **热门站点建议** — 搜索屏幕和地址栏自动补全现在会建议知名网站，即使全新安装也能将"git"补全为"github.com"。
- **反向 Bang 匹配** — 粘贴 Bang 搜索产生的 URL（如 Google 搜索结果 URL）时，会识别 Bang 模板并将 URL 替换为提取的查询，同时预选 Bang。
- **Bang 健壮性** — Bang 在 `www.`、裸域名和 `m.` 域名变体间正确匹配；自定义 Bang 编辑安全处理 URL 编码并修剪多余空格；切换搜索引擎时保留已输入文本；选择 Bang 时高亮现有查询以便快速替换。
- **页内查找集成** — 从历史或本地索引点击搜索结果时，会提示在页面上查找该文本，而不是未经邀请直接打开查找栏。
- "提交时自动补全"设置在按回车时接受内联建议。

## 隐私与安全

- **扩展加固** — 超过 30 个额外的遥测、实验和跟踪偏好被锁定，防止上游 Gecko 更新静默重新启用它们。锁定的设置显示挂锁图标。
- **私密标签页通知** — 私密标签页打开时显示持续通知；点击或滑动可关闭所有私密标签页。
- **更好的 .onion 处理** — 不带协议输入的 onion 地址通过 `http://` 打开，不再强制对 onion 服务进行 HTTPS 升级（显式输入的 `https://` onion 地址保持 HTTPS）。
- **跟踪保护** — 自定义跟踪保护新增广告、分析程序和社交媒体跟踪器的独立开关，以及 GeckoView 内置拦截列表的内容拦截数据库选项（需重启）。
- **最近搜索清理** — 删除浏览数据时可清除最近搜索，并可纳入无痕模式自动清理范围。
- **Referer 策略兼容性** — 最严格的跨域 Referer 模式现在改为高级可选选项而非默认值，修复了依赖 Referer 信息的网站兼容性问题。
- **新锁定选项** — "仅启动时锁定"在应用启动时解锁受保护的配置文件一次，而非每次后台返回或超时时都解锁。
- Android "安装未知应用"权限已从清单中移除。

## 扩展

- **扩展书签访问** — 如 floccus 等扩展现在可以读取和组织书签，并带有即时变更通知 — 在移动端 Gecko 浏览器中独此一家。
- 已固定的扩展不再在溢出菜单中重复显示，已禁用的扩展从工具栏和快捷菜单中隐藏。

## 浏览器行为

- **自定义标签页开关** — 决定其他应用是在轻量级应用内标签页中打开链接，还是在主浏览器中作为普通标签页打开（默认启用）。
- **刷新兼停止** — 页面加载时刷新按钮显示为 X；点击可取消加载。
- **连接菜单** — Tor 和代理控件归组到浏览器菜单中可折叠的连接区域，显示已连接数量并可快速访问管理。浏览器菜单快捷开关使用分段控件。
- **改进的画中画** — 全屏视频在按 Home 键、切换应用或返回 WebLibre 时表现可靠；修复了权限提示误触发画中画的问题。
- **站点数据清除** — "清除站点数据"可在清除后选择关闭当前标签页。
- 链接上下文菜单可以以不同的标签页类型（常规、私密或隔离）打开链接。

## 下载

- 完成和失败通知，带有"打开"操作可启动已完成的文件。
- 在历史中点击下载项可使用相应的系统应用打开。
- 正确的文件名解析，将下载保存到系统下载目录并使用正确的文件名。

## 设置

- **全局设置搜索** — 从主设置屏幕搜索所有类别；结果显示面包屑导航，点击即可跳转、自动滚动并高亮确切条目。
- 新增顶级代理类别、高级设置中的 ML 下载条目（用于清除已下载的 AI 模型），以及记住的书签列表偏好（排序和仅文件夹视图）。

## Tor

- **服务可靠性改进** — 修复了服务绑定中的竞态条件、正确的前台服务生命周期、引导轮询回退，以及可插拔传输（obfs4、snowflake）端口就绪轮询。Tor 现在可在热重启和引擎重连后继续运行。
- 更新了 Tor 组件，包含较新的上游修复。

## 平台与性能

- **引擎升级** — Mozilla Components / GeckoView 152.0.4，带来更好的网页兼容性、性能改进和上游修复。
- **Impeller 图形引擎** 重新启用，渲染和动画更流畅。
- **更小更快的构建** — 发布版本使用代码和资源缩减（R8 优化）。
- **减少后台工作** — 全屏面板（设置、搜索、标签页）打开时跳过浏览器截图工作，高级选项可在全屏覆盖下卸载网页引擎以释放资源。
- **三星和手势导航修复** — 系统返回手势不再导致不必要的页面滚动，主屏幕搜索小组件可调整大小且尺寸正确。
- **更好的多窗口支持** — 分屏、自由窗口和弹出窗口调整大小流畅，点击落在正确位置。
- 冷启动 Intent 重放使分享链接到 WebLibre 在应用未运行时也可靠，并改进了与旧版 Android 的兼容性。

## 重要修复

- 修复了取消"在应用中打开"提示后导航失效的问题。
- 修复了站点分配到容器时标签页频繁切换的问题：已在正确容器中的标签页保持不变。
- 修复了已分配站点的容器未优先于当前选中容器的问题，包括共享内容。
- 修复了标签页层级和父子关系因引擎竞态条件而丢失的问题。
- 修复了键盘和自动隐藏工具栏的布局问题，包括键盘变化后工具栏卡住的问题。
- 修复了自定义标签页工具栏尺寸、重现和配色方案问题。
- 修复了二维码扫描器预先请求摄像头权限并在被拒绝时优雅失败。
- 修复了 PWA 弹窗和窗口打开处理登录和支付流程的问题，以及重新打开已有 Web 应用窗口时偶发的失败。

## 升级须知

- 现有的快速标签页切换器设置会自动迁移到新的标签页堆叠选项；新安装默认使用折叠式（当容器界面启用时）。
- 现有的浏览历史不会追溯分配到容器。
- 内容拦截数据库设置需要重启应用才能生效。
- 容器严格模式和排除历史记录都需要为容器启用 Cookie 隔离。

## 0.11.0
### GeckoView 150.0.1

**Extension Management**

- **Redesigned Extensions System** — The entire add-on system has been rebuilt, replacing the legacy native Android screens with a smoother in-app experience. Browse, search, install, and manage extensions all within the app.
- **Add-on Store** — Discover recommended extensions directly in the app with segmented categories and a streamlined install flow.
- **Add-on Detail Screens** — View permissions, internal settings, and popups for each extension without leaving the app.
- **Pinned Add-on Bar** — Quick-access bar in the browser toolbar for your favorite extensions, with bottom-sheet popups.
- **Update All Extensions** — One-tap button to check for and install updates for all your installed extensions at once.
- **uBlock Origin Filter List Management** — Browse, enable, and disable individual uBlock Origin filter lists. Add custom external filter lists and apply recommended hardening filters for extra privacy.

**Privacy & Security**

- **Intent Gatekeeper** — When another app tries to open a link, WebLibre can now ask whether to allow or block it. Manage per-app permissions and respond from notifications without opening the browser.
- **Screenshot Protection** — New privacy setting to block screenshots and screen recordings of the browser. Find it under Settings > Privacy & Security.
- **Permission Shield Indicators** — The shield icon on your tab now uses colors to show your privacy status: green means enhanced protection, yellow means you've loosened settings for this site, and it's hidden when everything is at default.
- **Third-Party Redirect Blocking** — Enabled by default to protect you from malicious redirects.
- **Smarter Onboarding Defaults** — New users automatically get recommended privacy defaults, including uBlock Origin with optimized filter lists and engine-level privacy hardening.
- **Fixed Site Data Clearing** — Clearing cookies or site data now properly closes affected tabs first, preventing old data from reappearing immediately.

**Tab Management**

- **Tree View Everywhere** — View your tabs in a hierarchical tree structure in List and Grid views too, so you can always see which tabs opened from which.
- **Reorder Tabs in Groups** — Manually reorder tabs within groups for full control over your browsing layout.
- **Auto-Scroll to Active Tab** — The active tab now smoothly scrolls into view when you open any tab view (list, grid, tree, or quick switcher).
- **Pinned Tabs Respected Everywhere** — Pinned tabs now stay at the top in the quick tab switcher and grid view too, not just the list.
- **Quick Tab Switcher Always MRU** — The quick-switcher bar always shows your most recently used tabs first for consistent muscle memory.
- **Container Tab Colors on Title Bar** — When browsing in a container, the address bar now shows a subtle colored border matching your container's theme.
- **New Sorting Options** — Choose whether new tabs appear at the top or bottom (or left/right) of your tab lists.
- **Stronger Session Restore** — A new internal system reduces the chance of duplicate tabs appearing after restart.
- **Isolated Tabs Persist** — Isolated tabs now properly survive quitting the app (only private tabs are cleared on exit).

**PWAs & Home Screen Shortcuts**

- **Custom Names for Shortcuts** — Give your home screen shortcuts any name you want instead of being stuck with the website's default title.
- **Storage Context for Shortcuts** — Choose how each shortcut handles logins and data: normal storage, share with an existing container, inherit your current isolated session, or create a fresh isolated context — perfect for using multiple accounts on the same site.
- **Multiple Shortcuts Per Site** — Pin the same website multiple times with different names and storage contexts (e.g., personal account and work account).
- **Better Shortcut Icons** — Shortcuts now always get an icon, even for sites that don't provide one.
- **Smarter PWA Launches** — Opening a PWA that's already open now brings it to the front instead of starting a duplicate.
- **PWA Session Recovery** — PWAs that lose their session (e.g., after the browser is killed) now automatically recover instead of crashing.

**Export & Sharing**

- **Export Page as Image** — Save any webpage as a PNG image to your device.
- **Copy Images from Image Menu** — Long-press any image to copy it directly to your clipboard.
- **Smarter Text Sharing** — When sharing text or URLs into WebLibre from other apps, they now properly route through containers and custom tabs.

**Search & Navigation**

- **History Toolbar Button** — Optional quick-access button for your browsing history, available from the toolbar customization screen.
- **Better Search Without a Default Engine** — Highlighting text and choosing to search now opens the search screen with your text pre-filled, even if no default engine is set.
- **Fixed Address Bar Ghost Text** — Backspace and delete no longer cause suggestion text to glitch or get corrupted.

**Onboarding & Setup**

- **Restore Backup During Onboarding** — Import an encrypted profile backup right from the welcome screen, before creating any profile.
- **Alpha & Stable Side by Side** — You can now keep both the stable and alpha versions installed at the same time as separate apps, so they don't interfere.
- **Optimized Defaults** — When installing uBlock Origin during setup, you can opt in to recommended privacy filter lists automatically.
- **Automatic Preference Migration** — A new system keeps your settings up to date automatically when new features are added.

**UI & Polish**

- **Redesigned Toolbar Customization** — Toolbar settings now separate buttons into "Enabled" and "Disabled" sections for a clearer overview.
- **Long-Press Menu for Settings** — Long-press the menu button (...) in the toolbar to jump directly to Settings.
- **Quick Quit on Long Press** — Long-press the "Quit" button in the profile menu to exit immediately, skipping the confirmation dialog.
- **Clearer Site Data Options** — The site data cleanup screen now shows Cookies and Cached Files as sub-options under Site Data, making it easier to understand what you're clearing.
- **Unsaved Changes Warning** — Editing a container and pressing back without saving now asks whether to save, discard, or keep editing.
- **Better Keyboard Handling** — The bottom sheet now adjusts to the keyboard height so content is never hidden.
- **Improved URL Display** — URLs are formatted more cleanly with better special character handling.
- **Addon Store Screenshot Viewer** — Tap a screenshot in the addon details page to view it in a zoomable overlay.
- **Proper Quick Action Icons** — The Android launcher long-press shortcuts now show proper icons instead of blank tiles.

**Bug Fixes**

- Fixed ghost text and clipping artifacts in the address bar
- Fixed PWA launch duplication when the app was already open
- Fixed overlapping UI elements when the floating action button is visible
- Fixed tab bar long-press interactions
- Fixed small web mode handling of isolated tab types
- Fixed toolbar preview layout overlapping with the action button

## 0.10.1
### GeckoView 149.0

**New Features**

**Small Web Discovery**
A brand new browsing mode to discover personal blogs, indie creators, and handcrafted websites from around the internet.
- **Kagi Small Web** — Browse curated content from community-vetted sources in 5 modes: Web, Appreciated, Videos, Code, and Comics
- **Wander Network** — Explore a decentralized network where personal websites recommend each other, forming a web of serendipitous discoveries
- **Topic Filters** — Narrow discoveries by 22 categories including AI, Programming, Science, Art & Design, Gaming, Travel, and more
- **Discovery History** — Track and revisit pages you've found, with smart avoidance of recently seen content

**PWA (Progressive Web App) Support**
- Install websites as standalone apps and create home screen shortcuts for quick access
- Enhanced PWA installation dialog with more options
- Fixed PWA display mode detection

**Custom Backup Directory**
- Choose where to store your profile backups — any folder on your device or external storage
- Backups stored outside the app survive reinstallation
- Old backups are automatically migrated when you select a new location
- New "Skip Cache Directories" option significantly reduces backup file size

**Permanent "Allow Unsigned Extensions" Setting**
- Enable unsigned extensions permanently from Settings > Extensions > Security, instead of confirming each time
- Includes security warnings and a confirmation dialog

**Quality of Life**
- Long press on tab bar URL to copy it to clipboard

**Updates**

- **Upgraded browser engine to Gecko 149.0** — Latest performance improvements and security fixes from Mozilla
- **Updated bang data** with spec-enforced bang naming
- **Consolidated bang groups** — The separate "assistant" bang group has been merged into the "kagi" group for simpler management (existing assistant bangs are automatically migrated)

**Bug Fixes**

- Fixed Small Web session occasionally showing stale/empty state after app restart
- Fixed PWA display mode detection
- Thumbnails are no longer captured while in fullscreen mode
- Restored certificate requirement for installing unsigned extensions (security)
- Fixed long press actions incorrectly forwarded in custom tabs
- Show minimal context menu in PWA/custom tabs

## 0.10.0
### GeckoView 148.0.2

**Major New Features**

- **Progressive Web App (PWA) Support** - Install compatible websites directly to your home screen as standalone apps. PWAs open in their own window with their own icon, and remember which profile and container they belong to.

- **Custom Tabs Integration** - Other Android apps can now open links in WebLibre using a lightweight browser overlay. Includes a close button to instantly return to the calling app, with support for private browsing mode.

- **Built-in Page Translation** - Translate any webpage into your preferred language - locally on your device. The browser automatically detects the page language and offers translation options.

- **Firefox Sync** - Connect your Firefox account to sync bookmarks, open tabs, and browsing history across all your devices. Set up via QR code or direct sign-in. Send tabs to your other devices and view tabs open on synced devices.

- **URL Cleaner & Unshortener** - Automatically removes tracking parameters from URLs and reveals the final destination of shortened links. Based on ClearURLs rules with automatic weekly updates.

- **Isolated Tabs** - A new tab type that runs in complete isolation from your other browsing, perfect for sensitive tasks like banking.

- **New Browser Home Screen** - The empty tab screen is now a proper home experience with inspirational quotes, quick actions, and container-aware content.

- **Dedicated Extensions Settings** - New screen to install extensions from local .xpi files and configure custom Mozilla addon collections.

- **Tor Country Picker** - New searchable country picker with flags for selecting Tor entry and exit node countries.

**Search & Navigation**

- **Top Sites Grid** - Your most-visited sites in a customizable grid. Pin favorites, edit titles, drag to reorder, and hide unwanted sites.
- **Customizable Search Modules** - Reorder and toggle search sections (Top Sites, Recent Tabs, History, Bookmarks, Containers).
- **Bookmark Search** - Search your saved bookmarks directly from the search bar.
- **Animated Tab Type Switcher** - Smooth pill-style selector for regular, private, and isolated tabs.

**Export & Share**

- **Print & Export Pages** - Print any webpage or save as PDF. Export page content as Markdown (clean reader content or full page), or copy as Markdown to clipboard.

**Tab Management**

- **Tab Filtering & Sorting** - Filter by type (regular, private, isolated) and sort by title, URL, or date range.
- **Drag-and-Drop Container Creation** - Drag one tab onto another to create a new container with AI-suggested names.
- **Tab List Options** - Show favicons instead of thumbnails, show/hide tab titles in quick switcher.

**Privacy & Security Hardening**

- **Certificate Transparency** - Enforce CT checks and CRLite for certificate revocation.
- **WebGL Privacy** - Spoof renderer and vendor information.
- **WebRTC IP Leak Prevention** - mDNS obfuscation, relay-only mode options.
- **Safe Browsing** - Toggle malware and phishing protection.
- **Geolocation Privacy** - Uses BeaconDB instead of Mozilla's service.
- **API Restrictions** - Battery API, Reporting API, and WebGPU disabled by default.

**New Settings**

- **UI Scale Factor** - Adjust overall interface size.
- **Font Size Control** - Scale web page text from 50% to 300%.
- **Disable Animations** - Reduce motion for accessibility.
- **Experimental Process Isolation** - Isolated content process and App Zygote for enhanced security.
- **Reset All Preferences** - One-tap button to restore all settings to their defaults.

**Customization**

- **Configurable Toolbar Buttons** - Reorder, enable/disable, reset to defaults.
- **Long-Press Actions** - Additional actions on toolbar buttons.

**Improvements**

- **Improved Keyboard Handling** - Better height calculation prevents hidden content.
- **Unified Bottom Sheet Menu** - Navigation drawer replaced with consolidated bottom sheet.
- **Settings Reorganization** - Clearer categories: General, Browsing, Web Content, Search, Extensions, Privacy & Security, Advanced, Experimental.
- **Enhanced Onboarding** - DNS over HTTPS, toolbar customization, and privacy hardening options.

**Removed**

- Navigation drawer (replaced by bottom sheet menu)
- Auto-launch docs after onboarding
- Dismiss confirmation on bottom app bar

## 0.9.32
### GeckoView 147.0.2

**Bug Fixes**
- Fixed bookmarks routing issue

## 0.9.31
### GeckoView 147.0.2

**New Features**
- Added per-site tracking protection controls
  - Site-specific tracking protection exceptions
  - New tracking protection exceptions management screen
  - Per-site permissions management (location, camera, microphone, notifications, autoplay, etc.)
- Added clear browsing data per domain
- Added custom tracking protection policies
  - Granular tracking protection configuration
  - Configurable blocking categories and levels
  - Custom tracking protection settings screen
- Added external download manager support
  - Option to use external download managers instead of built-in handler
  - Configurable in tabs behavior settings
- Added extension installation from local XPI files
  - Install browser extensions from local .xpi files
- Added QR code scanner
  - Built-in QR code scanning integrated into search field
  - Quick access for scanning URLs
- Added Tor entry/exit country selection
  - Configure specific countries for Tor entry and exit nodes
  - Enhanced Tor settings UI with country picker
- Added "Open in App" feature
  - Native app link handling for compatible apps
  - Configurable app links behavior

**Major UI/UX Improvements**
- Complete browser UI scaffold replacement
  - Better keyboard handling with bottom sheets
  - Improved content overlay management
  - Top bar now hides on scroll
- Navigation drawer reorganization
  - New dedicated navigation drawer
  - Reorganized button placements
  - Unified toolbar icon colors
  - Improved profile selector bottom sheet
- Converted dialogs to bottom sheets for better mobile UX
  - Delete data, folder selection, profile selection, and feed selection
- Address bar merged into search screen
  - Unified search and URL input experience
  - Tab editing integrated into search interface
- App color system reorganization
  - Consistent color scheme across entire app
  - Improved visual hierarchy
- Movable tab bar restore button
  - FAB can be repositioned by user
  - Drag to preferred location

**New Settings**
- Settings reorganization with new categories:
  - General Settings
  - Privacy & Security Settings
  - Search & Content Settings
  - Tabs & Behavior Settings
  - Appearance & Display Settings
  - Fingerprinting Settings
  - Advanced Settings (renamed from Developer Settings)
- Disable automatic clipboard access for improved privacy
- Auto-clear unassigned tabs after configurable duration
- Configurable search history entry count with automatic cleanup
- Control swipe-to-refresh gesture
- Disable double back to close tab gesture
- External download manager toggle
- App links handling control

**Container & Tab Management**
- Container assignment improvements
  - Fixed container assignment for private tabs
  - Container selection in new tab screen
  - Better container data synchronization
- Tab closing logic improvements
  - Check for parent tab first when closing (fixes #155)
  - Close assigned tab when history is empty
  - Improved tab bar dismiss logic (fixes #157)
- Tab view enhancements
  - Improved initial scroll position
  - Hide "Add New Tab" button on scroll
  - Better grid/list scroll behavior

**Bookmarks & History**
- Bookmark all tabs dialog with fast/detailed options
- Hide empty root folders by default
- Long press for history navigation
- Edit mode respected in history search

**Search Enhancements**
- Configurable search history entry count
- Automatic search history cleanup
- Case-insensitive suggestion matching
- Autocomplete suggestions on tap

**Tor Improvements**
- Migrated from Arti to libtor implementation
- Country selection for entry/exit nodes
- Improved Tor UI and notifications
- Custom onion icon in notifications

**Developer & Debugging**
- New dedicated error logs screen
- Improved error logging and handling
- Log filtering capabilities

**Performance & Resource Management**
- Improved image caching and disposal
  - Better widget icon caching
  - Proper image disposal to prevent memory leaks
- Screenshot timer management improvements
- Better database provider lifecycle management
- Longer disposal timeout for improved resource cleanup

**Visual Improvements**
- Permission badge indicator in address bar
- Better find-in-page widget with debouncing
- Progress bar positioning based on toolbar location
- Fixed PlatformView overlap issues on affected devices running old Android versions
- Improved keyboard visibility handling

**Bug Fixes**
- Fixed container assignment issue for private tabs
- Fixed tab bar dismiss logic (fixes #157)
- Fixed parent tab check when closing tabs (fixes #155)
- Fixed provider access errors on dispose
- Fixed loading progress visibility issues
- Fixed color issues with new app colors
- Fixed PlatformView overlap issues
- Fixed content overlay issues

## 0.9.30
### GeckoView 146.0.1

**New Features**
- GitHub and Google Play releases are using libre Fennec-style Gecko builds from now on (on par with F-Droid)
- Added encrypted profile backup and restore system with password protection
- Added bookmark import/export functionality
  - Support for HTML (Netscape format, Firefox/Chrome compatible) and JSON formats
  - Option to merge with existing bookmarks or replace completely
- Added private tab tracking system
  - Visual indicator (private icon) in address bar for private tabs
  - "Close All Private Tabs" button in tab view
- Added page content export capabilities
  - Export current page as PDF file
  - Copy page content as Markdown to clipboard
  - Save page content as Markdown file
- Added multiple tab view modes
  - Grid view: Traditional grid layout
  - List view: Compact list showing more tabs at once
  - Tree view: Hierarchical display of tab relationships
  - View mode preference persists across app restarts
- Added quick tab switcher and contextual navigation bar
  - Contextual bottom toolbar showing recently used tabs or ordered container tabs (configurable)
  - Dismissible to maximize screen space
- Added container filter for tree view to show container-specific tab hierarchies
- Added ML model download progress reporting with real-time indicators
- Added isolated container data clearing
  - Clear cookies, cache, and browsing data for specific containers
  - Option to clear container data on exit
- Added quit button to profile selector for complete app exit
- Added address bar auto-focus option for improved navigation UX

**Improvements**
- Complete tab bar overhaul
  - Consolidated menu buttons for cleaner interface
  - Tab reordering now opt-in via settings (not always enabled)
  - Tab bar dismissible to maximize viewing space
- Enhanced container color system
  - Tab bar color now matches current container's color theme
  - Selected containers use border instead of background color (improved visibility)
- Redesigned search interface
  - Improved visual hierarchy and layout
  - Better organization of suggestions, history, and results
  - Enhanced container chip display
  - More efficient use of screen space
- Improved tab handling and state management
  - Better tab duplication logic
  - Enhanced tab parent handling and hierarchy management
  - Refined tab insertion process
  - Removed tab deletion cache for simplified architecture
- Enhanced bookmark management
  - Assignable folder parents (move bookmarks between folders)
  - Improved bookmark entry editing interface
  - Better folder management and organization
- UI/UX enhancements
  - Tab icons displayed when screenshots unavailable
  - Less intense chip background colors for better readability
  - Auto-hide "Add New Tab" button for cleaner interface
  - Automatic UI reset after 30+ minutes of inactivity
  - Updated addon/extension layouts
  - Various icon updates throughout the app

**Bug Fixes**
- Fixed search field focus issues preventing proper keyboard interaction
- Fixed disposed provider exceptions that could cause crashes
- Fixed unmounted widget exceptions
- Fixed browser floating action button animation glitches
- Fixed tab container provider lifecycle coordination
- Fixed widget/provider lifecycle timing issues
- Fixed incorrect tab hierarchy when adding multiple tabs (parent ID handling)
- Fixed tab menu incorrectly showing for history items
- Improved animation smoothness throughout the app

## 0.9.29
### GeckoView 145.0.2

**New Features**
- Added container site assignments to automatically open specific websites in designated containers
- Added multi-user profiles with complete separation of browsing data, extensions, and settings
- Added bookmarks feature
- Added support for custom search engines via user-defined bangs

**Improvements**
- Tor now uses built-in bridges as fallback
- Tor data storage migrated from file directory to cache
- Arti logging now outputs to logcat
- Tab overview now defaults to fullscreen mode (configurable in settings)
- Visual indicator added to tab bar for Tor-tunneled tabs
- Reorganized menu structure
- General UI improvements and bug fixes

## 0.9.28
### GeckoView 144.0.2

**New Features**
- Added support for requesting sites in Desktop Mode

**Improvements**
- Enhanced favicon caching
- Tor-related updates and improvements
- UI refinements

**Bug Fixes**
- Fixed URL launch intent issues

## 0.9.27
### GeckoView 144.0

**New Features**
- Added setting to disable internal PDF viewer (pdfjs)
- Added setting to define and select browser locales

**Improvements**
- Migrated from experimental API extension to new Gecko Preference API for most operations

**Bug Fixes**
- Fixed UI issues
- Fixed engine crash after prolonged background inactivity
- Fixed intent stream lifecycle issue

## 0.9.26
### GeckoView 144.0

**Bug Fixes**
- Ensure tab bar remains visible when bottom sheet is active
- Handle AI engine errors gracefully
- Fix container assignment when opening links
- Fix settings toggle not refreshing UI

## 0.9.25
### GeckoView 144.0

**New Features**
- Added AI feature to group related unassigned tabs into new containers
- Added setting to control how externally opened links are handled (now defaults to prompt)
- Added DoH (DNS over HTTPS) setting with predefined or custom DNS resolver options
- Added browser history view with options to view and delete history data
- Added tab bar swipe action setting with options: "Switch to last used Tab" and "Navigate Sequential Tabs"
- Added quick actions to open tabs via long press on home screen app icon
- Added developer setting to support third-party CA certificates
- Added support for custom addon collections
- Added developer setting to customize fingerprint protection measures

**Improvements**
- Rewrote large portions of the Tor Plugin with option to route all traffic and fixed potential IP leaks (through browser side effects like loading favicons)
- Increased Tor background service timeout from 15 minutes to 1 hour without interaction
- Localhost URLs now default to `http` instead of `https` for better compatibility
- Display scrollable breadcrumb representation of URLs wherever possible for improved visibility
- Updated built-in Bangs
- Large portions of UI rewritten and improved

**Breaking Changes**
- New database structure for bangs; saved bang frequency sorting has been reset

## 0.9.24
### GeckoView 143.0.0

* Upgraded GeckoView

## 0.9.23
### GeckoView 142.0.1

**New Features**
- Added Tor Bridge support with automatic configuration and bridge updates
- Added setting to display dialog for choosing external link handling behavior

**Bug Fixes**
- Fixed media upload issues on websites
- Fixed hardening settings UI display problems

**Improvements**
- Enhanced bottom sheet user interface
- Improved URI parsing and protocol detection for address bar input

## 0.9.22
### GeckoView 142.0

* Added setting to use third party CA certificates
* Added setting to control tab bar swipe behavior
* Downgraded AGP for F-Droid compatibility

## 0.9.21
### GeckoView 142.0

* Restore previous tab state on undo delete
* Fix Reader Mode issue on back arrow navigation
* Unhide tab bar on app resume

## 0.9.20
### GeckoView 142.0

* Added 'Undo' action for closed tabs
* Added swipe gesture to close tab
* Added compatibility for receiving intents of various MIME types
* Introduced Bounce Tracking Protection
* Introduced Query Parameter Stripping as setting
* Introduced setting to control default tab type for creating new tabs and opening links
* Upgraded Flutter to latest stable version
* Automatic hide tab bar on scroll
* Sort newly created tabs after parent instead of at front
* Set default fallback encoding for Web Feeds to UTF-8
* Take full screen size when in fullscreen mode
* Improved error logging
* Filter out sensitive logs
* Minor UI improvements
* Fix Reader Mode issue on back navigation
* Fix bottom sheet scrolling issues

## 0.9.17

* Reworked Tab UI into bottom sheet
* Adjusted Android permissions
* Improved Favicon handling

## 0.9.16-2

* Fix icon caching issue

## 0.9.16-1

* Fixed drop animation lag
* Allow drop into the unassigned container

## 0.9.16

* Integrated on-device ai for container naming and tab sugegstions
* Improved Tab and container UI

## 0.9.15-1

* Added certificate information title
* Fixed draggable tabs
* Open single tab in tree view automatically

## 0.9.15

* Improved intent handling
* Refactored tab grid
* Several UI improvements
* Optimized build

## 0.9.14

* Bundle bangs and disable auto fetch (sync from repo still possible via settings)
* Fix flickering after returning from home
* Fix UI website title overflow
* Optimize build

## 0.9.13

* Added option to show extensions in tab bar (through "Show Extension Shortcut" setting)
* Added tab menu action to assign tab to container
* Fixed QR code generation issues
* Switched to Mozilla stable builds
* Fixed issues with PiP and fullscreen mode

## 0.9.12

* Reorganized several settings into a new group: "Developer Settings"
* Added a "Get Extensions" menu entry
* Disabled the Cookie Banner Blocker option, as it is deprecated by Mozilla (consider using uBlock Origin instead)
* Updated hardening presets
* Mozilla Components upgraded

## 0.9.11

* Trigger automatic find-in-page when coming from local search results
* Upgraded gecko
* Upgraded GoRouter

## 0.9.10

* Initial public release