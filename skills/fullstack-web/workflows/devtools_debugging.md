---
name: chrome-devtools
description: Guide and workflows for using Chrome DevTools MCP to debug web apps, inspect live DOM/CSS, diagnose console and network errors, perform automated browser testing, run Lighthouse audits, and profile Core Web Vitals performance in Chrome.
---

# Chrome DevTools Automation & Debugging

This skill provides comprehensive instructions for automating, inspecting, debugging, and auditing web applications using Chrome DevTools MCP tools.

## Core Capabilities

1. **Browser Navigation & Context**:
   - `navigate_page`: Load URLs, SPAs, and test servers with specific wait conditions.
   - `new_page`, `close_page`, `select_page`, `list_pages`: Multi-tab management.
   - `emulate`: Test responsive viewports, mobile devices, and dark/light color schemes.

2. **DOM & State Inspection**:
   - `take_snapshot`: Structural and accessibility tree representation of the DOM.
   - `take_screenshot`: Visual verification of rendered components and layout.
   - `evaluate_script`: Run JavaScript in the page to query state, trigger methods, or evaluate expressions.

3. **Interactive Testing & Automation**:
   - `click`, `hover`, `drag`, `press_key`: Simulate real user actions.
   - `fill`, `fill_form`, `upload_file`: Form entry and file upload testing.
   - `wait_for`: Synchronize tests by waiting for specific DOM selectors or conditions.

4. **Debugging & Diagnostics**:
   - `list_console_messages`, `get_console_message`: Inspect JavaScript errors, warnings, and log messages.
   - `list_network_requests`, `get_network_request`: Trace HTTP status codes, payload data, and header details.

5. **Performance & Audits**:
   - `lighthouse_audit`: Generate audit scores for Performance, Accessibility, Best Practices, and SEO.
   - `performance_start_trace`, `performance_stop_trace`, `performance_analyze_insight`: Profile Core Web Vitals (LCP, INP, CLS) and main thread execution.

## Common Workflows

### 1. Web Application Diagnostics
When investigating a bug on a frontend or full-stack web application:
1. Open the page via `navigate_page` to `http://localhost:<port>`.
2. Check for runtime exceptions with `list_console_messages`.
3. Check for failed API calls (status 400/404/500) with `list_network_requests`.
4. Inspect the DOM hierarchy using `take_snapshot`.

### 2. UI Verification
After making layout or component edits:
1. Navigate to the relevant route.
2. Capture a screenshot with `take_screenshot` to confirm visual layout and styling.
3. Perform end-to-end interactions with `click` or `fill_form` and verify resulting state.

### 3. Lighthouse & Web Vitals Audit
1. Run `lighthouse_audit` on the target page.
2. Review diagnostics for Largest Contentful Paint (LCP), Interaction to Next Paint (INP), and Cumulative Layout Shift (CLS).
3. If performance issues are flagged, run `performance_start_trace`, interact with the page, and analyze with `performance_analyze_insight`.
