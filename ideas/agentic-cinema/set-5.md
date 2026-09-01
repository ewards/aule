---
problem: agentic-cinema
method: inversion
date: 2026-09-01
---

Top 3 failure modes for this submission: (1) constraint violation — the repo names the partner in the README but never imports and calls it in code (the submission rule is explicit and verifiable), or the license/assets/run-instructions are missing, which a partner+Google panel can check in minutes; (2) non-reproducible runtime — the judge follows the run instructions and hits a broken GCP setup or exhausted partner quota, so "actual runtime use" fails at the moment it is tested; (3) "script, not agent" — the determinism emphasis is over-applied until the panel sees a cron script with an LLM sprinkled in, failing "functional agent" and the Gemini Enterprise Agent Platform requirement.

## Candidates

1. **Compliance Gate — a CI check in the repo that proves the rules: it scans the code for real partner imports and runtime calls (not README strings), verifies the license file, verifies a clean local run from the run instructions, and verifies the video is under 3 minutes; the check's output ships with the submission**
   - Failure mode removed: constraint violation — the binary, most-checkable way to lose here.
   - Mechanism: the submission includes the gate's own report, so the panel sees the rules verified before they spend time verifying them.
   - Kill-risk: a self-audit can read as performative; it must be proven real by deliberately breaking a rule on a branch and showing the gate catching it.

2. **Judge-in-10 — one command (`make run`) executes the entire pipeline end to end against the partner service with pinned data snapshots, prints the artifact, and logs every partner call with request and response; the demo video is recorded from that exact command**
   - Failure mode removed: non-reproducible runtime — the judge's 10-minute reproduction is the acceptance test, and the call log proves runtime use even if a quota is exhausted on the day.
   - Mechanism: pinning everything except the partner connection makes the run deterministic while the partner calls stay real.
   - Kill-risk: over-pinning can look like "not real" — at least one live, unpinned partner call must happen inside the recorded video.

3. **Agent-ness Budget — the pipeline is labeled step by step: a minimum of three genuine Gemini agent decisions (tool choice, branching, synthesis) each marked "agent step" with visible decision logs, while the deterministic parts are explicitly labeled "rails," and orchestration runs on the Gemini Enterprise Agent Platform rather than a hand-rolled loop**
   - Failure mode removed: "script, not agent" — the panel sees exactly where the agent decides and where the rails guarantee determinism, satisfying both halves of the judging emphasis at once.
   - Mechanism: the decision log is the exhibit — the video shows an agent step choosing a tool, not just a call firing.
   - Kill-risk: if the agent decisions are thin (one classification, one summary), the panel sees through the labels — the decision points must be load-bearing, or cut them and make the rest cleaner.

4. **Data-Spine Gate (anti-pitch) — the entry judges do not want is an "M&E analytics dashboard" with the partner logo in the hero and the partner API called from one line: a tech showcase with the partner as wallpaper. The smallest provably-not-that design is one rule: every field in the artifact must trace to a partner call, with a field-to-query map committed to the repo**
   - Failure mode removed: partner-as-wallpaper — the failure that makes the partner's own judges look away.
   - Mechanism: the artifact is a decision memo (not a dashboard), and the trace map turns "integration depth" from a claim into a file the panel can open.
   - Kill-risk: field-level tracing forces the artifact into a fixed template; the template must still look like a real M&E deliverable or the trace map becomes a cage of labels.