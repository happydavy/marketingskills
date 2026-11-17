# 04 · 90 天执行计划、预算与指标

> 结构来自本仓库 `marketing-plan` 技能的 90 天路线（Unblock → Foundation → Velocity → Compound）和 AARRR 分层。假设团队：1 个能改产品/前端的工程师 + 1 个做内容和社区的人（可以是你 + AI agent）。

## 1. 北极星指标与漏斗

**北极星：** 月度「活跃付费账户」数 = 当月有充值且有 API 调用的账户。

| 阶段 | 事件 | 目标转化率（第 90 天） |
|------|------|----------------------|
| Acquisition | 落地页访问 | — |
| Activation | 注册 → 创建 Key → 首次成功调用 | 注册率 8%；注册→首调 60% |
| Revenue | 首次充值 | 首调→充值 25% |
| Retention | 第 30 天仍有消费 | 50% |
| Referral | 通过 aff 链接注册并充值 | 占新付费 10% |

**90 天目标（保守，基于 $0 广告 + 社区分发）：** 1,500 注册、600 首调、150 首充、60 个 30 天活跃付费账户。有广告预算时按第 4 节加权。

## 2. 周计划

### 第 1–2 周 · Unblock（不做完不进下一步）

| 任务 | 负责 | 对应技能 |
|------|------|---------|
| 首页上线英文一屏（文案见 03 §1.1） | 工程 | `copywriting`、`cro` |
| Stripe 刷卡充值，最低 $5 | 工程 | `pricing`、`paywalls` |
| 翻译 6 页核心文档为英文，文档站加语言切换 | 内容 | `copy-editing` |
| 发布 Terms、Privacy、数据处理说明、退款政策 | 你 + 法务 | — |
| GitHub / Google 登录，收集邮箱 | 工程 | `signup` |
| 状态页上线；模型广场成功率/延迟开始有数据 | 工程 | — |
| 回答 01 文档第 6 节的 8 个问题，更新 `.agents/product-marketing.md` | 你 | `product-marketing` |
| 埋点：注册、创建 Key、首次调用（服务端事件）、首充；UTM 规范 | 工程 | `analytics`、`conversion-tracking` |

### 第 3–4 周 · Foundation

| 任务 | 对应技能 |
|------|---------|
| 目标页：/alternatives/openrouter、4 个模型页、6 个工具页、/calculator、/changelog | `programmatic-seo`、`seo-audit`、`schema` |
| 注册 Reddit / X / HN / IH / Dev.to 真名账号，开始每天回答 3–5 个问题（不带链接） | `social`、`community-marketing` |
| 提交第一批集成 PR：Cline、Roo Code、Continue、LiteLLM | — |
| 建线索表：GitHub 搜索 + Reddit 信号，先 100 条带证据的 | `prospecting` |
| 冷邮件基础设施：二级域名、SPF/DKIM/DMARC、预热开始（需 3–4 周） | `cold-email` |
| 公布推荐计划规则和 /affiliates 页 | `referrals` |
| 生命周期邮件：注册未调用（24h）、调用未充值（第 3、7 天）、余额低于 $1 | `emails`、`onboarding` |

### 第 5–8 周 · Velocity

| 任务 | 对应技能 |
|------|---------|
| Product Hunt 预热（第 5 周起）→ 第 8 周周三发布；同日 Show HN、IH 帖 | `launch`、`directory-submissions` |
| 批量提交 Tier 1–3 目录（03 §3.3），用 tracker CSV | `directory-submissions` |
| Dev.to 每周 1 篇（03 §4.4 题目），交叉发 Hashnode，canonical 指回自己博客 | `content-strategy`、`ai-seo` |
| Reddit 原创帖 1 篇（成本对比），X 每周 1 条线程 | `social` |
| 冷邮件开跑：每天 20–30 封，只发 ≥7 分线索；LinkedIn DM 每天 10 个 | `cold-email` |
| 若毛利确认 ≥10%：Google 搜索竞品词 + 模型词上线，$50/天 | `ads` |
| 做 5 个用户访谈，收集原话，回填 Customer Language 和 Proof Points | `customer-research` |

