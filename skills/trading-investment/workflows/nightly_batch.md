# Nightly Market Pipeline (17:00 ICT)
1. Triggered daily at 17:00 ICT post-market close via BackgroundScheduler.
2. Scans universe: Active watchlists, SET50 components, US Mega-caps.
3. Indexes swing pivots into vector memory.
4. Generates Draft Decision Journals (`BUY_CANDIDATE`) for user inspection.
5. Emits executive briefing markdown report directly into Living AI Wiki vault (`wiki_vault/research/`).
