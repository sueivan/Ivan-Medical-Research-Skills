---
name: patent-builder
description: Use when planning, documenting, searching, auditing, drafting, or revising a biomedical, medical-device, digital-health, AI-assisted, diagnostic, pharmaceutical, biotechnology, traditional-medicine, or care-technology invention, including invention disclosure, prior art, patentability, technical contribution, embodiments, claims, figures, experiments, risk, and attorney handoff.
---

# Patent Builder

## Overview

Convert a genuine technical contribution into an evidence-backed invention disclosure and patent-drafting package. Define the closest prior art, objective technical problem, distinguishing technical features, technical effects, enabling disclosure, fallback positions, and claim support before polishing legal prose.

This skill supports invention development and attorney handoff; it is not a substitute for licensed patent counsel, freedom-to-operate analysis, legal opinion, filing, prosecution, or jurisdiction-specific advice.

## Operational dependencies

| Task | IMRS skill |
|---|---|
| Medical terminology and literature | `mesh-expert`, `pubmed-search-builder` |
| Scientific references | `reference-verifier`, `evidence-matrix` |
| AD inventions | `ad-research`, `ad-biomarker` |
| Scientific-method audit | `medical-reviewer` |
| Project evidence and feasibility | `grant-builder` |
| Multi-skill routing | `imrs-master` |

Patent prior-art searching requires current patent databases and classification systems in addition to scientific literature.

## When to use

Use this skill to:

- capture and structure an invention before disclosure or filing
- assess whether an idea is technical, enabled, novel, and plausibly inventive/nonobvious
- plan patent and nonpatent prior-art searches
- compare the invention with the closest references
- draft a technical disclosure, embodiments, figures, claim map, and fallback positions
- audit medical-device, AI, diagnostic, pharmaceutical, formulation, biomarker, care, rehabilitation, acupuncture/moxibustion, or traditional-medicine inventions
- prepare questions and materials for a patent attorney/agent
- analyze office-action or examiner objections with counsel

## When not to use

Do not use this skill to:

- guarantee patentability, validity, freedom to operate, infringement clearance, or commercial success
- fabricate patent numbers, priority dates, inventors, assignees, experiments, prototypes, performance, clinical evidence, or regulatory status
- file, assign, license, disclose, or contact third parties without authorization
- copy another patent's claims or confidential material
- publish enabling details before a filing strategy is considered
- treat a research idea, desired result, business rule, diagnosis, treatment concept, or use of AI as automatically patentable
- provide definitive jurisdiction-specific legal advice without current qualified counsel

## Required inputs

Obtain or mark unresolved:

1. invention title and concise problem statement
2. inventors and actual contributions, subject to counsel verification
3. invention date, development records, disclosures, publications, sales, demonstrations, grants, theses, and collaborations
4. target jurisdictions and filing deadline
5. product/process/system/composition/method category
6. closest known products, papers, patents, and competing approaches
7. essential technical features and alternatives
8. architecture, workflow, components, materials, parameters, data flow, and control logic
9. prototypes, experiments, comparative data, failures, and unexpected effects
10. clinical/technical use, users, environment, and constraints
11. ownership, employment, funding, contracts, and third-party materials
12. business goals and disclosure tolerance

Treat unpublished invention information as confidential. Ask the user not to provide unnecessary secrets when secure handling is uncertain.

## Patent-development states

Use:

- `IDEA`
- `CONFIDENTIAL_DISCLOSURE_CAPTURED`
- `OWNERSHIP_PENDING`
- `PRIOR_ART_SEARCHED`
- `PATENTABILITY_PROVISIONAL`
- `TECHNICAL_EFFECT_SUPPORTED`
- `ENABLEMENT_GAPS`
- `CLAIM_SET_DRAFTED`
- `COUNSEL_REVIEW_PENDING`
- `FILING_READY_BY_COUNSEL`
- `FILED_VERIFIED`
- `PUBLIC_DISCLOSURE_RISK`

Do not mark `FILED` without verified filing evidence.

## Workflow

### 1. Protect confidentiality and establish timeline

Record:

