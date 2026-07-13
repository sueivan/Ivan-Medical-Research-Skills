---
name: grant-builder
description: Use when planning, drafting, auditing, revising, or resubmitting biomedical, health, medical-education, social-science, policy, or interdisciplinary grant proposals, including funder-call compliance, evidence gaps, aims, logic models, methods, feasibility, team, timeline, budget, risk, ethics, impact, and reviewer-response strategy.
---

# Grant Builder

## Overview

Build fundable research proposals by aligning a verified funding call, a defensible evidence gap, specific aims, appropriate methods, feasible resources, and measurable outputs. Write only after the project logic is coherent. Fluent prose cannot repair a weak question, infeasible design, unsupported innovation claim, or noncompliant budget.

This skill supports biomedical, public-health, nursing, medical-education, social-science, policy, and interdisciplinary proposals. It must adapt to the actual funder and call rather than impose one universal template.

## Operational dependencies

| Task | IMRS skill |
|---|---|
| Medical terminology and searches | `mesh-expert`, `pubmed-search-builder` |
| WoS and bibliometric landscape | `wos-search-builder`, `medical-bibliometric-research` |
| Reference verification | `reference-verifier` |
| Evidence-gap matrix | `evidence-matrix` |
| Systematic/scoping evidence synthesis | `systematic-review`, `scoping-review` |
| AD-specific proposal routing | `ad-research`, `ad-biomarker` |
| Methodological audit | `medical-reviewer` |
| Multi-skill routing | `imrs-master` |

Use current authoritative funder documents for all unstable requirements.

## When to use

Use this skill to:

- assess fit between an idea and a funding call
- convert a broad topic into a fundable project
- draft or audit aims, rationale, innovation, methods, impact, timeline, budget, and team plan
- develop biomedical, clinical, community, education, policy, implementation, or mixed-methods proposals
- prepare resubmissions and reviewer responses
- build work packages, milestones, deliverables, risk registers, and logic models
- check internal consistency and compliance before submission

## When not to use

Do not use this skill to:

- fabricate preliminary data, publications, partnerships, approvals, facilities, quotations, budgets, letters, or institutional commitments
- claim eligibility or compliance without reading the current official call
- write a proposal before defining aims and methods
- use citation counts as proof of scientific importance
- overstate novelty because no identical title was found
- promise outcomes beyond time, sample, budget, expertise, or authority
- create fake collaborator endorsements or submit materials without user authorization
- replace ethics, biostatistical, legal, financial, or institutional review

## Required inputs

Obtain or mark unresolved:

1. official funding call, year, funder, program, and deadline
2. applicant eligibility, institution, career stage, prior awards, and restrictions
3. project idea, population/setting, and intended impact
4. funding amount, duration, allowable and prohibited costs
5. required sections, page/character limits, language, templates, and attachments
6. evaluation criteria and scoring weights
7. team, facilities, access, partnerships, and preliminary work
8. research design, sample, data sources, and analysis capacity
9. ethics, data governance, regulatory, and community requirements
10. required outputs and knowledge-translation pathway
11. previous proposal and reviewer comments for resubmission

Never infer current call rules from a previous year.

## Proposal states

Use:

- `IDEA`
- `CALL_VERIFIED`
- `ELIGIBILITY_VERIFIED`
- `CONCEPT_VALIDATED`
- `AIMS_LOCKED`
- `METHODS_FEASIBLE`
- `BUDGET_VALIDATED`
- `INTERNAL_REVIEWED`
- `FINAL_COMPLIANT`
- `SUBMITTED`
- `RESUBMISSION`
- `PENDING_EVIDENCE`
- `PENDING_INSTITUTIONAL_CONFIRMATION`

Do not promote a state without evidence.

## Workflow

### 1. Verify the funding call

Use the current official funder page and downloadable documents. Record:

- call title/code and year
- objective and thematic scope
- applicant/institution eligibility
- funding ceiling and duration
- required cofunding or partnerships
- allowable/prohibited costs
- page/word/character limits
- required forms and attachments
- submission system and deadline/time zone
- review criteria and weights
- ethics, open science, data, sex/gender, equity, or impact requirements

