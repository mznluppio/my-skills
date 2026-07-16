#!/bin/bash
set -e

# Setup colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo -e "${BLUE}=====================================================${NC}"
echo -e "${BLUE}     Mise à jour globale des compétences (Skills)     ${NC}"
echo -e "${BLUE}=====================================================${NC}"

# Helper function to run commands with nice logs
run_step() {
    local message="$1"
    local cmd="$2"
    echo -e "${YELLOW}➜ $message...${NC}"
    if eval "$cmd"; then
        echo -e "${GREEN}✓ Réussi !${NC}"
    else
        echo -e "${RED}✗ Échec pour : $message${NC}"
    fi
    echo ""
}

# 1. Product Management (phuryn/pm-skills)
run_step "Installation des skills PM (pm-toolkit, strategy, etc.)" \
  "npx -y skills add phuryn/pm-skills --skill '*' -g -y -a claude-code -a codex -a opencode"

# 2. React, Next.js & Design (vercel-labs/agent-skills)
for skill in vercel-react-best-practices web-design-guidelines; do
    run_step "Installation de $skill (vercel-labs)" \
      "npx -y skills add vercel-labs/agent-skills@$skill -g -y -a claude-code -a codex -a opencode"
done

# 3. Supabase & PostgreSQL (supabase/agent-skills)
for skill in supabase supabase-postgres-best-practices; do
    run_step "Installation de $skill (supabase)" \
      "npx -y skills add supabase/agent-skills@$skill -g -y -a claude-code -a codex -a opencode"
done

# 4. Anthropic Skills (anthropics/skills)
for skill in frontend-design webapp-testing skill-creator mcp-builder doc-coauthoring pdf docx xlsx pptx; do
    run_step "Installation de $skill (anthropic)" \
      "npx -y skills add anthropics/skills@$skill -g -y -a claude-code -a codex -a opencode"
done

# 5. Recherche de skills (vercel-labs/skills)
run_step "Installation de find-skills (vercel-labs)" \
  "npx -y skills add vercel-labs/skills@find-skills -g -y -a claude-code -a codex -a opencode"

# 6. Shadcn/ui (shadcn-ui/ui)
run_step "Installation de shadcn (shadcn-ui)" \
  "npx -y skills add shadcn-ui/ui@shadcn -g -y -a claude-code -a codex -a opencode"

# 7. Performance Web (cloudflare/skills)
run_step "Installation de web-perf (cloudflare)" \
  "npx -y skills add cloudflare/skills@web-perf -g -y -a claude-code -a codex -a opencode"

# 8. Impeccable (pbakaus/impeccable)
run_step "Installation de Impeccable" \
  "npx -y impeccable install --global --all-apps || true"

# 9. Deep Research (Weizhena/Deep-Research-skills)
run_step "Configuration de Deep Research (git clone & copy)" \
  "mkdir -p /tmp/deep-research && \
   git clone --depth 1 https://github.com/Weizhena/deep-research-skills.git /tmp/deep-research || true && \
   python3 -m pip install pyyaml --quiet || true && \
   mkdir -p ~/.claude/skills ~/.claude/agents ~/.codex/skills ~/.codex/agents ~/.config/opencode/agents && \
   cp -R /tmp/deep-research/skills/research-en/. ~/.claude/skills/ || true && \
   cp /tmp/deep-research/agents/web-search-agent.md ~/.claude/agents/ || true && \
   cp -R /tmp/deep-research/agents/web-search-modules ~/.claude/agents/ || true && \
   cp -R /tmp/deep-research/skills/research-codex-en/. ~/.codex/skills/ || true && \
   cp /tmp/deep-research/agents-codex/web-researcher.toml ~/.codex/agents/ || true && \
   cp -R /tmp/deep-research/agents-codex/web-search-modules ~/.codex/agents/ || true && \
   cp /tmp/deep-research/agents/web-search-opencode.md ~/.config/opencode/agents/web-search.md || true && \
   cp -R /tmp/deep-research/agents/web-search-modules ~/.config/opencode/agents/ || true && \
   rm -rf /tmp/deep-research"

# 10. Commandes OpenCode pour rendre les UI skills visibles dans la palette /
run_step "Installation des commandes OpenCode pour UI Skills" \
  "mkdir -p ~/.config/opencode/commands && cp \"$SCRIPT_DIR\"/opencode-commands/*.md ~/.config/opencode/commands/"

# 11. Vos compétences personnalisées (mznluppio/my-skills)
# En local, on peut installer depuis le répertoire courant
run_step "Installation de VOS compétences personnalisées (depuis ce répertoire)" \
  "npx -y skills add \"$SCRIPT_DIR\" --skill '*' -g -y -a claude-code -a codex -a opencode"

echo -e "${GREEN}=====================================================${NC}"
echo -e "${GREEN}     Mise à jour terminée avec succès ! 🎉            ${NC}"
echo -e "${GREEN}=====================================================${NC}"
