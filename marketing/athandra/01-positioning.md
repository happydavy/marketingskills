# 01 · Athandra 优势盘点与定位

> 调研日期 2026-11-17。信息来源：ai.athandra.com（首页、模型广场、About、注册页）、aidocs.athandra.com（文档全站）、openrouter.ai 及其 pricing 页。标 **[待确认]** 的内容公开页面查不到，上线文案前必须你来确认。

## 1. 产品现状（实际看到的）

| 项目 | 现状 |
|------|------|
| 定位 | OpenAI 兼容 + Anthropic Messages 兼容的大模型 API 网关（基于 new-api 架构） |
| 模型 | 34 个：DeepSeek（V3.2 / V4 Flash / V4 Pro）、Qwen 3.5–3.8、GLM 5.1/5.2、Kimi K2.7 Code、MiniMax M2.7/M3、GPT-5.4/5.5/5.6 系列、Gemini 3.x、GPT-image-2、Seedance 2.0 视频 |
| 没有的 | 模型广场里 Anthropic 端点为 0，Claude 原生模型只在 `official` 分组、未公开展示 **[待确认]**；无 Embeddings、Rerank |
| 价格 | 公开透明，按百万 token 计价（如 GPT-5.4 $2.5/$15，DeepSeek V4 Flash $0.3/$1.2，Qwen 3.7 Flash $0.03/$0.13），有「标准 / 充值」两种口径 **[待确认用哪个对外]** |
| 分组倍率 | `default` / `official` / `pool`，不同分组价格倍率不同 |
| 密钥治理 | 每个 Key 独立：额度上限、过期时间、可用模型、IP 白名单、分组；余额不足直接拒绝，不欠费 |
| 控制台 | 概览、数据看板、使用日志、审计日志、游乐场、钱包、推荐计划（`?aff=` 邀请链接，奖励可转余额） |
| 文档 | 质量不错，但 **全部中文**；覆盖 OpenAI SDK、Anthropic SDK、Claude Code、Codex CLI、Cursor、Cline、Cherry Studio、LangChain、Dify、流式、函数调用、多模态、提示词缓存、错误排查 |
| 充值 | 文档写明「在线充值是否开放由平台配置决定」，否则用兑换码或联系管理员 **[待确认美国用户能否直接刷卡]** |
| 注册 | 用户名 + 密码即可，无邮箱验证、无 Google/GitHub 登录 |
| 公司 | Sensure AI Technology，总部汕头，海外据点新加坡、硅谷、温哥华、柏林、悉尼，宣称 24/7 支持 |
| 首页 | **只有导航栏，没有任何正文、价值主张、CTA** |
| 信任要素 | 未找到 Terms、Privacy、数据使用说明、状态页、客户案例；模型广场的成功率/延迟/TPS 全部为空 |

## 2. 真正的优势（可以对外讲的）

按对美国小公司开发者的吸引力排序：

1. **一把 Key 买到最新的中国开源旗舰模型，美元计价、英文控制台、OpenAI 兼容。** DeepSeek V4、Qwen 3.8、GLM 5.2、Kimi K2.7 Code、MiniMax M3 在美国直接开户很麻烦（国内手机号、人民币、各家不同 SDK）。这是 OpenRouter 之外最少人做好、而需求真实存在的切口。
2. **价格本身。** 同类任务用 Qwen 3.7 Flash（$0.03/$0.13）替代 GPT-5.4 mini（$0.75/$4.5），成本降一个数量级。文案要用具体数字，不要说「最便宜」。
3. **Anthropic Messages 格式 + Claude Code 原生支持。** 美国独立开发者里「让 Claude Code 跑便宜模型」是热门话题（r/ClaudeAI、r/ChatGPTCoding 每周都有帖子）。改一个环境变量就能把 Claude Code 指到 Kimi K2.7 Code / GLM 5.2，是极强的内容钩子。
4. **每个 Key 的硬预算 + 过期 + 模型白名单 + IP 白名单。** 「一个 agent 跑了一夜花了 $180」是真实痛点；给实习生、外包、每个客户单独发有上限的 Key，是小团队和代理公司的刚需。OpenRouter 的 key 管理相对弱 **[待确认最新功能再对比]**。
5. **不欠费。** 额度用完直接拒绝请求，下行风险等于你充的钱。对不敢绑卡的小公司是安心点。
6. **逐工具的接入文档，示例实测可跑。** 这是开发者最在意的「今天能不能在我的工具里用起来」。翻成英文后就是 SEO 页面。
7. **内置推荐计划。** 可以直接做成 affiliate 增长飞轮（见 03 文档）。
8. **如果平台不收充值手续费 [待确认]：** 这就是对 OpenRouter 最硬的一句话——「同样的模型价格，每一块钱少交 5.5%」。OpenRouter 官方 FAQ 明确：按供应商标价计费，Standard 买积分收 5.5%，Business 收 8%。

## 3. 对比 OpenRouter（对外文案要诚实）

