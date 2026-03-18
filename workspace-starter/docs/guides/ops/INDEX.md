# Ops Guide Index

## Use This Guide For

- homelab administration
- Docker and deployment work
- OpenClaw configuration
- security posture decisions
- monitoring and maintenance

## Working Rules

- Telegram or local shell only for admin mutations.
- No skill installs or config changes from WhatsApp.
- Prefer targeted service changes over broad disruptive actions.
- Preserve existing working infrastructure unless there is a clear reason to change it.
- For multi-user chat surfaces, isolate DM sessions and do not let all direct chats share one context.
- Use `/new` or `/reset` when a topic is unrelated or the session starts behaving strangely.
- Prefer local observability first: status, health, command logs, watchdogs, and local trace files.
- Use QMD from day one; defer `lossless-claw` until there is a real context-retention problem.

## Expand Later

- compose rollout notes
- service health expectations
- safe restart procedures
- post-update checks
