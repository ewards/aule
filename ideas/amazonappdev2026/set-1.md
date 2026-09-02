---
problem: amazonappdev2026
method: triz
date: 2026-09-02
---

Core contradiction: "improving demo reliability (one device, one story) worsens the
cross-device ecosystem breadth that judging rewards (genuine understanding of the
ecosystem, connecting the living room, the front door, and the cloud)."

1. **Household Event Bus** — a shared event timeline ("doorbell rang", "workout started",
   "movie night") published once and rendered by each device's own lane: Ring pushes the
   clip, Bee pushes the body context, Fire TV renders the combined picture, an Alexa+
   MCP server orchestrates the transitions.
   - Principle 17 (another dimension) over the device-silo vs ecosystem-breadth contradiction.
   - Judge leap: "multi-device hackathon" stops meaning four half-built apps and becomes one
     visible thread across four screens.
2. **Pre-Built Connector Kit, Glue in the Window** — all four fragile integrations (MCP
   server, Ring SDK scene, Fire TV app shell, Bee data ingestion) built and tested ahead of
   time; the hackathon project is only the composition layer, documented in the submission
   as what changed during the window.
   - Principle 10 (prior action) over the window-reliability vs four-SDK-scope contradiction.
   - Judge leap: the team treats Amazon's own stack as pre-prepared infrastructure and
     submits only the new glue as new work — the "what changed" line does the selling.
3. **Shadow Home** — a headless simulated household (Ring simulator, Fire TV/Vega
   simulator, Bee simulated data feed) that runs the whole demo without physical hardware,
   plus a friction-log exporter so any evaluator can replay the project.
   - Principle 26 (copying) over the real-device-credibility vs reliable-judging contradiction.
   - Judge leap: the demo sells itself as reproducible infrastructure rather than a
     one-off live run.
4. **Door-to-Screen Care Loop** — Ring's noisy doorbell stream becomes the product: an
   Alexa+ agent interprets door events against Bee health data (a walker's routine
   confirmed) and shows a live confirmation tile on Fire TV.
   - Principle 22 (blessing in disguise) over the thin-standalone-demo-per-track
     contradiction — the under-used event stream is the connector.
   - Judge leap: Ring's "caretaking" priority, Bee's "personal productivity" priority, and
     Alexa+ orchestration land as one story instead of three.
5. **Friction Log as the Demo** — the project continuously logs its own friction (latency,
   failed API calls, dead-end interaction states) to a live dashboard the judges watch,
   making the up-to-10% friction-log bonus the centerpiece of the demo video.
   - Principle 23 (feedback) over the demo-vs-honest-engineering-report contradiction.
   - Judge leap: the friction log inverts from paperwork to live product feature.