- conception and reduction-to-practice evidence
- prior publications, abstracts, theses, talks, posters, demonstrations, sales, offers, public repositories, grant disclosures, and social posts
- planned disclosure dates
- NDAs and collaboration agreements
- employment and funding obligations
- target jurisdictions

Public-disclosure and grace-period rules vary. Flag urgent counsel review; do not rely on a universal grace period.

### 2. Define the technical field and invention category

Classify:

- device/apparatus
- system/platform
- computer-implemented method
- signal/data-processing technique
- diagnostic or monitoring technology
- pharmaceutical composition/formulation
- biotechnology/reagent/assay
- manufacturing/preparation process
- therapeutic/rehabilitation/care technology
- combination invention

Jurisdictions differ on diagnostic, therapeutic, surgical, software, business-method, natural-product, biomarker, and medical-use claims. Verify exclusions and permitted claim formats with current counsel.

### 3. State the objective technical problem

Describe a concrete deficiency in prior technology, such as accuracy under defined conditions, calibration, latency, power, manufacturability, stability, contamination, placement error, safety, workflow burden, interoperability, or reproducibility.

Avoid framing the problem only as a business goal, desired health outcome, or “lack of intelligence.” The problem should connect to measurable technical constraints.

### 4. Decompose the invention

Create a feature hierarchy:

- essential features required for the core effect
- preferred features improving performance
- optional features
- alternative implementations
- replaceable modules/materials/parameters
- interfaces and dependencies
- steps and ordering constraints

Distinguish what has actually been built or tested from proposed embodiments.

### 5. Map technical effects

For each feature or combination state:

- mechanism linking feature to effect
- measurable outcome
- comparator/baseline
- test conditions
- evidence source
- uncertainty

Do not claim a surprising technical effect without comparative support. Aspirational effects should be labeled proposed.

### 6. Search scientific and product literature

Use IMRS literature tools for mechanisms, standards, devices, assays, interventions, and known limitations. Scientific novelty does not establish patent novelty; use findings to expand terminology and understand enablement.

Search products, manuals, standards, theses, conference proceedings, repositories, regulatory documents, websites, and other dated public disclosures where relevant.

### 7. Search patent prior art

Use authoritative patent databases and multiple strategies:

- keywords, synonyms, historical terminology, spelling variants
- inventor, applicant/assignee, and competitor
- CPC/IPC and jurisdictional classifications
- cited and citing patents
- patent families and legal events
- claims, abstracts, descriptions, drawings, and examples
- earliest priority and publication dates
- national/regional records and machine translations where needed

Record database, query, classification, date, filters, and result decisions. Search by technical features, not only the invention title.

### 8. Verify every cited patent and family

Record publication/application/grant identifiers correctly; distinguish them. Verify:

- title
- applicants/assignees and inventors
- priority, filing, publication, and grant dates
- family relationships
- jurisdiction and status
- relevant claims and passages
- date relevance to the proposed filing

Legal status is jurisdiction specific and can change. Do not infer enforceability from the presence of a document.

### 9. Identify the closest prior art

Select references based on overlapping purpose, structure, steps, features, and effect—not keyword similarity alone. For each, map every proposed claim element as:

- explicitly disclosed
- inherently disclosed
- arguably disclosed
- absent
- unclear/translation dependent

Do not call a feature novel merely because it is absent from an abstract; inspect claims and description.

### 10. Assess novelty provisionally

Ask whether one prior-art reference discloses every element of a claim in the required combination and arrangement. Assess each claim separately and apply jurisdiction-appropriate standards through counsel.

If a reference anticipates the broad concept, narrow to a genuine distinguishing combination rather than disguising the conflict.

### 11. Assess inventive step/nonobviousness provisionally

Analyze:

- closest prior art
- distinguishing features
- objective technical problem
- whether other references/common knowledge provide motivation
- reasonable expectation of success
- teaching away
- unexpected effect
- technical prejudice
- parameter optimization versus critical range
- combination synergy versus aggregation
- secondary considerations only with evidence and legal relevance

Do not assert inventiveness solely because no identical claim was found.

### 12. Assess patent-eligibility and exclusions

