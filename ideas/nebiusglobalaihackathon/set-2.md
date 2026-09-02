---
problem: nebiusglobalaihackathon
method: scamper
date: 2026-09-02
---

Naive solution: a general productivity chat copilot on Nemotron via Token Factory — the
"any app or agent someone would actually use" default, i.e., a well-polished wrapper.

- **C — Friction Reporter**: merge the product with the submission's mandatory tool
  feedback — an agent that drafts Nebius/NVIDIA friction notes (latency, model
  regressions, API dead ends) as a side effect of normal use, formatted for the feedback
  channel that the Most Valuable Feedback prize rewards.
  - Rationale: the required feedback line stops being a checkbox and becomes the feature;
    the same artifact earns the $100+swag prize.
  - Kill risk: feedback tooling is a meta-product — "credible, specific case for a real
    problem and audience" is hard when the audience is the platform itself.
- **A — The Skill Store**: borrow the VS Code extension model for the Personal AI track —
    reusable skills as small, versioned, installable packages; the demo is installing a
    skill and the assistant picking it up mid-conversation.
  - Rationale: "reusable skills" is named in the track description; a store mechanic
    turns the track's requirements into a product loop instead of a list of features.
  - Kill risk: a working install/version mechanism is real build scope; a faked store
    dies the moment a judge tries to install.
- **M — The Overnighter**: magnify "always-on" to its extreme — the assistant runs
    Nebius Serverless Jobs overnight (research, triage, drafts) and the demo opens with
    the morning report of work done while nobody was there.
  - Rationale: "always-on" is in the track name, and almost no demo shows work done
    before the demo starts; it makes persistence visible, not claimed.
  - Kill risk: the overnight run must be pre-recorded, which invites the "was this
    actually running?" question — the log trail has to be inspectable in the video.
- **E — The Repo Is the Onboarding**: delete accounts, dashboards, and state — the
    Personal AI is provisioned from a git repo (memory, skills, and tool bindings as
    files); clone, run, done; "own the whole thing" becomes literally a folder.
  - Rationale: removes the onboarding and login steps every assistant demo performs, and
    the ownership claim becomes something a judge can see in the repo.
  - Kill risk: config-as-code reads developer-niche; "someone would actually use" may
    not buy an assistant whose user interface is a directory.
- **R — Spec-Backwards Agent**: invert the coding agent's flow — start from a passing
    spec (generated from a two-line user story), then have the agent work backward to the
    implementation inside Token Factory Sandboxes, failing loudly until the spec passes.
  - Rationale: test-first is common, spec-first with the spec generated from a story and
    the implementation chased backward is the inverted shape judges remember.
  - Kill risk: spec generation is the weak link — a bad generated spec makes the backward
    build look broken rather than clever.

S (substitute) produced a grounded-retrieval copilot (Tavily answers, Nemotron only
summarizes) that did not clear the bar — retrieval-first assistants are a standard entry
this season.