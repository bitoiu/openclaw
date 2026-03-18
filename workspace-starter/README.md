# Workspace Starter

This folder is a practical v1 starter for an OpenClaw personal assistant workspace.

If you want the quick explanation of what each file does for you and for the agent, read [FILE-GUIDE.md](FILE-GUIDE.md).

It is opinionated in a few ways:

- `SOUL.md` is stable and human-owned.
- `AGENTS.md` handles routing and mutation policy.
- `TOOLS.md` contains environment guidance, not hard security controls.
- `HEARTBEAT.md` stays intentionally small.
- `MEMORY.md` is an index and summary, not a dumping ground.
- Themed guides live behind `INDEX.md` files so the agent can route to them when needed.

## Privacy First

This starter intentionally avoids committing:

- full home address
- exact phone numbers
- exact birthdays
- inbox-specific private patterns
- secrets, API keys, tokens, or credentials

If you want those available to the agent, add them locally in files you do not commit, for example:

- `USER.private.md`
- `memory/people/family-private.md`
- `memory/private/contacts.md`

## Suggested Reading Order

At session start, the agent should treat these files as the core:

1. `SOUL.md`
2. `AGENTS.md`
3. `USER.md`
4. `TOOLS.md`
5. `HEARTBEAT.md`
6. `MEMORY.md`

Then route into:

- `docs/guides/*/INDEX.md`
- `memory/projects/*`
- `memory/people/*`
- `memory/decisions/*`

## Local-Only Details To Fill In Later

Useful private additions once the structure feels right:

- exact birthdays and reminders
- exact address and preferred local shops/services
- full email addresses and phone numbers
- specific approval thresholds beyond money
- regular school, childcare, and appointment routines