Mark every unresolved rule. Secondary summaries do not override the official call.

### 2. Conduct a go/no-go fit assessment

Score or narratively assess:

- thematic fit
- applicant eligibility
- problem significance
- evidence gap
- novelty/additionality
- methodological feasibility
- access to participants/data/settings
- team competence
- timeline and budget
- outputs and funder priorities
- competition and strategic value

Recommend `GO`, `GO_WITH_REDESIGN`, `HOLD`, or `NO_GO`, with reasons. Do not force a weak idea into an unsuitable call.

### 3. Define the problem precisely

Separate:

- population or system affected
- measurable problem
- causes/mechanisms or service failures
- evidence gap
- practice/policy gap
- consequence of inaction
- proposed contribution

Use verified data with jurisdiction and date. Avoid generic claims such as “the burden is increasing” without evidence and relevance to the project.

### 4. Build the evidence base

Use IMRS searches, `reference-verifier`, and `evidence-matrix` to map:

- established knowledge
- inconsistent findings
- methodological weaknesses
- underrepresented populations/settings
- implementation barriers
- relevant prior interventions or policies
- ongoing studies when relevant
- what this proposal adds

An evidence gap is not merely “few studies.” Explain why existing evidence cannot answer the decision problem.

### 5. Define the project theory

Choose and justify a scientific, behavioral, educational, implementation, service, policy, or systems framework when useful. Build a logic model:

```text
Inputs → Activities → Outputs → Short-term outcomes → Intermediate outcomes → Long-term impact
```

For mechanistic work, map target/pathway to measurable experiments. For interventions, map components to mediators and outcomes. For policy/service projects, map actors, mechanisms, context, and implementation.

Do not add a named theory decoratively; show how it changes design, measurement, or interpretation.

### 6. Write the central question and hypothesis

Make the question answerable within the award. Define exposure/intervention, comparator, outcome, time, population, and setting as applicable.

Use hypotheses only when the design genuinely tests them. Exploratory, qualitative, scoping, implementation, and policy projects may require objectives or propositions instead.

### 7. Build specific aims

Use 2–4 coherent aims for most proposals. Each aim should state:

- action
- population/data/material
- method
- outcome/deliverable
- contribution to the central objective

Check dependencies. A later aim must not collapse completely if an earlier aim is negative unless contingency plans exist.

Avoid aims that are merely project phases such as “review literature,” “collect data,” and “write report.”

### 8. Define innovation honestly

Classify innovation:

- conceptual
- methodological
- technological
- data/resource
- population/context
- implementation/service
- policy or partnership

Compare with the closest existing evidence or practice. State what is new, for whom, in what context, and why it matters. “First,” “novel,” and “unprecedented” require a defensible search and date.

Do not treat AI, big data, biomarkers, knowledge graphs, cross-regional collaboration, or traditional medicine as inherently innovative.

### 9. Select the study design

Match design to aim:

- experimental or quasi-experimental
- cohort, case-control, cross-sectional, diagnostic, prognostic
- qualitative or mixed methods
- implementation or hybrid effectiveness–implementation
- medical-education evaluation
- policy/document analysis
- Delphi/expert consensus
- evidence synthesis or bibliometric analysis
- laboratory, animal, omics, or translational research

State why alternatives are inferior. Route design-specific concerns through `medical-reviewer`.

### 10. Define population, setting, sampling, and recruitment

Specify source population, sites, eligibility, recruitment, representativeness, consent, retention, sampling frame, stratification, cluster structure, and vulnerable groups.

For qualitative work justify information power/sampling logic rather than borrowing power calculations. For surveys account for nonresponse and instrument validity.

Do not promise access without documented institutional or partner support.

### 11. Justify sample size

Use design-appropriate assumptions:

- primary outcome/effect
- alpha, power, variance/event rate
- clustering/repeated measures
- attrition and missing data
- model complexity/events per parameter
- diagnostic precision
- feasibility and recruitment rate

