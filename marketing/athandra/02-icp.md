# 02 · 客户画像（ICP）与找客户的方法

> 方法论来自本仓库 `prospecting`（SaaS 分支 + 需求信号分支）和 `customer-research` 技能。原则：公开信号优先、每条线索附证据、只起草不代发。

## 1. 画像：和 OpenRouter 重合的那部分，去掉企业

**公司：** 美国；1–50 人；软件 / AI 应用 / 开发代理 / 自动化工作室；自筹或种子期；已经在生产或 MVP 里调用 LLM API；月推理支出 $50–$5,000。

**买家 = 用户：** 技术创始人、CTO、唯一的后端工程师、独立开发者。决策周期以天计，自己绑卡。

**排除：** 需要 SOC 2 / SSO / 发票 / SLA 的企业；主模型必须是 Claude Opus/Sonnet 的团队；只想白嫖免费模型的玩家；需要欧盟数据驻留的。

## 2. 四个细分，按「信号强度 × 可触达」排序

| 细分 | 典型特征 | 核心痛点 | 钩子 |
|------|---------|---------|------|
| **A. Claude Code / Cursor / Cline 重度用户** | 独立开发者或 2–5 人团队；每月在 coding agent 上花 $100–$500；在 r/ClaudeAI、r/ChatGPTCoding、X 上讨论 token 账单 | Claude 配额和价格；想把常规任务分流到便宜模型 | 「一个环境变量，Claude Code 跑 Kimi K2.7 Code，每百万输出 token 不到 $2」 |
| **B. Agent / 自动化构建者（Dify、n8n、LangChain、OpenClaw）** | 把分类、抽取、总结跑成流水线，每天几百万 token | 单价决定项目能不能盈利；一个循环跑飞账单 | 「每个工作流一把带上限的 Key」 + Qwen Flash 价格 |
| **C. 做 AI 功能的自筹 SaaS** | 3–20 人，产品里有聊天 / 摘要 / 搜索；用 OpenRouter 或 OpenAI 直连 | 推理成本吃掉毛利；想换模型但不想改代码 | 「改一行 base_url，账单降 60%」+ 成本计算器 |
| **D. 开发代理 / 外包工作室** | 给多个客户做 AI 项目 | 一把 Key 混用，没法按客户计费 | 「每个客户一把 Key：独立额度、过期、模型范围、用量导出」 |

## 3. 公开信号：怎么判断一个人「正在找」

按仓库 `prospecting/references/demand-signals.md` 的五个信号桶：

1. **抱怨信号**：Reddit / X / HN 上说「OpenRouter fee」「rate limited」「my API bill」「cheaper than GPT for X」「DeepSeek API from US」「Kimi in Claude Code」
2. **技术栈信号**：GitHub 公开仓库里出现 `OPENROUTER_API_KEY`、`openrouter.ai/api/v1`、`base_url=` 可配置的 OpenAI 客户端、`.env.example` 含多家模型 key
3. **招聘/增长信号**：小公司招「AI engineer」「LLM」岗位，官网写「AI-powered」，Product Hunt 近 90 天上线过 AI 产品
4. **工具信号**：Dify / n8n / Cline / Roo Code / OpenClaw 社区里问「which provider」「cheapest model for」
5. **预算信号**：公开分享 LLM 成本截图、「we spend $X/mo on OpenAI」的 build-in-public 帖子

## 4. 去哪里找（渠道 → 具体查询）

### 4.1 GitHub（最精准、免费）

用 `gh api -X GET search/code` 或 GitHub 网页搜索，筛美国个人/组织、近 6 个月有提交：

```text
"openrouter.ai/api/v1" language:Python
"OPENROUTER_API_KEY" filename:.env.example
"base_url" "chat.completions" "deepseek" language:TypeScript
"ANTHROPIC_BASE_URL" "claude code"
```

对命中仓库：看 README 是不是产品、作者所在地（profile location）、公司链接。输出到线索表。

