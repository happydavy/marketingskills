# Athandra 营销工作区

面向 ai.athandra.com（Sensure AI Technology 的 LLM API 网关）的美国小公司获客方案。调研日期 2026-11-17。

| 文件 | 内容 |
|------|------|
| `product-marketing.md` | 产品营销上下文（英文），含 **[CONFIRM]** 待确认项。使用时复制到 `.agents/product-marketing.md`（该路径被 .gitignore 排除），本仓库所有技能会自动读取它 |
| `01-positioning.md` | 产品现状盘点、真正的优势、与 OpenRouter 的诚实对比、上线前必修的坑、需要你回答的 8 个问题 |
| `02-icp.md` | 客户画像、4 个细分、公开需求信号、具体去哪找（GitHub 搜索语句、Reddit 板块、工具社区、Apollo/Clay 筛选）、打分表、线索 CSV 字段 |
| `03-channels-and-copy.md` | 渠道优先级、落地页英文文案、目标页清单、集成分发、Product Hunt / Show HN / 目录提交、Reddit / X / Dev.to 模板、Google RSA（已校验长度）、Reddit/X 广告、4 封冷邮件序列、推荐计划 |
| `04-90-day-plan.md` | 北极星指标、12 周任务表（每项标注对应技能）、每周运营检查、三档预算、风险对策 |

## 装进你的产品项目（推荐方式）

在产品项目根目录执行一条命令，自动完成：安装 53 个技能到 `.claude/skills/`、写入 `.agents/product-marketing.md`、把本目录的方案文档复制到 `docs/marketing/`、给 CLAUDE.md 追加一段营销说明：

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/happydavy/marketingskills/main/marketing/athandra/kit/install.sh)
```

可选参数（环境变量）：`AGENTS="claude-code codex cursor"` 同时给多个 agent 安装；`SKIP_SKILLS=1` 只复制文档不装技能；`KIT_FROM=<目录或 URL>` 改文档来源。脚本见 `kit/install.sh`，CLAUDE.md 追加内容见 `kit/CLAUDE.snippet.md`。

安装后在产品项目里打开 Claude Code，第一句话：「用 product-marketing 技能，读取 .agents/product-marketing.md，逐项问我 [CONFIRM] 的内容并更新」。

## 怎么继续用这个仓库的技能

在仓库根目录对 agent 说：

- 「用 product-marketing 技能，根据我的回答更新 .agents/product-marketing.md」
- 「用 copywriting 和 cro 技能，按 marketing/athandra/03-channels-and-copy.md §1.1 做首页」
- 「用 prospecting 技能，按 marketing/athandra/02-icp.md 的查询找 100 条线索」
- 「用 cold-email 技能，为细分 D（代理公司）改写 03 文档的序列」
- 「用 directory-submissions 技能，生成提交 tracker 和各目录的 listing 文案」
- 「用 launch 技能，排 Product Hunt 3 周预热日程」

## 现在最该做的三件事

1. 回答 `01-positioning.md` §6 的 8 个问题（手续费、刷卡、Claude、数据政策、毛利等）
2. 修 P0：首页正文、Stripe 刷卡、英文文档、Terms / Privacy
3. 提第一批集成 PR（Cline、Roo Code、Continue、LiteLLM）