For software/AI, emphasize a concrete technical implementation and effect rather than an abstract rule or result. For diagnostics and treatment, distinguish measurement/device/system/composition claims from excluded medical-method formats as required by jurisdiction.

For natural products, genes, biomarkers, algorithms, and data, identify what human-made technical contribution may be claimed. Obtain current counsel advice.

### 13. Assess enablement and sufficiency

Ask whether a skilled person can practice the full claimed scope without undue experimentation. Provide:

- architecture or composition
- components/materials and relationships
- steps, parameters, ranges, units, and tolerances
- training/inference details for AI
- calibration and quality controls
- sample preparation and assay conditions
- manufacturing or preparation
- failure handling and safety
- examples and comparative examples
- alternatives across the intended scope

Do not claim broad functional results when only one narrow example is enabled.

### 14. Assess written support, clarity, and unity

Every claim term and range must have support in the description and figures. Define ambiguous terms and relative language. Check whether multiple concepts share one inventive concept or require divisional strategy.

Do not add unsupported features to claims late in drafting.

### 15. Design the claim strategy

Build claim categories appropriate to jurisdiction and invention:

- apparatus/device
- system
- computer-implemented method
- nontransitory computer-readable medium where permitted
- composition/formulation
- preparation/manufacturing method
- assay kit/reagent
- use or purpose-limited product format where permitted

Define:

- broad independent concept
- narrower independent alternatives
- dependent fallback features
- commercially valuable embodiments
- design-around coverage
- unity and support

Claims are legal instruments; final wording requires counsel.

### 16. Draft embodiments

Provide multiple enabling embodiments, not repetitive lists. Include:

- baseline embodiment
- alternative components/materials/algorithms
- parameter ranges and preferred subranges
- use environments and workflows
- edge cases and failure modes
- comparative examples
- prototype/test examples
- implementation sequence

Clearly distinguish prophetic/planned examples from actually performed experiments where legally permitted. Never present planned data as completed.

### 17. Handle AI and digital-health inventions

Document:

- input data and acquisition
- preprocessing and quality control
- feature representation
- model architecture/training objective
- training/validation/test separation
- inference workflow
- output and downstream technical control/action
- hardware, latency, memory, communication, privacy, and interoperability
- calibration, uncertainty, drift, fairness, and updates
- technical effect compared with baseline

Avoid claiming “AI-assisted decision” as a black box. A clinical recommendation alone may not establish a patentable technical contribution.

### 18. Handle biomarker and diagnostic inventions

Define analyte/feature, specimen, preanalytics, assay/platform, reagents, calibration, cutoff/rule, reference standard, intended use, population, controls, uncertainty, and validation.

Use `ad-biomarker` for AD applications. Do not claim clinical diagnosis, utility, or treatment selection beyond evidence.

### 19. Handle medical devices and care technologies

Define physical structure, dimensions/ranges, materials, connections, sensors, actuators, control, user interaction, placement, sterilization/cleaning, power, alarms, safety, maintenance, and use sequence.

For acupuncture, moxibustion, rehabilitation, or elder-care devices, distinguish technical localization, temperature/dose control, feedback, positioning, and safety from excluded treatment steps.

### 20. Handle pharmaceutical and traditional-medicine inventions

Specify composition, identity, purity/quality control, ratios/ranges, preparation, batch consistency, dosage form, stability, bioavailability, mechanism evidence, safety, and comparative results.

Literature-supported plausibility is not experimental proof. Network pharmacology and docking do not establish efficacy or enable broad therapeutic claims.

### 21. Create figures

Plan figures that support claims and enablement:

- system architecture
- device structure/exploded view
- process flow
- data flow
- control logic
- assay workflow
- preparation process
- user/environment interaction
- experimental setup

Use consistent reference numerals and terminology. Avoid decorative figures that add no technical disclosure.

### 22. Build a prior-art comparison matrix

Use one row per reference and one column per material feature. Add date, family, legal-status caveat, passage/claim, and analysis.

Separate:

- novelty conflict
- combination/inventive-step concern
- background relevance
- enablement support
- freedom-to-operate concern for counsel

Patentability and freedom to operate are different analyses.

### 23. Build an evidence plan