### 4.2 Reddit（信号最密）

订阅并每天扫：r/LocalLLaMA、r/ClaudeAI、r/ChatGPTCoding、r/cursor、r/LLMDevs、r/ArtificialInteligence、r/SaaS、r/SideProject、r/Dify、r/n8n、r/indiehackers。

搜索词：`openrouter fee`、`openrouter alternative`、`deepseek api`、`kimi k2 claude code`、`glm claude code`、`api bill`、`cheapest model for`。

规则：90% 帮忙回答、10% 提自己；提自己时带价格数字和局限（见 03 文档的回帖模板）。

### 4.3 X / Twitter

关注并互动：build-in-public 的 AI 独立开发者、分享 API 账单的人。搜索：`"openrouter" bill`、`"api costs" llm`、`"claude code" kimi OR glm OR deepseek`。用 X 高级搜索限定英文、近 7 天。

### 4.4 Hacker News

Algolia 搜索 `openrouter`、`llm api costs`、`deepseek api`；看评论里的小公司创始人。Show HN 发布后也会带来一批精准用户。

### 4.5 Product Hunt / Indie Hackers / DevHunt

近 90 天上线的 AI 产品 maker，1–10 人团队，产品明显依赖 LLM。IH 的「what's your stack」帖子里直接点名用 OpenRouter 的。

### 4.6 工具社区（分发杠杆最大）

Cline、Roo Code、Continue、OpenClaw、Cherry Studio、Dify、n8n、LiteLLM、LangChain 的 Discord / GitHub Discussions。目标不只是找用户，而是**让 Athandra 成为这些工具里的内置 provider 选项**（见 03 文档「集成分发」）。

### 4.7 数据库式筛选（规模化时）

仓库 `tools/REGISTRY.md` 里有 MCP 的工具：

- **Apollo / Clay**：美国、1–50 人、行业 Software/IT、技术栈含 OpenAI、关键词 "AI"、"LLM"、"agent"；职位 Founder / CTO / Head of Engineering
- **Exa**：语义搜索「startups using OpenRouter」「small AI agency」
- **Firecrawl / Apify**：抓 Product Hunt、YC 公司目录（按 batch、规模、AI 标签）
- **Hunter / FullEnrich**：补邮箱；发送前用 TrueList 验证，退信率压在 2% 以下

## 5. 打分表（每条线索 0–10）

| 维度 | 分值 | 判据 |
|------|------|------|
| 需求信号 | 0–4 | 公开抱怨成本/费用/限流 = 4；用 OpenRouter 或多家直连 = 3；产品含 LLM 功能 = 2；只是 AI 相关 = 1 |
| 画像匹配 | 0–3 | 美国 + 1–50 人 + 软件 = 3；缺一项减 1 |
| 可触达 | 0–2 | 有公开邮箱或活跃 X/LinkedIn = 2；只有 GitHub = 1 |
| 时机 | 0–1 | 近 30 天有相关发帖或提交 = 1 |

≥7 分进入冷邮件 / DM 序列；4–6 分先在公开帖子下互动；<4 分放进再营销受众。

## 6. 线索表字段（CSV）

```text
company, website, person, role, location, segment(A/B/C/D), signal_quote, signal_url, signal_date, stack(openrouter/openai/direct), score, email, linkedin, x_handle, notes
```

每条线索必须有 `signal_quote` 和 `signal_url`，否则不进表（`prospecting` 技能的诚实规则）。

## 7. 合规提醒（美国）

- 冷邮件遵守 CAN-SPAM：真实发件人、可退订、邮政地址；用独立二级域名发送，SPF/DKIM/DMARC 配好并预热 3–4 周（见 `cold-email/references/deliverability.md`）
- 不抓取需登录的数据；LinkedIn 只用官方搜索和手动 DM
- 不在 Reddit 用马甲；账号用真名和公司身份