| 维度 | OpenRouter | Athandra | 怎么讲 |
|------|-----------|----------|--------|
| 模型数量 | 300+，文本/图像/视频/音频 | 34，以文本为主 + 图像 + 视频 | **不要比数量**。讲「精选、每个模型实测过流式/函数调用/视觉」 |
| 费用 | 供应商标价 + 5.5% 充值手续费（Business 8%） | 标价 **[待确认是否 0 手续费]** | 若为 0：直接算账，每 $1,000 省 $55 |
| 兼容格式 | OpenAI 兼容 | OpenAI Chat + Responses + Anthropic Messages | 「Claude Code 不用插件直接用」 |
| 路由/故障切换 | 有，自动 fallback | 分组 + `pool` **[待确认是否有自动切换]** | 暂不比 |
| Key 治理 | 有 credit limit | 额度、过期、模型白名单、IP 白名单、分组 | 主打「safe to hand out」 |
| 免费层 | 25+ 免费模型，50 次/天 | **[待确认]** | 建议：注册送 $1–$5，需 GitHub/Google 登录防刷 |
| 支付 | 信用卡、AliPay、USDC、企业发票 | 兑换码 / 在线充值视配置 **[待确认]** | **必须有 Stripe 刷卡才能面向美国** |
| 信任 | 状态页、DPA、美国/欧盟区内路由 | 无公开 ToS/Privacy/状态页 | **上线前必须补** |
| 文档 | 英文 | 中文 | **必须翻译** |

## 4. 定位陈述（建议版）

**英文（对外）：**

> **Athandra** — One API key for the models that actually win on price: DeepSeek, Qwen, GLM, Kimi and MiniMax alongside GPT and Gemini. OpenAI- and Anthropic-compatible, USD pricing, and a hard spend cap on every key. Change one line of code; pay a fraction of the bill.

**一句话（Product Hunt tagline，60 字符内）：**

> Cheap frontier models, one key, hard spend caps per key

**类别词（SEO / 目录分类）：** LLM API gateway · unified AI API · OpenRouter alternative · DeepSeek API · Qwen API · Kimi API

## 5. 上线前必须修的坑（按阻塞程度）

这些问题不修，任何广告都是在往漏桶里倒水。每项都是技能 `cro` / `signup` / `onboarding` 会先指出的内容。

| 优先级 | 问题 | 为什么阻塞 | 最小修法 |
|-------|------|-----------|---------|
| P0 | 首页没有内容 | 广告流量落地后 3 秒内看不到价值主张就走 | 一屏：标题 + 三个卖点 + curl 示例 + 价格表前 6 行 + Sign up 按钮；见 03 文档的落地页文案 |
| P0 | 美国用户能否刷卡充值 | 没人会为了付钱去「联系管理员」 | 开通 Stripe 卡支付，最低 $5 |
| P0 | 文档全中文 | 目标用户读不懂 = 产品不存在 | 先翻译 Quickstart、OpenAI SDK、Anthropic/Claude Code、Apps、Errors、Wallet 六页；文档站加语言切换 |
| P0 | 无 Terms / Privacy / 数据使用声明 | 中国总部公司对美国 B2B 的第一道信任门；目录和 Product Hunt 审核也要 | 发布：是否记录 prompt、保留多久、服务器所在地区、是否用于训练、退款政策 |
| P1 | 无状态页、模型广场性能数据为空 | 「靠不靠谱」无法回答 | 接 Better Stack / Instatus 做 status.athandra.com；让成功率/延迟数据跑起来 |
| P1 | 注册只有用户名密码 | 无邮箱 = 无法做生命周期邮件；无 OAuth = 开发者转化率低 | 加 GitHub + Google 登录，收集邮箱 |
| P1 | Claude 模型不公开 | 大量搜索「claude api」流量；文档说有却看不到 | 要么公开 `official` 分组价格，要么文案不提 Claude 原生 |
| P1 | 模型卡片 "No description available" | 看起来像半成品 | 每个模型一句话 + 适合场景 + 上下文长度 |
| P2 | 公司实体与地址 | CAN-SPAM 要求冷邮件带邮政地址；B2B 采购要美国实体 | 页脚写明运营实体和硅谷办公地址 |
| P2 | 推荐计划规则不公开 | 没法推广 | 公布比例（建议首年消费 10–20%）和结算方式 |

## 6. 需要你回答的问题

回答后我更新 `.agents/product-marketing.md` 并改文案：

1. 充值是否收平台手续费？「标准 / 充值」两种价格口径，用户实际按哪个扣？
2. 美国用户现在能否直接刷卡（Stripe）？有没有最低充值额？注册是否赠送额度？
3. Claude 原生模型（claude-haiku-4-5 等）是否对所有用户开放？价格多少？
4. 请求和响应是否记录？保留多久？服务器在哪个地区？是否用于训练？
5. 有无自动 fallback / 多渠道切换？
6. 每美元推理收入的毛利大概多少？这决定付费广告能不能做（见 04 文档的算账）。
7. 推荐计划的奖励比例和结算方式？
8. 目前每周注册数、充值用户数、月均消费，哪怕是粗略数字。
