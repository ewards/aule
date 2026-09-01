---
problem: agentsforhumans
method: scamper
date: 2026-09-01
---

Naive solution: a "personal productivity assistant" with a chat UI where the agent books meetings and sets reminders — i.e., precisely the "another app people open and manage" the problem statement rejects.

## Candidates

1. **Inferred Onboarding — no task-setup forms: the user exports one week of calendar plus inbox, the agent infers the routine chores, and the first thing it surfaces is a proposed "I'll take these over" list to approve**
   - E (Eliminate): removes the onboarding/config step the problem statement assumes — configuring an agent app is itself one of the repetitive chores.
   - Kill-risk: inference from a one-week sample is noisy; the proposed list must be mostly right or the demo's first beat is an embarrassment.

2. **Hours-Returned Meter — the agent times every completed chore against a stated baseline and surfaces the saved time as a weekly "hours returned" figure in the digest**
   - C (Combine): merges the required background agent with the impact meter nobody asked for — the problem statement frames the harm as "drains real time," so the meter makes the payoff measurable in the demo and the "why it matters" video section.
   - Kill-risk: time-saved numbers read as invented unless the per-chore baseline is a simple, defensible rule; state the rule in the video.

3. **Autopilot Mode — the agent operates like aircraft autopilot: continuous background execution with anomaly-only alerts in three deviation levels (advisory / caution / warning), and a one-tap "takeover" that hands any chore back to the human**
   - A (Adapt): borrows the trust mechanics of high-stakes automation (autopilot + cockpit alerts) and adapts them to personal chores.
   - Kill-risk: three-tier alert machinery is build-heavy; if all three tiers appear in the 5-minute video the Presentation criterion (easy to follow) suffers — demo one tier well.

4. **Renewal Sentinel — the smallest version taken to one high-value chore: the agent watches subscription/insurance/membership renewals across the user's accounts, silently confirms standard renewals, and surfaces only on price increases, ending trials, or expiring free periods**
   - M (Modify/Magnify): magnifies the mirror question — the smallest agent that still demonstrates the core — onto the single most universally felt "quiet charge" pain.
   - Kill-risk: real payment access is out of scope; the account integrations must be mocked so convincingly that "working project" survives, or Technical Implementation and Design both drop.

5. **Front-Desk Agent for a Food Bank — the Good-Neighbor track reshaped: a nonprofit coordinator's repetitive chores (shift confirmations, no-show reassignment, donor thank-yous, supply reminders) run in the background, surfacing one weekly digest plus urgent no-show alerts**
   - P (Put to other uses): same background-agent pattern, second user (nonprofit front desk) where one chore serves many people, so impact per chore multiplies.
   - Kill-risk: group workflows (rosters, no-shows) are broad; it must narrow to 2-3 chore types demoed end-to-end or the Presentation criterion breaks under breadth.