Provide sources or preliminary evidence. Mark calculations provisional until verified. Do not choose assumptions solely to fit the budget.

### 12. Define variables, outcomes, and measurements

State primary/secondary outcomes, time points, instruments, validity, reliability, minimal important difference where established, process outcomes, harms, implementation outcomes, and equity measures.

For biomarkers, route through `ad-biomarker` or appropriate validation methods. For education, distinguish satisfaction from learning, behavior, and patient/system outcomes.

Avoid excessive endpoints that make the project unfocused and multiply false-positive risks.

### 13. Write procedures and work packages

For every work package specify:

- aim
- tasks
- responsible person/team
- inputs and dependencies
- milestone
- deliverable
- acceptance criterion
- timing
- risk and contingency

Methods must be detailed enough to judge feasibility and reproduce core procedures.

### 14. Build the analysis plan

Align every aim and outcome with analysis. Address descriptive methods, models, assumptions, clustering/repeated measures, confounding, missing data, multiplicity, subgroups, qualitative analysis, mixed-method integration, sensitivity analysis, and software/code.

Prespecify primary contrasts. Use specialist biostatistical input when complexity warrants it. Do not promise “SPSS analysis” as a method.

### 15. Address rigor and reproducibility

As applicable include randomization, concealment, blinding, controls, batch effects, calibration, replication, preregistration, protocol, data dictionary, code versioning, quality assurance, monitoring, validation, negative results, and open-science plans.

For AI/model proposals address data leakage, external validation, calibration, fairness, drift, and deployment governance.

### 16. Address ethics, safety, and governance

Cover ethics approval, consent/waiver, privacy, data minimization, access control, retention, biospecimens, incidental findings, adverse events, trial monitoring, vulnerable groups, community engagement, AI governance, cross-border data, and benefit sharing as applicable.

Do not state approval has been obtained unless verified. Use “will seek” when pending.

### 17. Build the team and governance structure

Map each aim and risk to expertise. Define principal investigator, co-investigators, statistician, methodologist, clinical/community partners, data manager, project manager, trainees, advisory group, and decision rights as needed.

Do not invent collaborators or letters. Identify competence gaps honestly.

### 18. Demonstrate feasibility

Use real evidence:

- preliminary data
- prior recruitment
- existing cohort/database
- validated instrument
- pilot workflow
- facilities/equipment
- partner access
- team track record
- governance approvals in progress

Label unpublished preliminary data and its limitations. Do not create numbers to make feasibility look stronger.

### 19. Build timeline and milestones

Sequence dependencies, approvals, recruitment, data collection, analysis, dissemination, and buffers. Use milestones that demonstrate progress, not activities alone.

Flag unrealistic concurrency and approval delays. Ensure outputs occur within the award period.

### 20. Build a compliant budget

Map each cost to a task and justification. Include personnel effort, equipment, consumables, participant costs, travel, services, software/data, dissemination, indirect costs, and contingency only when allowed.

Check rates, quantities, arithmetic, currency, tax, overhead, cost sharing, and funding caps against current rules. Do not bury unsupported costs or underbudget essential work.

### 21. Build a risk register

For each risk record probability, impact, early warning, prevention, contingency, owner, and residual risk. Include recruitment, data quality, technology, ethics, partnerships, staff, supply, regulatory, timeline, budget, and dissemination risks.

Contingencies must preserve the scientific question where possible, not simply promise success.

### 22. Define outputs, outcomes, and impact

Separate:

- outputs: datasets, tools, papers, reports, training, protocols
- short-term outcomes: knowledge, capability, adoption, process changes
- longer-term impact: health, service, policy, equity, economic or scientific change

Create beneficiaries, pathways, responsible actors, timing, indicators, and assumptions. Do not claim long-term patient or policy impact that the project cannot measure.

### 23. Plan dissemination and knowledge translation

Tailor products to researchers, clinicians, patients, caregivers, communities, educators, managers, or policymakers. Include open access/data/code where appropriate, stakeholder co-production, implementation tools, policy briefs, training, and feedback loops.