### 第 9–12 周 · Compound

| 任务 | 对应技能 |
|------|---------|
| 复盘：哪个渠道带来的首充 CAC 最低，预算向它集中 | `attribution`、`analytics` |
| 第二批集成：OpenClaw、Cherry Studio、Dify 插件市场、Vercel AI SDK provider、n8n 节点 | — |
| 落地页 A/B：标题「价格」vs「spend cap」两版 | `ab-testing`、`cro` |
| 争取 3–5 个可署名客户和引言，放到首页和 PH 页 | `sales-enablement` |
| 第一条 newsletter 赞助试投（如 TLDR AI） | `ads`、`influencer-marketing` |
| 流失挽回：30 天无消费的付费用户发「新模型 + 10% 加赠」 | `churn-prevention` |
| 写下一季度计划，把 Learnings 回填到 `.agents/product-marketing.md` | `marketing-plan` |

## 3. 每周运营检查（30 分钟）

来自 `ads/references/operating-check.md` 和 `analytics` 技能：

1. 漏斗四个数：注册、首调、首充、30 天活跃，与上周比
2. 按渠道（UTM / referrer / aff）拆首充数和 CAC
3. 搜索广告：CPC、注册率、首充 CPA；连续 2 周高于盈亏线就停该广告组
4. 社区：本周回答数、带链接帖子的点击与注册
5. 冷邮件：回复率（目标 ≥3%）、退信率（<2% 否则停）、正面回复数
6. 产品信号：新模型需求、报错 top 3、支持工单主题 → 回填文档和 FAQ
7. 一条写进 `## Learnings` 的结论

## 4. 预算三档

| 档位 | 月预算 | 怎么花 | 预期 |
|------|-------|--------|------|
| 零预算 | $0 + 时间 | 社区、集成 PR、目录、Dev.to、推荐计划 | 增长慢但 CAC≈0；第 90 天 40–60 活跃付费 |
| 小预算 | $1,500 | 搜索广告 $900（竞品词 + 模型词）、Reddit Ads $300、工具（Instantly/Apollo/Hunter）$200、PH 预热素材 $100 | 加 50–100 首充；首充 CPA 目标 ≤$135 |
| 中预算 | $5,000 | 搜索 $2,500、Reddit + X $800、一条 newsletter $1,200、工具 $300、创作者小额合作 $200 | 加 150–250 首充；开始有品牌词搜索 |

**前提：** 毛利率 **[待确认]**。公式：盈亏平衡 CPA = 月均消费 × 毛利率 × 留存月数。毛利 <10% 时只保留竞品词搜索和再营销，其余预算转为推荐计划让利。

## 5. 风险与对策

| 风险 | 对策 |
|------|------|
| 美国用户对中国总部公司的数据顾虑 | 数据政策页 + 美国办公地址 + 不记录 prompt（若属实）写进首页 FAQ；Show HN 第一条评论主动说明 |
| 免费额度被刷 | OAuth 登录 + 手机或卡验证后才发额度；每账户 1 次 |
| 模型价格被上游调整 | changelog 公开每次变动；广告文案不写具体价格，落地页价格表自动同步 |
| OpenRouter 商标投诉 | 替代页为描述性比较，不在广告描述里用其名称；标题被拒就换「Unified LLM API」 |
| 冷邮件进垃圾箱 | 二级域名、预热、每天 ≤30 封/邮箱、退信 >2% 立停 |
| 只有 34 个模型被当作弱点 | 公开「模型请求」表单，承诺 X 天内评估 **[你定]**，把需求量也当作内容 |

## 6. 下一步（我可以继续做的）

1. 你回答 01 §6 的 8 个问题 → 我更新上下文文件并去掉所有 **[待确认]**
2. 用 `copywriting` + `cro` 技能把首页做成完整 HTML 原型
3. 用 `prospecting` 技能跑 GitHub / Reddit 搜索，产出前 100 条带证据的线索 CSV
4. 用 `programmatic-seo` 技能生成 34 个模型页和 6 个工具页的内容
5. 翻译文档站 6 页核心内容为英文
