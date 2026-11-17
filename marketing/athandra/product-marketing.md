# Product Marketing Context

**Document version:** v1 (auto-drafted from ai.athandra.com, aidocs.athandra.com and openrouter.ai on 2026-11-17)
**Last updated:** 2026-11-17

> Items marked **[CONFIRM]** could not be verified from public pages. Confirm or correct them before any copy that depends on them ships. This file is read by every marketing skill in this repo, so keep it current.

## Product Overview
**One-liner:** One OpenAI-compatible API key for frontier open-weight models (DeepSeek, Qwen, GLM, Kimi, MiniMax) plus GPT and Gemini, with per-key spend caps, USD pricing and a 5-minute switch from any existing OpenAI or Anthropic SDK code.
**What it does:** Athandra is an LLM API gateway. Change one Base URL (`https://ai.athandra.com/v1`) and your existing OpenAI SDK, Anthropic SDK, Claude Code, Codex CLI, Cursor, Cline, LangChain or Dify setup calls 34 models through one account. Every API key can carry its own budget, expiry date, model allow-list and IP allow-list. Pricing for every model is public in the Model Square, billed per token with no overdraft (requests are rejected when a key or account runs out).
**Product category:** LLM API gateway / unified inference API ("OpenRouter alternative", "multi-model API").
**Product type:** Developer-facing usage-based SaaS (prepaid credits).
**Business model:** Prepaid wallet in USD, debited per token at the Model Square price × group multiplier. Groups: `default` (DeepSeek, Qwen, GLM, Kimi, MiniMax, GPT, Gemini), `official`, `pool`. Internal unit: 500,000 quota = $1. **[CONFIRM]** platform fee on top-ups (OpenRouter charges 5.5% on Standard); **[CONFIRM]** whether card checkout (Stripe) is live for US customers — the docs currently say online top-up may be disabled and point to redemption codes or "contact the administrator"; **[CONFIRM]** free signup credit amount.

## Target Audience
**Target companies:** US-based software companies and studios with 1–50 people that ship AI features or agents: bootstrapped and seed-stage AI startups, dev agencies building AI for clients, indie hackers and solo developers, internal tooling teams at small businesses. Same profile as OpenRouter's core user, excluding enterprises.
**Decision-makers:** Founder / technical co-founder, CTO or lead engineer, the one developer who owns "the AI bill". Usually the same person chooses, pays and integrates.
**Primary use case:** Cut inference cost and vendor sprawl by routing production and dev traffic to the cheapest model that passes their evals, without rewriting integration code.
**Jobs to be done:**
- Try and switch between many models from one key while evaluating what's good enough
- Get DeepSeek / Qwen / Kimi / GLM / MiniMax with USD billing, English console and an OpenAI-compatible endpoint, without a separate account per Chinese vendor
- Give each project, contractor or tool its own key with a hard budget so one runaway agent can't drain the account
**Use cases:**
- Pointing Claude Code, Cursor, Cline or Codex CLI at a cheaper coding model (Kimi K2.7 Code, GLM 5.2, DeepSeek V4) for routine tasks
- Agent workflows in Dify, n8n or LangChain that burn millions of tokens per day on classification, extraction and summarization
- SaaS features (chat, summaries, search) where margin depends on cents per million tokens
- Side projects and MVPs that need a $5–$20 budget cap, not a $200 surprise bill

## Personas
| Persona | Cares about | Challenge | Value we promise |
|---------|-------------|-----------|------------------|
| Indie developer / solo founder (user + buyer) | Cost per token, zero integration work, not getting rate-limited mid-demo | Paying GPT prices for tasks a $0.30/M model handles; juggling 4 vendor accounts | One key, one bill, the cheap models that are hard to buy from the US, hard spend caps |
| Startup CTO, 3–20 engineers (decision maker) | Reliability, spend visibility per project, swapping models without redeploys | Inference is the second-biggest line item after salaries; nobody knows which service spent what | Per-key budgets, usage logs per key and model, OpenAI and Anthropic compatible so nothing is rewritten |
| Agency / consultancy lead (champion) | Reselling AI work at a margin, client isolation | One shared key across clients; can't bill clients accurately | A key per client with its own cap, expiry and model list; export usage per key |
| Automation builder (Dify, n8n, Cline, OpenClaw) (user) | Does it work in my tool today | Tools list "OpenAI-compatible" but every provider has quirks | Documented setup for each tool; streaming, function calling, vision and prompt caching tested |

## Problems & Pain Points
**Core problem:** Small teams overpay for inference and lose time managing vendors. Frontier-class open models cost 5–20× less than GPT-5.5 for most workloads, but buying them from the US means separate accounts, foreign payment flows and inconsistent APIs.
**Why alternatives fall short:**
- Direct provider accounts: one account, one invoice, one SDK quirk set per vendor; Chinese vendors are hard to pay from a US card
- OpenRouter: adds a 5.5% fee on every credit purchase (8% on Business); 300+ models makes choice noisy; no per-key hard budget with model allow-lists in the same way **[CONFIRM current OR key features before using in copy]**
- Together / Fireworks / Groq: open models only, no GPT or Gemini on the same key
- Running open models yourself: GPU bills, ops burden, no bursting
**What it costs them:** Inference margin, engineering hours on integration glue, surprise bills from runaway agents, delayed launches while waiting for vendor approval.
**Emotional tension:** "I'm paying frontier prices for grunt work and I don't even know which feature is spending it."