Publication alone is not an impact plan.

### 24. Draft in reviewer order

Write so reviewers can answer:

1. Is the problem important and aligned?
2. Is the gap real?
3. Are aims clear and coherent?
4. Are methods valid and feasible?
5. Is the team capable?
6. Are budget and timeline credible?
7. Will outputs matter?
8. Are risks and ethics controlled?

Use evidence and project logic rather than promotional language.

### 25. Run consistency and compliance audits

Cross-check:

- title, summary, aims, methods, outcomes, timeline, budget, and impact
- sample sizes across sections
- staff effort and work packages
- equipment and procedures
- milestones and deliverables
- references and preliminary data
- page limits, filenames, attachments, signatures, and submission fields

Use `medical-reviewer` for methodological pressure testing.

### 26. Prepare resubmission

Map every reviewer comment to:

- issue
- response
- proposal change
- location
- evidence
- unresolved disagreement

Respond respectfully but do not accept technically incorrect feedback without analysis. Explain reasoned disagreement and add clarification or sensitivity work where appropriate.

## Aim–method alignment table

| Aim | Question/hypothesis | Design/data | Sample | Primary outcome/deliverable | Analysis | Milestone | Risk/contingency |
|---|---|---|---|---|---|---|---|

## Safeguards

- Never fabricate funding rules, eligibility, preliminary data, citations, approvals, facilities, collaborators, letters, budgets, or institutional commitments.
- Never claim submission or registration without evidence.
- Never state “first” or “novel” without a dated search and comparator.
- Never let aims, outcomes, analysis, timeline, or budget contradict one another.
- Never use AI, biomarkers, knowledge graphs, or large data as innovation by label alone.
- Never hide methodological weaknesses behind polished language.
- Never promise causal, clinical, policy, or economic impact beyond the design.
- Never perform external submission or communication without authorization.
- Verify current call, regulatory, ethics, and institutional requirements live.

## Common failure modes

| Failure | Correction |
|---|---|
| Writing from an old call | Verify current official documents |
| Broad social/medical problem, vague gap | Define decision-relevant evidence gap |
| Aims are project phases | Write answerable scientific aims |
| Innovation is “uses AI” | Compare technical and practical difference |
| Methods do not answer aims | Build aim–method alignment table |
| Sample assumptions chosen to fit budget | Use evidence-based calculation and redesign honestly |
| Too many outcomes | Prioritize primary and essential secondary outcomes |
| Named theory is decorative | Link constructs to activities and measures |
| Partnerships asserted without evidence | Mark pending and obtain real confirmation |
| Budget is lump-sum prose | Map quantity, rate, task, and rule |
| Timeline lists activities only | Add dependencies, milestones, and acceptance criteria |
| Publications called impact | Define adoption and beneficiary pathway |
| Reviewer comments accepted blindly | Evaluate technical validity and respond with evidence |

## Reproducibility record

Record:

- call URL/documents, version, access date, and extracted rules
- eligibility verification
- go/no-go assessment
- search strategies and verified evidence
- gap and innovation comparisons
- aims and version history
- methods, assumptions, calculations, and software
- preliminary-data provenance
- team and partner confirmations
- ethics/regulatory status
- budget sources, rates, arithmetic, and rule mapping
- timeline, milestones, risks, and contingencies
- internal reviews and changes
- submission state and final files

## Completion criteria

The proposal is complete only when:

- current call and eligibility are verified
- problem, gap, intended use, and funder fit are explicit
- aims are coherent, answerable, and feasible
- innovation is comparative and evidence based
- design, sample, measurements, and analyses align with aims
- preliminary evidence and partnerships are authentic and qualified
- ethics, data, safety, and governance are credible
- team expertise covers every critical task
- timeline, milestones, budget, and risks are internally consistent
- outputs and impact pathways are measurable and bounded
- references and numerical claims are verified
- all required sections, limits, attachments, and submission fields comply
- unresolved institutional or external dependencies remain visible
