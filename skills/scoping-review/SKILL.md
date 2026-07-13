---
name: scoping-review
description: Use when planning, conducting, auditing, updating, or reporting a health or biomedical scoping review, including PCC question formulation, protocol development, comprehensive searching, study selection, data charting, evidence mapping, consultation, and PRISMA-ScR reporting.
---

# Scoping Review

## Overview

Conduct a transparent, reproducible scoping review to map the extent, range, characteristics, concepts, definitions, methods, and gaps in an evidence field. Use PCC to align the question, eligibility, search, charting, and synthesis. A scoping review maps evidence; it does not automatically establish effectiveness, causality, or certainty.

## When to use

Use this skill to:

- clarify key concepts, definitions, or boundaries
- map evidence types, populations, interventions/exposures, outcomes, settings, methods, or implementation features
- identify research gaps and inform a future systematic review
- examine how research is conducted in a broad or emerging field
- develop or audit a scoping-review protocol
- coordinate searching, screening, charting, stakeholder consultation, and evidence mapping
- prepare JBI-aligned methods and PRISMA-ScR reporting
- update an existing scoping review

## When not to use

Do not use this skill when the primary objective is to:

- estimate a pooled treatment effect or diagnostic accuracy
- determine comparative effectiveness, safety, causality, or certainty
- produce clinical recommendations from heterogeneous mapped evidence
- avoid critical appraisal solely because the review question actually requires effectiveness assessment
- call a narrative summary a scoping review without a protocol, reproducible search, selection process, and charting framework
- fabricate registration, searches, counts, screening, charted data, consultation, or appraisal

If the question is narrow, intervention-focused, and decision-oriented, consider `systematic-review` instead.

## Required inputs

Obtain or declare unresolved:

1. review rationale and intended users
2. PCC: Population, Concept, and Context
3. objectives and review questions
4. eligible evidence types and information sources
5. date, language, geographic, publication-status, and report-type limits
6. protocol/registration status
7. databases, platforms, grey-literature and supplementary sources
8. screening and conflict-resolution workflow
9. charting fields and planned evidence maps
10. whether critical appraisal is needed and why
11. whether stakeholder consultation is planned and its role
12. reporting guideline and relevant extensions

Do not force intervention-review PICO terminology when PCC better represents the objective.

## Review states

Use:

- `CONCEPT`
- `PROTOCOL_DRAFT`
- `REGISTERED/PROTOCOL_FINAL`
- `SEARCHED`
- `SCREENING`
- `CHARTED`
- `MAPPED`
- `CONSULTED`
- `FINAL_REPORTED`
- `UPDATE_PENDING`

Do not describe planned screening or consultation as completed.

## Workflow

### 1. Confirm that a scoping review is appropriate

Use a scoping review when the purpose is to map a broad, complex, heterogeneous, or emerging evidence base; clarify concepts; examine methods; identify gaps; or assess whether a later systematic review is feasible.

Check existing reviews to establish added value. Consider systematic review, evidence map, realist review, qualitative synthesis, umbrella review, or narrative review if those methods better match the question.

### 2. Establish governance and stakeholder purpose

Define team roles for domain expertise, information retrieval, screening, charting, synthesis, adjudication, and stakeholder engagement. Declare funding and conflicts.

Identify how the map will be used. “Identify gaps” is insufficient unless gap criteria and users are defined.

### 3. Formulate PCC and questions

Define:

- **Population:** participants, conditions, users, organizations, or other units
- **Concept:** phenomenon, intervention, exposure, model, policy, definition, method, or issue being mapped
- **Context:** care setting, geography, culture, system level, discipline, or environment

Develop one primary question and focused subquestions. Every charting field should answer a question; every question should have a planned output.

### 4. Define eligibility operationally

Specify:

- PCC boundaries
- evidence types, such as primary studies, reviews, guidelines, policy documents, reports, theses, conference materials, or other grey literature
- study designs and publication types
- years, languages, countries/regions, and settings
- full-text availability policy and retrieval attempts

Do not mix empirical studies, protocols, reviews, commentaries, and policies without tagging evidence type and assigning a clear analytical role.

### 5. Develop and register a protocol

Use current JBI scoping-review guidance and an appropriate protocol/reporting framework. Register or openly post the protocol, for example in OSF or another appropriate repository, when feasible. Verify current platform and guidance requirements.

Prespecify:

- rationale, PCC, objectives, and eligibility
- information sources and search strategy
- deduplication and screening
- study/report linkage
- charting fields and piloting
- critical appraisal decision
- synthesis, visualization, and gap identification
- consultation methods, if planned
- deviations and amendments

Maintain a dated amendment log.

### 6. Design a comprehensive search

Search breadth should reflect the map's purpose. Coordinate:

- `mesh-expert`
- `pubmed-search-builder`
- `wos-search-builder`

Include appropriate disciplinary databases, grey-literature sources, organizational websites, registries, citation chasing, and hand searching. Engage an information specialist when feasible.

Use search concepts derived from PCC, but do not automatically include all Context terms if they would severely reduce sensitivity. Document pilot searches and final exact strategies.

### 7. Manage records and deduplicate

Preserve raw exports and record database/source counts. Document deduplication software/version, rules, and manual decisions. Distinguish duplicate records, companion reports, preprint/publication pairs, and updated documents.

### 8. Develop and pilot screening guidance

Create operational inclusion and exclusion rules with examples. Pilot title/abstract and full-text screening on diverse records, revise the manual, and update earlier decisions when definitions change.

Use independent reviewers and adjudication as prespecified by the protocol/current methodological guidance. Record reviewer decisions, conflicts, final decisions, and one primary full-text exclusion reason.

AI-assisted prioritization or classification must be disclosed and human-verified; it cannot be reported as independent human screening.

### 9. Link evidence sources

Assign stable `source_id`, `study_id`, and `report_id` where applicable. Link multiple reports from the same project, program, trial, dataset, policy, or guideline. Avoid counting reports as independent evidence units.

### 10. Design and pilot the charting form

Use `reference-verifier` to confirm identity and `evidence-matrix` principles for traceability. Charting is often iterative, but changes must be logged.

Possible fields include:

- bibliographic and evidence type
- aims and design
- population and sample
- concept definition/theoretical framework
- context and setting
- intervention/exposure/model characteristics
- methods, instruments, and data sources
- outcomes or themes examined
- implementation, feasibility, acceptability, equity, and stakeholder involvement
- key findings relevant to the mapping question
- author-identified and reviewer-identified gaps
- funding and conflicts

Separate author-reported content, reviewer coding, and inferred categories.

### 11. Decide on critical appraisal

Critical appraisal is not universally mandatory in scoping reviews. Decide based on purpose:

- omit when the objective is purely descriptive mapping and explain why
- include when interpretation depends on trustworthiness, feasibility of a later review, policy relevance, or gap prioritization

If included, use design-appropriate tools and explain how results influence synthesis. Do not exclude evidence based on quality unless prespecified and justified.

### 12. Chart data transparently

Use explicit provenance labels:

- `REPORTED`
- `CODED_BY_REVIEWER`
- `INFERRED`
- `NOT_REPORTED`
- `UNCLEAR`
- `ABSTRACT_ONLY`

Preserve source locations and reviewer/checker identities when feasible. Do not infer missing characteristics or treat missing as absence.

### 13. Map the evidence

Select outputs that answer the questions:

- counts by year, country, evidence type, design, population, concept, and context
- cross-tabulations of population × concept × context
- intervention/model taxonomy
- outcome or measurement maps
- geographic or care-setting maps
- research-method maps
- implementation/equity maps
- evidence-gap matrices

Denominators must be explicit. Avoid percentages when categories overlap unless clearly stated.

### 14. Conduct qualitative descriptive synthesis

Summarize definitions, conceptual frameworks, methodological patterns, and findings relevant to the map. Do not transform heterogeneous evidence into an effectiveness conclusion.

If thematic analysis is conducted, report coding procedures, reviewer involvement, iterative changes, and whether themes are descriptive or interpretive.

### 15. Identify gaps responsibly

Classify gaps, for example:

- no evidence located
- few studies
- narrow populations or contexts
- inconsistent definitions or measures
- absence of longitudinal/comparative/implementation research
- limited reporting
- evidence exists but trustworthiness is uncertain

A low publication count does not automatically mean a research priority. Consider importance, feasibility, equity, burden, existing ongoing work, and stakeholder priorities.

Do not recommend more research generically; specify what evidence is missing and why it matters.

### 16. Conduct stakeholder consultation when planned

Clarify whether consultation is intended to refine questions, identify sources, interpret findings, validate maps, or prioritize gaps. Document participant selection, consent/ethics considerations, methods, analysis, and influence on decisions.