## Competitive Landscape
**Direct:** OpenRouter — the category leader; falls short on the credit-purchase fee, and on key-level governance (budget, model scope, IP allow-list, expiry) for small teams. Also: Requesty, Portkey, LiteLLM Cloud, Eden AI, Novita, SiliconFlow (strong on Chinese open models, weaker on GPT/Gemini).
**Secondary:** Going direct to OpenAI / Google / DeepSeek / Alibaba Cloud Model Studio — works, but multiplies accounts and billing.
**Indirect:** Self-hosting open weights on rented GPUs (vLLM on Lambda, RunPod) — cheaper at very high constant volume, expensive in ops time for a small team.

## Differentiation
**Key differentiators:**
- Both OpenAI (`/v1/chat/completions`, `/v1/responses`) and Anthropic Messages (`/v1/messages`) formats on one key, so Claude Code and the Anthropic SDK work unchanged
- Curated catalog of 34 models including the latest Chinese open-weight releases (DeepSeek V4 Flash/Pro, Qwen 3.5–3.8, GLM 5.x, Kimi K2.7 Code, MiniMax M2.7/M3) alongside GPT-5.x, Gemini 3.x, GPT-image-2 and Seedance video, priced in USD
- Governance per API key: budget cap, expiry, model allow-list, IP allow-list, group
- Transparent public pricing page with group multipliers, latency and throughput per model
- No overdraft: a key or account that runs out is rejected, never billed negative
- Tool-by-tool setup docs (Claude Code, Codex CLI, Cursor, Cline, Cherry Studio, LangChain, Dify), every example tested live
- Built-in referral program (`?aff=` links) with payouts to wallet balance
**How we do it differently:** Curation over breadth. We pick the models that win on price-performance each month and make them safe to hand out to a team.
**Why that's better:** A small team doesn't need 300 models; it needs the 5 that are cheapest for each job, one bill, and the confidence that an intern's key can't spend more than $10.
**Why customers choose us:** **[CONFIRM with first 10 paying users]** — hypotheses: cheaper access to DeepSeek/Qwen/Kimi, spend caps per key, Claude Code compatibility.

## Objections
| Objection | Response |
|-----------|----------|
| "Who are you? I've never heard of Athandra." | Operated by Sensure AI Technology, offices in Silicon Valley, Vancouver, Singapore, Berlin, Sydney; HQ Shantou. Public pricing, public docs, prepaid so your downside is capped at what you top up. **[CONFIRM]** US legal entity, Terms of Service and Privacy Policy URLs. |
| "Where does my data go? Is it logged or used for training?" | **[CONFIRM and publish]** request/response logging policy, retention, regions, and whether prompts are ever used for training. This must be a published page before any US campaign. |
| "Only 34 models vs OpenRouter's hundreds." | Deliberate. We list the models that win on price-performance and verify streaming, tool calling and vision on each. If you need a model we don't have, tell us; we add models on request. **[CONFIRM turnaround]** |
| "No Claude models?" | Native Claude (e.g. claude-haiku-4-5) is available to keys in the `official` group **[CONFIRM public availability and price]**; the Anthropic Messages endpoint also lets Claude Code run on Kimi, GLM or DeepSeek. |
| "What's the uptime?" | **[CONFIRM and publish]** a public status page and a 30-day success-rate figure. The Model Square already shows per-model success rate, latency and TPS. |
| "Is there a fee on top of model prices?" | **[CONFIRM]** If zero, say: "Model Square price is what you pay. No platform fee on top-ups." |

**Anti-persona:** Enterprises needing SOC 2 reports, SSO, invoicing and contractual SLAs; teams that need Claude Opus / Sonnet as their primary model; anyone needing EU data residency guarantees; hobbyists who only want free models.

## Switching Dynamics
**Push:** OpenRouter fee on every top-up; GPT/Claude prices for bulk workloads; separate accounts to reach DeepSeek, Qwen, Kimi; no per-key budget controls; surprise bills from agents.
**Pull:** Same code, lower bill; one key for Chinese open models and GPT/Gemini; hard caps per key; tested setup for the tools they already use.
**Habit:** OpenRouter or OpenAI key is already in every .env; their eval harness assumes a vendor; inertia of "it works".
**Anxiety:** Unknown brand, China-headquartered company, data handling, longevity, whether models are the official weights served faithfully, payment and refund path.

