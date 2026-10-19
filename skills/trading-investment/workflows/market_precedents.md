# Market Precedent & Vector Fingerprinting
1. Regime Fingerprint: Extract Trend (SMA20/50/200), Volatility (ATR%), Momentum (RSI14), Volume anomaly.
2. Vector Indexing: Store embeddings in Qdrant (port 6333) or LocalVectorStore fallback.
3. Precedent Retrieval: Query cosine similarity for current setup against historical market crashes, rallies, and breakouts.
