# 03 · 各平台渠道计划与可直接使用的文案

> 方法论来自本仓库 `launch`（ORB：Owned / Rented / Borrowed）、`directory-submissions`、`ads`（B2B 付费 playbook、RSA 规范）、`cold-email`、`referrals`。所有英文文案以 `.agents/product-marketing.md` 为准；含 **[待确认]** 的句子在事实确认前不要发。
>
> 我无法替你登录各平台发布。下面每个渠道都给出：做什么、发在哪、用什么文案、怎么衡量。

## 0. 渠道优先级一览

| 优先级 | 渠道 | 类型 | 为什么 | 成本 |
|-------|------|------|--------|------|
| 1 | 英文落地页 + 英文文档 + 定向目标页 | Owned | 其他一切流量的落点；不修就别投 | 工时 |
| 2 | 成为开源工具的内置 provider（Cline、Roo Code、Continue、OpenClaw、Cherry Studio、Dify、n8n、LiteLLM） | Borrowed | OpenRouter 的增长路径就是这个；一次 PR，长期分发 | 工时 |
| 3 | Reddit / X / HN 社区（先帮忙再提） | Borrowed | 目标用户聚集地，信号最密 | 时间 |
| 4 | Product Hunt + Show HN + 开发者目录批量提交 | Borrowed | 一次性反链 + 注册高峰 + 「OpenRouter alternative」搜索排名 | 免费为主 |
| 5 | Google 搜索广告（竞品词 + 模型词） | Rented | 唯一有明确购买意图的付费渠道 | $1k–3k/月起 |
| 6 | 冷邮件 + LinkedIn DM（信号驱动，小批量） | Rented | 对细分 C/D（SaaS、代理）有效 | 工具 $100/月 + 时间 |
| 7 | Newsletter 赞助 / 开发者 YouTube | Rented | 到达规模化阶段再做 | $500–5k/条 |
| 8 | 推荐计划 | Owned | 已有功能，公开规则即可启动 | 让利 |
| 跳过 | LinkedIn Ads、Meta Ads、TikTok | — | 低客单价（月消费几十到几百美元）扛不住 LinkedIn $8+ CPC；Meta 对开发者意图匹配差 | — |

---

## 1. Owned：落地页与目标页

### 1.1 首页（英文）文案

**Hero**

> **One API key. The models that win on price.**
> DeepSeek V4, Qwen 3.8, GLM 5.2, Kimi K2.7, MiniMax M3 — alongside GPT-5.5 and Gemini 3. OpenAI- and Anthropic-compatible. USD pricing. A hard spend cap on every key.
>
> [Get an API key] [See all 34 model prices]
> _Prepaid. No overdraft. Works with Claude Code, Cursor, Cline, LangChain, Dify._

**代码块（紧跟 hero）**

```python
from openai import OpenAI
client = OpenAI(base_url="https://ai.athandra.com/v1", api_key="sk-...")
r = client.chat.completions.create(model="deepseek-v4-flash",
    messages=[{"role": "user", "content": "Summarize this ticket"}])
```

**三个卖点**

| 标题 | 正文 |
|------|------|
| Change one line | Keep your OpenAI or Anthropic SDK code. Point `base_url` at Athandra. Streaming, function calling, vision and prompt caching are tested on every listed model. |
| Hand out keys safely | Every key gets its own budget, expiry date, allowed models and IP allow-list. A runaway agent stops at the cap. Nothing goes negative. |
| Pay per token, see every price | All 34 models priced in USD per million tokens on the Model Square. Qwen 3.7 Flash from $0.03 in / $0.13 out. GPT-5.4 at $2.50 / $15. **[待确认：No platform fee on top-ups.]** |

**价格表前 8 行**（直接从模型广场拉，自动更新）：deepseek-v4-flash、qwen3.7-flash、MiniMax-M3、kimi-k2.7-code、glm-5.2、gemini-3.5-flash-lite、gpt-5.4-mini、gpt-5.5。

**"Works with" 一行 logo**：Claude Code · Codex CLI · Cursor · Cline · Cherry Studio · LangChain · Dify

**FAQ（每条 2 句以内）**：Is there a fee on top of model prices? **[待确认]** · Where is my data processed, is it logged, is it used for training? **[待确认后写]** · Which models support tool calling / vision? · How do spend caps work? · Can I use Claude Code? · Who runs Athandra? (Sensure AI Technology, offices in Silicon Valley, Vancouver, Singapore, Berlin, Sydney.)

**页脚**：Status · Docs · Pricing · Terms · Privacy · 运营实体与地址

### 1.2 目标页（`directory-submissions` 技能：先有落点再提交目录）

