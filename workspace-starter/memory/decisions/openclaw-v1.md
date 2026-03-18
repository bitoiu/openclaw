# OpenClaw v1 Decisions

## Confirmed

- Full core stack is in scope for phase 1.
- WhatsApp is not an admin mutation channel.
- Telegram is the only chat-based admin surface.
- Local shell remains the highest-trust admin path.
- OpenClaw stays outside the shared monitoring network.
- Internal monitoring plus a host watchdog is preferred over broader network exposure.
- Morning briefing should go to WhatsApp by default.
- Personal Gmail drafting is allowed; bot-owned mailbox sends require explicit confirmation.

## Deferred

- Richer memory layers such as SQLite-backed transcript retention
- Voice sidecars
- Additional plugin-heavy automation beyond the core setup

## Why

- The first version should be understandable, secure, and easy to debug.
- The workspace structure should stay simple enough that the human owner can reason about it.
- Extra memory and plugin layers are only worth adding once the baseline assistant is genuinely useful.
