#!/usr/bin/env bash
# Athandra marketing kit installer.
# Run from the ROOT of your product project:
#   bash <(curl -fsSL https://raw.githubusercontent.com/happydavy/marketingskills/main/marketing/athandra/kit/install.sh)
# Options (env vars):
#   AGENTS="claude-code"            agents to install skills for (space-separated: claude-code codex cursor windsurf ...)
#   KIT_FROM="<url-or-local-dir>"   where to fetch the marketing docs from (default: this fork's branch on GitHub)
#   SKIP_SKILLS=1                   only copy the docs and context, do not run npx skills
set -euo pipefail

AGENTS="${AGENTS:-claude-code}"
KIT_FROM="${KIT_FROM:-https://raw.githubusercontent.com/happydavy/marketingskills/main/marketing/athandra}"
DOCS=(README.md 01-positioning.md 02-icp.md 03-channels-and-copy.md 04-90-day-plan.md)

if [ ! -d .git ]; then
  echo "Run this from the root of your product project (no .git found here)." >&2
  exit 1
fi

fetch() { # fetch <relative-path> <dest>
  if [[ "$KIT_FROM" == http* ]]; then
    curl -fsSL "$KIT_FROM/$1" -o "$2"
  else
    cp "$KIT_FROM/$1" "$2"
  fi
}

echo "==> 1/4 Installing marketing skills for: $AGENTS"
if [ -z "${SKIP_SKILLS:-}" ]; then
  for a in $AGENTS; do
    npx -y skills add coreyhaines31/marketingskills -a "$a" -y
  done
else
  echo "    (skipped)"
fi

echo "==> 2/4 Writing .agents/product-marketing.md (read by every skill first)"
mkdir -p .agents
if [ -f .agents/product-marketing.md ]; then
  cp .agents/product-marketing.md ".agents/product-marketing.md.bak.$(date +%Y%m%d%H%M%S)"
  echo "    existing file backed up"
fi
fetch product-marketing.md .agents/product-marketing.md

echo "==> 3/4 Copying the go-to-market docs to docs/marketing/"
mkdir -p docs/marketing
for f in "${DOCS[@]}"; do fetch "$f" "docs/marketing/$f"; done

echo "==> 4/4 Adding a marketing section to CLAUDE.md"
MARK="<!-- athandra-marketing-kit -->"
if [ -f CLAUDE.md ] && grep -q "$MARK" CLAUDE.md; then
  echo "    already present"
else
  fetch kit/CLAUDE.snippet.md /tmp/athandra-claude-snippet.md
  { [ -f CLAUDE.md ] && printf "\n\n"; cat /tmp/athandra-claude-snippet.md; } >> CLAUDE.md
  rm -f /tmp/athandra-claude-snippet.md
fi

cat <<'MSG'

Done. What was added:
  .claude/skills/<53 skills>     (and skills-lock.json)  <- for claude-code; other agents use .agents/skills/
  .agents/product-marketing.md   <- product context; answer the [CONFIRM] items
  docs/marketing/*.md            <- positioning, ICP, channels & copy, 90-day plan
  CLAUDE.md                      <- section telling the agent where the marketing context lives

Next: open Claude Code in this directory and say
  "用 product-marketing 技能，读取 .agents/product-marketing.md，逐项问我 [CONFIRM] 的内容并更新"
Then commit:  git add -A && git commit -m "chore: add marketing skills and Athandra marketing context"
MSG