| 页面 | URL 建议 | 作用 |
|------|---------|------|
| OpenRouter alternative | /alternatives/openrouter | 承接 AlternativeTo、SaaSHub、Google「openrouter alternative」；放对比表，承认对方模型多，突出手续费 **[待确认]**、Key 治理、Anthropic 格式 |
| Together AI / Fireworks / Groq alternative | /alternatives/together-ai 等 | 「开源模型 + GPT/Gemini 同一把 Key」 |
| 每个热门模型一页 | /models/deepseek-v4-flash、/models/kimi-k2.7-code、/models/qwen3.8-max、/models/glm-5.2 | 承接「deepseek api」「kimi k2 api」搜索；价格、上下文、能力实测、curl |
| 每个工具一页（英文版文档） | /docs/apps/claude-code、/cursor、/cline、/dify、/n8n、/langchain | 承接「use kimi in claude code」等长尾 |
| 成本计算器 | /calculator | 输入月 token 量和当前模型，输出换到 Athandra 后账单；是广告落地页 |
| Changelog | /changelog | 每次上新模型发一条，喂 X 和 newsletter |

---

## 2. Borrowed：集成分发（杠杆最大的一项）

目标：用户在工具里选 provider 时能直接看到 "Athandra"，而不是手填 "OpenAI-compatible + base URL"。

| 工具 | 怎么做 | 备注 |
|------|--------|------|
| Cline / Roo Code / Kilo Code | 给仓库提 PR 增加 provider 预设（base URL、模型列表接口） | 这三个加起来每月数十万活跃开发者 |
| Continue.dev | `config.yaml` provider 文档 PR | |
| OpenClaw / Cherry Studio / Chatbox / LobeChat | 提交内置 provider 或 preset | 国内团队做的工具，沟通成本低 |
| Dify / n8n | Dify 做 model provider 插件；n8n 写社区节点或文档页 | Dify 已在文档里支持，做成插件市场条目 |
| LiteLLM | 加 provider 映射 | 很多团队通过 LiteLLM 换供应商 |
| LangChain / LlamaIndex | 文档「integrations」页 PR | 反链 + 搜索 |
| Vercel AI SDK | 社区 provider 包 `@athandra/ai-sdk-provider` 或文档 | 美国前端开发者主阵地 |
| awesome-llm、awesome-openai-compatible 等 GitHub 列表 | 提 PR | 只挑近 3 个月还在合并 PR 的列表 |

每个集成完成后：发一条 X、一篇 Dev.to「How to use Kimi K2.7 Code in Cline for $X/month」、更新 changelog。

---

## 3. Borrowed：发布与目录提交

按 `directory-submissions` 的三条硬规则：先修地基（第 1 节）、先有目标页、不同目录用不同定位。

### 3.1 Product Hunt（锚点事件，3 周预热）

- **Tagline（≤60 字符）：** `Cheap frontier models, one key, hard spend caps per key`
- **Description 首段：** Athandra is an OpenAI- and Anthropic-compatible API for 34 curated models — DeepSeek V4, Qwen 3.8, GLM 5.2, Kimi K2.7, MiniMax M3, plus GPT-5.5 and Gemini 3 — priced per token in USD. Every API key carries its own budget, expiry, model allow-list and IP allow-list, so you can hand keys to tools, contractors and clients without a surprise bill.
- **Maker 首评结构：** 为什么做（美国小团队买不到便宜的开源旗舰模型）→ 我们不是什么（不是 300 个模型的市场）→ 价格表截图 → 上线优惠（见 3.4）→ 问「你现在最想便宜用的模型是哪个？」
- **周二/三/四 00:01 PT 发布**；提前 3 周在 X / IH / Reddit 建一批愿意当天评论的人（算法看评论质量不看票数）。

### 3.2 Show HN

- 标题：`Show HN: Athandra – One OpenAI/Anthropic-compatible key for DeepSeek, Qwen, Kimi, GPT and Gemini, with per-key spend caps`
- 正文要点：技术角度（网关架构、如何保证流式/函数调用一致、分组倍率怎么算、不欠费如何实现）、价格表、局限（34 个模型、Claude 情况、总部在中国 + 数据政策链接）。HN 会直接问数据和公司背景，**提前写好、第一条评论就贴**。

### 3.3 目录清单（按仓库 `directory-list.md` 挑的开发者相关项）

| 层级 | 目录 | 定位口径 |
|------|------|---------|
| Tier 1 | Product Hunt、Show HN、DevHunt、Uneed、Microlaunch、BetaList（预热期） | 开发者工具 |
| Tier 2 | AlternativeTo（作为 OpenRouter、Together AI、Fireworks、Groq 的替代提交）、SaaSHub、G2（分类：AI Inference / LLM API）、Capterra、StackShare、Slant、Indie Hackers 产品页 | 「OpenRouter alternative」 |
| Tier 3 | There's An AI For That、Futurepedia、Toolify、aitools.inc | 「AI API / developer」 |
| Tier 8 | GitHub 组织页 + 示例仓库、Dev.to、Hashnode | 技术文章 + 反链 |

