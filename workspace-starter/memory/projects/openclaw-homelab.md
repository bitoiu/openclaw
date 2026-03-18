# OpenClaw Homelab Rollout

## Goal

Deploy a secure personal assistant stack on the existing Dell homelab host without weakening the current media and monitoring setup.

## Current Direction

- Keep OpenClaw on isolated `agent` and `egress` networks.
- Do not attach OpenClaw to the shared monitoring network.
- Use internal health checks plus a host-side watchdog.
- Keep OpenClaw ports bound to localhost only.
- Do not create new WAN port forwards for OpenClaw.

## Admin Surface

- WhatsApp: family tasks, updates, approvals
- Telegram: chat-based admin
- Local shell on the Dell: highest-trust admin path

## Open Questions

- Which memory add-ons, if any, should be adopted after v1
- How much proactive behavior should heartbeat have by default
- Which guides should be promoted from draft to stable indexes
