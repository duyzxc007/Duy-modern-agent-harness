---
name: memory-research-hub
description: Master cross-session memory and academic research hub. Integrates persistent memory compression via claude-mem (background daemon on port 37777, SQLite, work_state, observation hooks) with multi-database scholarly literature search across arXiv, PubMed, Europe PMC, and OpenAlex.
license: MIT
---

# Master Memory & Academic Research Hub

Long-term intelligence retention across coding sessions paired with multi-repository scientific research tools.

## 1. Claude-Mem Persistent Memory
- **Worker Daemon**: Running locally at `http://localhost:37777`.
- **Database**: SQLite storage at `~/.claude-mem/claude-mem.db`.
- **Automatic Hooks**: Captures PreInvocation, PreToolUse, PostToolUse, PostInvocation, and Stop events.
- **MCP Integration**: 19 tools including `search`, `work_state_write`, `save_memory`, `mem_search`.

## 2. Academic Literature Search
Multi-engine scientific search across major scholarly databases:
- **PubMed**: Peer-reviewed biomedical and life sciences research.
- **arXiv**: Physics, computer science, quantitative finance, and mathematics preprints.
- **Europe PMC**: Open-access full texts, PMC XML, citation graphs.
- **OpenAlex**: Global scholarly graph, author bibliometrics, institution and topic maps.

## 3. Workflows & Runbooks
Progressively disclosed in `workflows/`:
- `workflows/claude_mem_lifecycle.md` — How context is captured, compressed, and injected across sessions.
- `workflows/literature_search_guide.md` — Query syntax, DOI lookup, abstract extraction, citation analysis.