## Customer Language
**How they describe the problem:**
- "My OpenRouter bill is mostly the 5% fee and GPT calls I could have sent to DeepSeek."
- "I want to use Kimi/GLM in Claude Code without a separate account and a Chinese phone number."
- "An agent loop ran all night and spent $180."
- "Which key is spending all this?"
**How they describe us:** **[CONFIRM — collect from first users; placeholders]** "OpenRouter but with spend caps", "the easy way to buy DeepSeek and Qwen from the US".
**Words to use:** one key, OpenAI-compatible, Anthropic-compatible, spend cap, per-key budget, USD pricing, Model Square, drop-in, open-weight models, price-performance
**Words to avoid:** "cheapest in the world", "unlimited", "enterprise-grade" (unless proven), "AI revolution", "leverage", "best-in-class", any claim of being the official provider for a vendor
**Glossary:**
| Term | Meaning |
|------|---------|
| Token (API key) | A key starting with `sk-`; each has its own budget, expiry, model scope, IP allow-list, group |
| Group | A set of models and a price multiplier a key belongs to: `default`, `official`, `pool` |
| Quota | Internal billing unit; 500,000 quota = $1 |
| Model Square | Public pricing and status page at ai.athandra.com/pricing |
| Standard / Recharge price | Two price views on the Model Square **[CONFIRM which one users actually pay]** |

## Brand Voice
| Attribute | Means | Doesn't mean | Example line |
|-----------|-------|--------------|--------------|
| Plain | Prices, model names and limits stated outright | Terse to the point of unhelpful | "Change one line: base_url = https://ai.athandra.com/v1" |
| Engineer-to-engineer | Code first, claims second, every example runs | Jargon for its own sake | "Every capability in the docs was tested against production; copy the example and run it." |
| Honest about scope | We say what we don't have | Apologetic | "34 models, curated. Need one we don't list? Ask." |
| Cost-literate | Talk in $/M tokens and monthly bills | Discount-store tone | "Qwen 3.7 Flash: $0.03 in / $0.13 out per million tokens." |

**Tone by context:**
- Support: fast, specific, include the exact error body and fix
- Launch: show the pricing table and a curl command, not adjectives
- Errors: name the cause (quota, group, rate limit) and the one-click fix
- Sales: numbers first; offer a cost comparison on their real usage
- Social: build-in-public, share model benchmarks and price changes
**Terms we own:** "Model Square", "spend cap per key"
**Never use (and why):** "free unlimited" (credits are prepaid and abuse-prone); "official partner" of any vendor unless contractually true; "cheaper than OpenRouter" without the fee comparison math on the same page

## Proof Points
**Metrics:** **[CONFIRM]** monthly requests, uptime, number of active keys, median latency; the Model Square can show per-model success rate once populated.
**Customers:** **[CONFIRM]** none public yet. Target: 5 named small-company logos or quotes within 90 days.
**Testimonials:**
> **[CONFIRM — none yet]**
**Value themes:**
| Theme | Proof |
|-------|-------|
| Lower bill for the same code | Side-by-side per-million prices on Model Square; a cost calculator on the landing page |
| Safe to hand out | Per-key budget, expiry, model list, IP list; no overdraft |
| Works with your tools | Setup pages for Claude Code, Codex CLI, Cursor, Cline, Cherry Studio, LangChain, Dify |
| Latest open models fast | Dated changelog of model additions (DeepSeek V4, Qwen 3.8, GLM 5.2, Kimi K2.7) |

## Goals
**Business goal:** Acquire US small-company developers who top up and keep spending monthly.
**Conversion action:** Sign up → create key → first successful API call → first top-up ("activated paying account").
**Current metrics:** **[CONFIRM]** signups/week, activation rate, top-up rate, average monthly spend, gross margin per $ of inference.

## Paid Ads (optional)
**Target CPA / ROAS:** **[CONFIRM gross margin]** Breakeven CPA = (average monthly spend × gross margin %) × expected months retained. Example: $150/mo × 15% × 12 = $270. Set target at 50% of breakeven.
**Hard floor:** Flag if CPA for activated paying accounts exceeds breakeven for 2 consecutive weeks.
**Monthly budget and daily variance:** **[CONFIRM]**; suggested start $1,500/mo, ±30% daily.
**Conversions that count:**
| Action | Means | Value | Feeds bidding? |
|--------|-------|-------|----------------|
| Signup | Account created | Low | No |
| First API call | Key works in their code | Medium | Yes (primary for search) |
| First top-up | Paying | High (use top-up amount) | Yes once volume >30/mo |
**Known tracking weaknesses:** Console is a separate SPA from landing page; server-side event for first API call must be sent to the ad platforms; referral `?aff=` traffic must be excluded from paid attribution.
**Good lead vs. form fill:** A good lead makes an API call within 48 hours and tops up within 14 days.
**Campaigns:** `ATH-US-Search-Competitor` (OpenRouter / Together / Fireworks alternative queries), `ATH-US-Search-Model` (deepseek api, qwen api, kimi api, glm api), `ATH-US-Search-Category` (llm api gateway, openai compatible api), `ATH-US-Reddit-Dev` (subreddit targeting), `ATH-US-Retarget` (docs and pricing visitors who didn't sign up)
**Agent may:** read, compare, flag, draft, recommend
**Agent may not (without approval):** change budgets or bids, pause or launch, edit tracking, publish ads

## Learnings
_(empty — add dated entries as campaigns ship)_
