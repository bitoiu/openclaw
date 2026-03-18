# HEARTBEAT.md

## Every 2 hours

- Check for pending high-priority personal tasks that were explicitly delegated.
- Check tracked price-watch items if a watchlist exists.
- Check configured GitHub repos for new PRs, failed CI, or direct mentions if that integration is enabled.

## Daily at 08:00

- Prepare a morning briefing for WhatsApp:
  - today's calendar highlights
  - important unread email summary
  - urgent household reminders
  - relevant overnight alerts

## Weekly on Monday 09:00

- Prepare a weekly digest:
  - upcoming calendar events
  - unfinished delegated tasks
  - notable personal admin items
  - project follow-ups worth re-surfacing

## Heartbeat Rules

- Skip checks that have no configured integration.
- Keep the heartbeat lightweight and predictable.
- Do not let heartbeat tasks silently mutate admin config or install anything.
- Default proactive behavior is reminders and suggestions first, not autonomous irreversible action.
- Heartbeat exists partly to keep useful long-running context warm, but it should never be abused to fake activity.
