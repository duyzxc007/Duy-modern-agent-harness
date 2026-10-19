# Institutional Backtest Protocol
1. Execution Costs:
   - Entry Price = `price * (1 + slippage_pct / 100)`
   - Exit Price = `price * (1 - slippage_pct / 100)`
   - Commission = `gross_amount * (commission_pct / 100)` deducted on every buy/sell.
2. Institutional Metrics:
   - Max Drawdown %, Sharpe Ratio (risk-free 2%), Sortino Ratio (downside risk), Win Rate %, Profit Factor, CAGR %.
   - Benchmark normalization to initial capital ($10,000) calculating Alpha % and Beta.