用 `skills/directory-submissions/references/submission-tracker-template.csv` 跟踪；提交后 2 周验证反链是否真的存在。

### 3.4 发布期优惠（建议）

- 注册即送 $2 额度（需 GitHub 或 Google 登录，防刷）**[待确认]**
- 首充 $20 以上送 20% 额度，PH / HN 发布周有效
- 「Switch from OpenRouter」：上传近 30 天用量截图，按同等金额送 10% 额度

---

## 4. Borrowed：社区（Reddit / X / HN / Dev.to）

### 4.1 Reddit 原创帖（90/10 规则下的那 10%）

发到 r/LocalLLaMA 或 r/LLMDevs，标题不带产品名：

> **I compared what 1B tokens/month of "boring" LLM work costs across 9 models (Nov 2026 prices)**
>
> 正文：任务定义（分类 / 抽取 / 摘要）→ 9 个模型每百万 token 价格表 → 质量抽样结果 → 结论「GPT-5.4-mini 对这类任务贵 10–25 倍」→ 方法论和局限 → 最后一句：we run a gateway (Athandra) that lists all of these on one key; happy to answer questions, not here to pitch.

### 4.2 Reddit 回帖模板（别人问「cheapest way to use Kimi/DeepSeek from the US」时）

> Three options I've actually used: (1) direct from the vendor — cheapest, but you'll deal with a separate account and sometimes payment friction from the US; (2) OpenRouter — easiest, 5.5% on top-ups; (3) a smaller gateway. Full disclosure, I work on one (Athandra): Kimi K2.7 Code is $X/$Y per M, OpenAI- and Anthropic-compatible so Claude Code works, and you can put a hard cap on each key. 34 models, so if you need something exotic OpenRouter is still the better pick.

### 4.3 X 线程（build-in-public）

每周一条，轮换四个主题：价格对比表（截图）、一个新模型上线 + 实测、一个用户的用例（匿名化）、一条「我们做错了什么」。固定格式：第一条给结论和数字，最后一条给链接。

### 4.4 Dev.to / Hashnode 文章题目（每篇 = 一个反链 + 一组长尾词）

1. How to run Claude Code on Kimi K2.7 Code (and what it costs per hour)
2. DeepSeek V4 Flash vs GPT-5.4 mini for classification: a 10,000-row test
3. Give every n8n workflow its own LLM budget: per-key spend caps in practice
4. Switching an existing OpenAI SDK app to a cheaper model in one line
5. What "OpenAI-compatible" actually breaks: streaming, tool calls and vision across 9 providers

---

## 5. Rented：付费广告

### 5.1 先算账（`ads/references/b2b-paid-playbook.md`）

- 盈亏平衡 CPA = 月均消费 × 毛利率 × 预期留存月数。示例：$150 × 15% × 12 = **$270**。目标 CPA 设为一半：**$135**（转化定义：完成首次充值）。
- 盈亏平衡 CPC = 目标 CPA × 落地页注册率 × 注册→充值率。示例：$135 × 8% × 25% = **$2.70**。
- **毛利率 [待确认]** 直接决定付费能不能做。毛利低于 10% 时，只投竞品词和再营销。

### 5.2 Google 搜索（唯一有明确意图的渠道）

三个广告组，各自独立落地页：

| 广告组 | 关键词（短语匹配） | 落地页 |
|-------|------------------|--------|
| Competitor | openrouter alternative, openrouter pricing, openrouter fee, together ai alternative, fireworks ai alternative | /alternatives/openrouter |
| Model | deepseek api, deepseek v4 api, qwen api, kimi k2 api, glm api, minimax api, kimi claude code | /models/… |
| Category | llm api gateway, openai compatible api, unified llm api, multi model api | 首页或 /calculator |

否定词：free, jobs, tutorial, download, login, github（除非是模型词组），reddit。

**RSA 文案**（标题 ≤30 字符，描述 ≤90 字符，已校验长度）：

```text
HEADLINES
One API Key, 34 Top Models
DeepSeek, Qwen, GPT, Gemini
OpenAI-Compatible Endpoint
Spend Cap on Every API Key
Qwen Flash: $0.03/M Input
Switch in One Line of Code
Works With Claude Code
Transparent Per-Token Pricing
USD Billing, No Overdraft
Kimi K2.7 & GLM 5.2 API
OpenRouter Alternative
Pay Only Model List Price   <- [待确认 0 手续费后再用]
Set Up in 5 Minutes
Per-Key Budgets & Expiry
Cheaper LLM Inference

DESCRIPTIONS
DeepSeek V4, Qwen 3.8, GLM 5.2, Kimi K2.7, GPT-5.5 and Gemini 3 on one key. USD pricing.
Change base_url, keep your OpenAI or Anthropic SDK code. Streaming and tool calls tested.
Give every project a key with its own budget, expiry and model list. No surprise bills.
Public per-token prices for all 34 models. Prepaid in USD; a key that runs out just stops.
```

