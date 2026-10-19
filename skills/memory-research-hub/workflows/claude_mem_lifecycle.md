# Claude-Mem Lifecycle Guide
1. Observations are captured per tool call and compressed into memory.
2. Context is automatically injected at session start.
3. Use `work_state_write` to track active to-do lists across sessions.
4. Use `mem_search` or `search` to retrieve past architecture decisions.