Do not claim consultation if only informal comments were received. Do not mix stakeholder views with published evidence without labeling the source.

### 17. Report with PRISMA-ScR

Use the current PRISMA extension for scoping reviews and relevant JBI guidance. Include:

- protocol/registration and amendments
- PCC and eligibility
- complete search strategies
- selection process and flow diagram
- evidence-source characteristics
- charting process and fields
- critical appraisal decision/results when applicable
- mapped results and synthesis
- limitations, funding, conflicts, and data availability

Ensure all counts reconcile.

### 18. Interpret within scope

State what the review can support:

- distribution and characteristics of evidence
- concepts and definitions used
- methods and measurement patterns
- evidence concentrations and gaps

State what it usually cannot support without additional methods:

- pooled effectiveness
- comparative safety
- causal effects
- certainty-based recommendations

### 19. Archive reproducible materials

Preserve protocol, amendments, exact searches, raw exports, deduplication, screening decisions, exclusion reasons, source linkage, charting forms, coding dictionaries, appraisal records, analysis scripts, maps, PRISMA materials, and version history.

Protect copyrighted full texts and sensitive consultation data.

### 20. Produce deliverables

Return:

1. PCC protocol and amendment log
2. eligibility and screening manual
3. search and deduplication records
4. PRISMA-ScR flow counts
5. evidence-source linkage
6. charting form and data dictionary
7. evidence map and cross-tabulations
8. appraisal output, if justified
9. gap taxonomy and prioritization caveats
10. consultation record, if conducted
11. PRISMA-ScR manuscript/checklist
12. limitations and unresolved issues

## Safeguards

- Never fabricate searches, counts, screening, charted values, appraisal, consultation, or gaps.
- Never present mapped evidence as proof of effectiveness or causality.
- Do not claim comprehensive global coverage without appropriate multilingual and grey-literature searching.
- Keep evidence types and units explicitly stratified.
- Preserve author statements, reviewer coding, and inference separately.
- Do not use AI as the sole final screener or unverified data charter.
- Report protocol deviations and iterative charting changes.
- Verify current JBI and PRISMA-ScR guidance before final reporting.

## Common failure modes

| Failure | Correction |
|---|---|
| Broad narrative review labeled scoping | Use protocol, reproducible selection, and charting |
| PCC is vague | Operationalize Population, Concept, and Context |
| Every PCC element forced into search | Balance retrieval sensitivity and eligibility screening |
| Evidence types mixed together | Tag and stratify source types/roles |
| Duplicate reports counted as studies | Link sources under study/project IDs |
| Charting form never piloted | Pilot, revise, and back-update |
| Blank cells | Use explicit missingness/provenance states |
| Critical appraisal omitted without rationale | Explain purpose-based decision |
| Appraisal used as a generic score | Use design-appropriate tools/domains |
| Publication counts called research priority | Add importance, equity, feasibility, and stakeholder context |
| Percentages use unclear denominators | State denominator and overlapping categories |
| Consultation claimed from informal feedback | Report actual method and role honestly |
| Effectiveness conclusions from mapped studies | Restrict claims to evidence distribution/characteristics |
| Search called comprehensive with narrow sources | Disclose database, language, and grey-literature limits |

## Reproducibility record

Record:

- protocol/registration and amendments
- PCC, questions, and eligibility manual
- team roles, conflicts, and stakeholder purpose
- all searches, raw exports, and deduplication
- screening pilots, decisions, conflicts, and exclusions
- study/project/report linkage
- charting form versions and provenance rules
- coding framework and data dictionary
- appraisal decision, tool, and influence
- synthesis and visualization methods
- gap definitions and prioritization criteria
- consultation methods and influence
- PRISMA-ScR checklist/flow
- data/code availability and version history

## Completion criteria

The review is complete only when:

- the rationale and PCC questions are explicit
- eligibility, searches, and selection are reproducible
- source types and units are correctly classified and linked
- charting fields were piloted and remain traceable
- mapped outputs directly answer prespecified questions
- critical appraisal is included or omitted with a defensible rationale
- gaps are defined and not equated automatically with priorities
- consultation is reported only if actually conducted
- conclusions remain within mapping objectives
- PRISMA-ScR items, strategies, counts, and supplements reconcile
- deviations, limitations, and unresolved issues remain visible
