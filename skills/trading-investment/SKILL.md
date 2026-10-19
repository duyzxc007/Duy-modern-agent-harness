---
name: trading-investment
description: Master trading and investment OS engineering hub. Governs Hermes AI OS, stock bot pipelines, valuation modeling (DCF/DDM/P/E/PBV), institutional backtesting (slippage/fees/SL/TP), vector precedent analogies, quantitative decision journaling, and nightly batch automation. Strictly enforces Zero-Live-Trade / Paper-Only safety rules.
license: MIT
---

# Master Trading & Investment Hub (Hermes AI OS)

Engineering framework for quantitative analysis, financial valuation, strategy backtesting, and automated market intelligence.

## 1. Core Safety Rules (NON-NEGOTIABLE)
1. **Decision Support & Paper-Only**: The system is exclusively for research and paper trading. NEVER place live broker orders autonomously.
2. **Provenance & Timestamps**: Always cite market data source, timestamp, and fiscal period. Distinguish live quotes from historical filings.
3. **Conservative Assumptions**: Never assume zero transaction costs. Incorporate realistic slippage and exchange fees.

## 2. Capabilities & Workflows
Progressively disclosed in `workflows/`:
- `workflows/safety_and_governance.md` — Kill switch protocols, two-step human approval, paper portfolio isolation.
- `workflows/valuation_and_ranking.md` — Multi-scenario valuation (DCF 5Y, EV/EBITDA, P/E, P/BV, DDM), 4-Layer QVM scoring.
- `workflows/backtest_protocol.md` — Slippage modeling, commission deduction, benchmark alpha/beta (SPY/SET), Sharpe/Sortino/Drawdown.
- `workflows/market_precedents.md` — Market regime fingerprinting, vector memory cosine search, historical trajectory analogies.
- `workflows/nightly_batch.md` — 17:00 ICT post-market batch pipeline, executive briefing generation, draft journal staging.

## 3. Fast Triggers
- **Backtesting Strategy**: Use realistic `slippage_pct=0.05` and `commission_pct=0.1`. Compare equity curve against SPY/SET benchmark.
- **Valuation / Ranking**: Always normalize percentages vs decimals (prevent 100x bugs). Ensure DCF assumptions use conservative growth rates.
- **Market Signal**: Index inflection points into semantic memory. Link signal to a Decision Journal entry with SL/TP and invalidation rules.
