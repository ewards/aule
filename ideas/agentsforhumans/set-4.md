---
problem: agentsforhumans
method: cross-domain
date: 2026-09-01
---

Core loop, domain-neutral: an unattended worker performs many small recurring tasks for a principal, doing most without bothering the principal and escalating only what genuinely needs the principal's judgment — under the pressure that asking about everything costs more than most mistakes, but one bad mistake costs trust.

## Candidates

1. **The Power of Attorney — the product is a scope document: per-task authority limits ("pay under $200", "reschedule within 48h") where out-of-scope actions are not merely "asked about" but not permitted at all, and the boundary itself is the visible artifact**
   - Source: legal/financial operations — the power of attorney, where an agent-in-fact signs within defined limits and anything beyond is outside authority, not a question.
   - Mapping: the permission model is the product; the demo's center beat is an action the scope blocks silently (and logs) rather than a modal asking the user.
   - Kill-risk: scope documents read as policy until they bite — the demo must show a real near-miss the scope caught, or it's a settings screen.

2. **Pay-When-Clear — chores run on schedule with a pre-flight gate at execution time (funds available? counterparty reachable? within quiet hours?), and the agent holds and notifies only on gate failure, not at setup time**
   - Source: retail banking — auto-pay with hold, where scheduled payments execute automatically unless a condition fails at the moment of payment, generating one notification.
   - Mapping: the agent's scheduling is unconditional; the condition checks move to the execution moment, so "only surfaces when there's a real decision" becomes a gate result, not a judgment call.
   - Kill-risk: too many gates produce gate-fatigue; the demo needs exactly three gates, each shown failing once, or the "calm" story collapses into an alert storm.

3. **The Stipend — a pre-agreed budget per chore category: anything inside the stipend executes autonomously, anything over it is batched into a weekly "owner statement" with one approve-all option**
   - Source: property management — the manager spends within a stipend per tenant issue and the owner signs the monthly statement, never the individual repair.
   - Mapping: the weekly statement is the only surface a human opens, and the approve-all pattern is what makes "background" feel like ownership rather than supervision.
   - Kill-risk: the statement must be genuinely skimmable (one screen, money on top); a statement that needs explaining fails the Presentation criterion in the demo.

4. **The 86 List — the agent ships with an explicit list of hard stops ("never delete", "never pay this vendor", "never contact the school about grades"); autonomy is defined as everything not on the list, and any 86'd action is blocked and logged**
   - Source: restaurant kitchens — the 86 list, the explicit list of items that must not go out, under which the whole line runs unattended.
   - Mapping: instead of a permission allowlist, a small, human-written denylist; the trust story inverts from "what may it do" to "what may it never do," and the log of blocked 86s is the accountability exhibit.
   - Kill-risk: a denylist feels scary if the demo shows the agent doing nothing but getting blocked — the balance must be 95% executed, 5% blocked, with the 5% being the memorable beats.

5. **Signature Parking — chores are completed up to the exact point where a human signature is required, then parked in a "staged for signature" tray with the finished artifact attached; the human's only action is to sign**
   - Source: logistics and delivery — the call-before-delivery rule, where the carrier does everything up to the doorstep and the recipient's one act is the handoff.
   - Mapping: the chore state machine gains a terminal-ish "awaiting signature" state; the demo shows the agent finishing a form, a letter, and a request so completely that the user's tap is literally just a signature.
   - Kill-risk: "parked" artifacts that still need the human to notice them recreate the very app-opening the problem rejects — the tray must be pushed (one digest), not pulled.