竞品词注意：标题里出现 "OpenRouter" 属于描述性使用，但如果对方投诉商标，Google 会下架该标题；描述里不要出现。

### 5.3 Reddit Ads

- 定向：subreddit 列表（r/LocalLLaMA、r/ClaudeAI、r/ChatGPTCoding、r/cursor、r/LLMDevs、r/SaaS、r/SideProject），美国，Desktop 优先
- 文案像帖子不像广告：

> **Running Claude Code on Kimi K2.7 Code costs about $X/hour. Here's the setup.**
> One env var, OpenAI/Anthropic-compatible, hard spend cap per key. 34 models priced in USD. Prepaid, nothing goes negative.

- 评论区开着，由工程师回复。

### 5.4 X Ads

- 定向：关注 OpenRouter、Cursor、Cline、Anthropic、DeepSeek 等账号的美国用户；关键词 "api bill"、"openrouter"
- 创意：价格对比表图片 + 一句话。预算小，先 $20/天测 CTR。

### 5.5 Newsletter / 创作者（第 2 个月后）

TLDR AI、Ben's Bites、The Rundown、Latent Space、AI Jason 之类开发者 YouTube。先买一条，看 UTM 注册和充值再决定。文案复用 PH description 首段。

### 5.6 再营销

对访问过 /pricing、/docs 但未注册的：Google Display + Reddit，创意换成「成本计算器」而不是重复首页卖点（`ads` 技能：再营销要换 offer）。

---

## 6. Rented：冷邮件与 LinkedIn DM（细分 C / D）

规则来自 `cold-email`：像同行不像销售、一个请求、主题行 2–4 个词、独立发件域、关闭打开追踪、带退订和邮政地址。

**序列（4 封）**

```text
Day 0 — subject: inference bill
Hi {{first}},

Saw {{company}} ships {{ai_feature}} — {{signal_quote_or_observation}}.
Teams at that stage usually find GPT-class pricing eats the margin on the
routine calls (classification, extraction, summaries).

We run Athandra: one OpenAI/Anthropic-compatible key for DeepSeek V4, Qwen,
GLM, Kimi and MiniMax alongside GPT and Gemini, priced per token in USD, with a
hard spend cap on every key.

If you share rough monthly token volume I'll send back what the same traffic
would cost on three cheaper models. Worth a look?

{{sender}}, Athandra

Day 3 — subject: re: inference bill
One concrete number: Qwen 3.7 Flash is $0.03 in / $0.13 out per million
tokens. GPT-5.4 mini is $0.75 / $4.50. Same OpenAI SDK code, one line changed.
Happy to run your actual prompts through both so you can judge quality.

Day 8 — subject: runaway agents
Different angle: the thing customers mention most isn't price, it's control.
Each Athandra key has its own budget, expiry, model allow-list and IP list, so a
contractor's key or an agent loop can't spend past its cap. If that's a problem
you've hit, I can show the setup in 5 minutes.

Day 21 — subject: closing the loop
Haven't heard back, so I'll assume now isn't the time. One link in case it's
useful later: our public per-model price table — {{pricing_url}}.
No hard feelings, and good luck with {{company_goal}}.
```

每封末尾：`Athandra · {{US office address}} · reply "stop" to opt out`。

**LinkedIn DM（连接通过后）**：两句话，不发链接。「Noticed {{company}} runs {{ai_feature}}. We help small teams route routine LLM calls to cheaper models with a spend cap per key — if inference cost is on your list this quarter, happy to compare numbers.」

---

## 7. Owned：推荐 / 联盟计划

现有 `?aff=` 机制已经能用，缺的是规则和推广：

- 公开规则：被推荐用户首年消费的 15% 返到推荐人余额 **[你定]**；被推荐人首充送 10%
- 面向谁：Dev.to / YouTube 教程作者、Cline/Dify 社区活跃者、代理公司
- 页面：/affiliates，含素材包（logo、价格表、一段话）和实时后台截图
- 衡量：每月通过 aff 注册并充值的人数、人均消费

---

## 8. 不要做的事

- 不要在首页空着的时候投任何广告
- 不要宣称「最便宜」「无限」「官方合作」；用数字和具体模型名
- 不要比模型数量
- 不要用马甲在 Reddit 推自己；一个真名账号，先回答 20 个问题再发第一条带链接的
- 不要群发没有信号证据的冷邮件；没有 `signal_quote` 的线索不发
- 不要在没有 Privacy / Terms 页面前上 Product Hunt 和 Show HN，评论区第一个问题就是这个
