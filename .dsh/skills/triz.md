---
name: triz
description: Aule brainstorm technique - resolve the problem's core contradiction with a TRIZ inventive principle. Load before writing a TRIZ set for a shortlisted problem.
---

# TRIZ set

Purpose: find the non-obvious solution by resolving the problem's core
contradiction with an inventive principle, instead of iterating on the
obvious fix.

## How to apply

1. State the core contradiction in one line, as either
   - a technical contradiction: "improving <X> worsens <Y>", or
   - a physical contradiction: "<thing> must be <A> and <not-A> at once".
   Derive it from the tightest constraint in the problem statement, not
   from generalities.
2. Choose the 2-3 principles below that most directly attack that
   contradiction.
3. For each chosen principle, apply it to the contradiction and write the
   resulting candidate. The candidate must be a buildable hackathon
   project, not a restatement of the principle.
4. Keep the 3-5 strongest candidates.

## The 40 inventive principles

1. Segmentation - split into independent parts or modules
2. Taking out - remove the offending or seemingly essential part
3. Local quality - make each part serve its own optimum
4. Asymmetry - break a symmetric arrangement
5. Merging - combine similar operations in time or space
6. Universality - one part does several jobs
7. Nested doll - place one object inside another
8. Anti-weight - compensate the load with a useful effect
9. Preliminary anti-action - pre-apply the opposite of the harmful action
10. Prior action - pre-prepare what will be needed
11. Beforehand cushioning - prepare a safety margin in advance
12. Equipotentiality - change conditions so no lift or drop is needed
13. The other way round - invert: cause to effect, inside to outside
14. Spheroidity - curves over straight lines, rolling over sliding
15. Dynamics - make it adjustable at runtime instead of fixed
16. Partial or excess actions - deliberately overshoot the target
17. Another dimension - add a dimension: time, spectrum, layer
18. Mechanical vibration - make it oscillate, add a frequency
19. Periodic action - replace continuous with periodic pulses
20. Quick burst - do it fast enough that resistance cannot build
21. Skipping - pass through a harmful stage quickly
22. Blessing in disguise - use the harmful factor as the solution
23. Feedback - add sensing that corrects the output
24. Mediator - add an intermediate part to transfer the effect
25. Self-service - the object serves or maintains itself
26. Copying - a cheap replica (shadow, model) of the good object
27. Cheap short-lived substitutes - throwaway instead of durable
28. Mechanics substitution - replace mechanics with sensing, light, sound
29. Pneumatics and hydraulics - replace solid parts with fluids or gases
30. Flexible shells and thin films - replace rigid with flexible
31. Porous materials - make it porous, or add pores
32. Color - change color or transparency, or sense the change
33. Homogeneity - combine with objects of the same kind
34. Discarding - discard a part once it has served its purpose
35. Parameter changes - change state, concentration, or degree
36. Phase changes - change phase or representation
37. Thermal expansion - use expansion or contraction
38. Accelerated decomposition - speed up a reactive process
39. Inert atmosphere - replace the surrounding medium
40. Composite materials - replace a single material with a composite

## Software/agent shortcuts

For software and agent problems these map most naturally:
2 (take the constraint out of the system), 3 (local quality per user or
data class), 10 (pre-compute or cache ahead), 13 (invert: the agent or
data acts on the user), 15 (runtime adaptation instead of fixed config),
16 (generate more candidates than needed, then filter), 17 (add a time or
agent layer), 22 (make the failure mode the product), 23 (judge-feedback
loop), 25 (self-healing pipeline), 26 (shadow copy: a cheap replica for
simulation or testing), 28 (replace UI mechanics with ambient sensing),
33 (same-model ensemble or swarm), 35 (continuous degree instead of
binary flag). Pick from the full list of 40 when the shortcuts miss.

## Output

3-5 candidates. Each candidate: a one-line title naming the concrete
build, one line naming the principle and the contradiction it resolves,
one line on why a judge sees the non-obvious leap.