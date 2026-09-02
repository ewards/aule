---
problem: amazonappdev2026
method: first-principles
date: 2026-09-02
---

Hard requirements: one primary track with a working demo; repo that actually calls the
track's required tech in code plus a visible license; demo video under 3 min (Fire TV:
on real device or simulator); product feedback on every tool/API/SDK used; judging on
tech implementation, design for the target device, potential impact, quality of the idea.

Inherited assumptions checked: four-device scope ("build across" implies but the track
choice allows one product), LLM in the loop, web dashboard, database/accounts, Bee
(hard: needs real Bee/Apple Watch data), mobile app, demo script.

1. **One Track, One Loop, Zero Hardware** — an Alexa+ MCP server (spec 2025-11-25,
   Streamable HTTP) with three tools forming one loop: Ring simulator event in, tool
   call through the server, confirmation out — wrapped in the track-permitted web app.
   - Discards: four-device scope, LLM, database, accounts, mobile, Fire TV, Bee.
   - Minimal yet judge-proof: every hard requirement — working demo, in-code MCP usage,
     short filmable video, product feedback — is met by a system with nothing to break.
   - Kill risk: a single-surface demo under-sells "genuine understanding of the ecosystem"
     against multi-device competitors.
2. **The 3-Button Test** — a Fire TV track app where every capability is reachable in
   three or fewer remote presses; the demo is a guided tour of that constraint, with the
   Ring simulator as the only second surface.
   - Discards: LLM, database, accounts, mobile, Bee; redirects the freed capacity at the
     weakest criterion — design, "intuitive interaction model for the target device".
   - Minimal yet judge-proof: a remote-first UX constraint is exactly what the design
     criterion measures, and it is trivially demonstrable in 3 minutes.
   - Kill risk: a narrow remote app may look small against "complete, coherent product
     experience" if it has only one screen.
3. **Caretaking on a Schedule** — one Alexa+ MCP server whose tools run a daily care
   routine: Ring door events start and end it, state is a single JSON file, and the
   confirmation surface is a Fire TV tile for a family member away from home.
   - Discards: LLM, database (schedule file), accounts, Bee, mobile; targets potential
     impact via the Ring track's explicit caretaking priority.
   - Minimal yet judge-proof: one credible audience (families caring for an aging parent),
     one small server, and the impact question answers itself in the demo video's first
     minute.
   - Kill risk: a care product built on simulated door events needs a sharp "why trust
     this" answer when judges ask about the real device path.
4. **The Pick-Up (redefinition)** — naive reading: build a demo spanning four products;
   minimal reading: prove one activity handed off between a device and the cloud. The
   product is the handoff itself — a Fire TV activity interrupted by a Ring event resumes
   exactly where it left off, with the MCP server as the handoff broker.
   - Discards: the assumption that "across devices" means four half-built features; keeps
     only Ring + Fire TV + Alexa+.
   - Minimal yet judge-proof: the seam between devices is the ecosystem story in one
     visible moment, which the quality-of-idea criterion rewards directly.
   - Kill risk: "resume where you left off" is a familiar pattern; the winning angle is
     the interruption event, not the resume.