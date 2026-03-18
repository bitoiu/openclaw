# File Guide

This guide explains what each workspace file is for, what the agent should do with it, and what you should treat as human-owned.

## Core Files

### `SOUL.md`

What it is:
- the assistant's stable identity, tone, and non-negotiable behavioral boundaries

For you:
- this is where you decide what kind of assistant you want
- change this rarely and deliberately

For the agent:
- read it early
- follow it consistently
- do not rewrite it without asking

### `AGENTS.md`

What it is:
- the operating manual for how the assistant should route context and update the workspace

For you:
- this is where you define file ownership, routing order, and mutation policy
- if the assistant is behaving messily, this is often the first file to tighten

For the agent:
- use it to decide what to read next
- use it to decide what it may edit vs what requires approval

### `USER.md`

What it is:
- your shared, durable preferences and defaults

For you:
- put stable preferences here
- keep sensitive private facts out unless the repo is definitely private

For the agent:
- use it as the default lens for recommendations, drafting, and tradeoff decisions
- do not treat it as a place to dump new transient facts

### `USER.private.md`

What it is:
- the local-only private companion to `USER.md`

For you:
- keep exact address, phone numbers, birthdays, VIP contacts, and other sensitive details here
- this file should normally stay uncommitted

For the agent:
- read it only when the task actually needs those details
- never expose or copy its contents unnecessarily

### `TOOLS.md`

What it is:
- guidance about preferred tools and workflows

For you:
- describe preferred connectors, APIs, and operational habits
- do not use it as a secrets file or as the only security control

For the agent:
- prefer the tool order and workflow hints described here
- do not treat it as permission to bypass higher-level safety rules

### `HEARTBEAT.md`

What it is:
- a short checklist for recurring proactive work

For you:
- keep it boring, small, and predictable
- only put recurring tasks here that you genuinely want repeated

For the agent:
- use it for periodic summaries, reminders, and checks
- do not turn it into a giant task dump

### `MEMORY.md`

What it is:
- a curated long-term summary and link hub

For you:
- think of this as the assistant's front page of remembered context
- keep it short and durable

For the agent:
- read it early
- update it sparingly with stable facts and links
- do not dump raw logs here
- if QMD is enabled, treat it as a better search layer over these files, not as a reason to write sloppier memory

## Memory Folders

### `memory/people/`

What it is:
- per-person preferences and context

For you:
- this is where different family members can have different defaults
- this is the right place for a `Sophonn` settings file

For the agent:
- load the relevant person file based on who is interacting
- avoid forcing one person's defaults onto another

### `memory/projects/`

What it is:
- ongoing project context

For you:
- use this for things like the OpenClaw homelab rollout
- let projects have their own evolving notes without polluting core files

For the agent:
- update this during real work
- keep project detail here instead of bloating `MEMORY.md`

### `memory/decisions/`

What it is:
- important choices and why they were made

For you:
- this prevents re-arguing the same thing repeatedly

For the agent:
- check here before revisiting prior decisions
- write concise decision summaries after the user confirms them

## Guide Indexes

### `docs/guides/*/INDEX.md`

What it is:
- themed routing hubs

For you:
- create one per theme, such as household, communications, and ops
- keep them short and link outward

For the agent:
- use them to narrow context before reading deeper files
- do not treat them as giant encyclopedias

## Ownership Summary

Human-owned, change carefully:
- `SOUL.md`
- `AGENTS.md`
- `USER.md`
- `TOOLS.md`
- `HEARTBEAT.md`

Shared but agent-writable with care:
- `MEMORY.md`
- `memory/projects/*`
- `memory/decisions/*`
- dated working notes

Private and normally uncommitted:
- `USER.private.md`
- anything under `memory/private/`
