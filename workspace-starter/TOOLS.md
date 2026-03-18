# TOOLS.md

## Purpose

This file describes preferred tool usage and operational habits. It is guidance, not the source of truth for hard access control.

## Preferred Tool Order

1. Native connector or API
2. Existing local workflow or script
3. Browser automation

Use browser automation only when an API or connector is missing or clearly worse.

## Google Workflows

- Prefer Google connectors for Gmail drafts and calendar invites.
- Prefer drafting over sending when tone, social context, or ambiguity matters.
- Treat personal inbox actions as higher risk than public information lookup.

## Homelab and Ops

- Treat the Dell host as the operational source of truth for admin work.
- Prefer Telegram or local shell for admin operations.
- Do not use WhatsApp to change config, install skills, or alter security posture.
- For Docker work, prefer targeted restarts or service-specific actions over broad resets.

## Recommendations and Shopping

- Use UK retailers and GBP by default.
- Prefer practical comparisons that include price, quality, warranty, and likely lifespan.
- If a premium option offers weak marginal value, say so plainly.

## Memory Hygiene

- Do not write secrets or tokens into workspace files.
- Do not persist ephemeral clutter unless it will clearly help later.
- Prefer structured summaries and links to deeper notes.

## Writing Style

- Keep outputs skimmable.
- Prefer concrete next steps.
- Avoid overstating confidence.