Identify missing experiments that materially support technical effect or scope:

- comparator and baseline
- sample size/replicates
- endpoints and units
- range/parameter sweep
- ablation or component contribution
- robustness and failure cases
- statistical method
- reproducibility

Prioritize filing-sensitive experiments with counsel; do not delay urgent filing without considering disclosure risk.

### 24. Audit ownership and third-party rights

Flag employment inventions, university policies, funding terms, collaboration agreements, material-transfer agreements, data licenses, open-source software, pretrained models, datasets, background IP, inventorship, and assignment.

Inventorship is claim dependent and legally determined. Do not assign inventorship from authorship, title, funding, supervision, or rank alone.

### 25. Prepare attorney handoff

Provide:

1. confidential invention disclosure
2. disclosure/priority timeline
3. inventor-contribution table
4. closest-prior-art matrix
5. novelty/inventive-step provisional analysis
6. feature–effect evidence map
7. claim tree and fallback positions
8. embodiments and figures
9. experiment/evidence gaps
10. ownership and third-party issues
11. jurisdictions, deadlines, and business objectives
12. unresolved legal questions

Label all legal conclusions provisional pending counsel.

## Technical contribution chain

```text
Prior-art deficiency
→ Objective technical problem
→ Distinguishing technical features
→ Mechanism/operation
→ Measurable technical effect
→ Enabling embodiments
→ Supported claim scope
```

If any link is missing, the draft is not ready.

## Safeguards

- Never fabricate patents, dates, legal status, claims, experiments, results, inventors, ownership, approvals, or commercial facts.
- Never guarantee novelty, inventive step, eligibility, validity, freedom to operate, or noninfringement.
- Never treat a keyword search as a complete prior-art search.
- Never equate scientific novelty with patent novelty.
- Never equate patentability with freedom to operate.
- Never describe planned experiments as completed.
- Never copy claims or confidential disclosures without permission.
- Never disclose or file externally without authorization.
- Never rely on universal medical-method or grace-period rules.
- Verify current jurisdictional law, database records, fees, deadlines, and status with qualified counsel.

## Common failure modes

| Failure | Correction |
|---|---|
| Idea described only by desired outcome | Define technical features and operation |
| “Uses AI” is the innovation | Identify concrete implementation and technical effect |
| Prior art searched by title only | Search features, classifications, families, and citations |
| Abstract used for novelty conclusion | Inspect claims and description |
| No identical patent found, so inventive | Analyze motivation, expectation, and combination |
| Broad function claimed from one example | Add embodiments/evidence or narrow scope |
| Treatment effect claimed from docking | Label hypothesis and require experiments |
| Biomarker correlation claimed as diagnosis | Define assay, cutoff, validation, and use |
| Patentability treated as FTO | Keep separate counsel analyses |
| Inventorship copied from paper authors | Map contribution to claims |
| Planned results written in past tense | Label prophetic/planned examples |
| Filing status inferred from a document | Verify official jurisdictional record |

## Reproducibility record

Record:

- confidential project ID and version
- disclosure and development timeline
- target jurisdictions and counsel questions
- search databases, queries, classifications, dates, and reviewers
- patent families, identifiers, priority dates, passages, and status dates
- nonpatent literature and product evidence
- feature–effect and claim-support maps
- experiments, raw data, comparators, and assumptions
- figure and terminology versions
- inventor contributions and ownership documents
- third-party materials/licenses
- unresolved risks and attorney decisions

## Completion criteria

The patent-development package is complete only when:

- confidentiality, disclosure timeline, ownership, and target jurisdictions are explicit
- objective technical problem and closest prior art are identified
- essential, optional, and alternative features are separated
- distinguishing features link to measurable technical effects
- patent and nonpatent searches are reproducible
- cited patents, families, dates, passages, and status caveats are verified
- novelty, inventive step, eligibility, and FTO are not conflated
- disclosure enables the proposed claim scope
- every claim concept has written and figure support
- embodiments, ranges, alternatives, failures, and comparative evidence are sufficient
- planned and completed experiments are distinguished
- claim tree and fallback positions are documented
- legal conclusions and filing decisions are reserved for qualified counsel
