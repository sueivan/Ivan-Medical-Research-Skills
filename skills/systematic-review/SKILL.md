---
name: systematic-review
description: Use when planning, conducting, auditing, updating, or reporting a biomedical systematic review, with or without meta-analysis, including protocol development, eligibility, comprehensive searching, deduplication, screening, study linkage, extraction, risk of bias, synthesis planning, certainty assessment, PRISMA reporting, and reproducibility.
---

# Systematic Review

## Overview

Manage an end-to-end biomedical systematic review using prespecified, reproducible methods. Route vocabulary, searches, reference identity, and extraction to operational IMRS skills; enforce independent review processes and design-appropriate appraisal; distinguish planned, executed, verified, and pending steps.

A systematic review is defined by its methods, not by the presence of a meta-analysis. Do not perform quantitative pooling merely because numerical data exist.

## Operational dependencies

Use these completed IMRS skills when applicable:

| Task | Skill |
|---|---|
| MeSH and free-text mapping | `mesh-expert` |
| PubMed strategy | `pubmed-search-builder` |
| WoS Core Collection strategy | `wos-search-builder` |
| PMID/DOI and publication-status verification | `reference-verifier` |
| Study/report linkage and data extraction | `evidence-matrix` |
| Methodological audit | `medical-reviewer` |
| Multi-skill routing | `imrs-master` |

The dedicated `meta-analysis` and `grade-assistant` modules are not assumed operational in v0.1.0. When pooling or certainty assessment is required, use current recognized methods transparently, obtain specialist input when needed, and label unfinished outputs `PENDING` rather than inventing results.

## When to use

Use this skill to:

- determine whether a question is suitable for systematic review
- write or audit a protocol
- manage searches, screening, extraction, appraisal, synthesis, certainty, and reporting
- conduct intervention, diagnostic, prognostic, prevalence, etiology, qualitative, mixed-methods, or other biomedical reviews
- update an existing review
- review a systematic-review manuscript or thesis
- produce a reproducibility and decision trail

## When not to use

Do not use this skill to:

- label a selective narrative search as systematic
- fabricate protocol registration, search dates, record counts, screening decisions, data, risk-of-bias judgments, pooled effects, or certainty ratings
- treat bibliometric analysis as a substitute for evidence synthesis
- automatically pool clinically or methodologically incompatible studies
- apply one risk-of-bias tool to all study designs
- use reporting compliance as proof of low bias
- conduct a scoping review under a systematic-review label when the objective is only to map concepts and gaps

## Required inputs

Obtain or mark unresolved:

1. review question, rationale, and intended decision use
2. review type and eligible study designs
3. PICOS/PECO or other design-appropriate framework
4. eligibility criteria and synthesis unit
5. databases, registries, grey-literature sources, citation searching, and date coverage
6. protocol/registration status
7. reviewer team and independence procedures
8. outcomes, time points, effect measures, and synthesis plan
9. risk-of-bias tools and certainty framework
10. available citations, full texts, exports, and previous-review materials
11. software and reporting requirements
12. conflicts of interest, funding, and deadline

Consequential ambiguity about population, intervention/exposure, outcome, design, or time point must be resolved before final eligibility and synthesis decisions.

## Review states

Preserve these states across the project:

- `PLANNED`
- `REGISTERED`
- `SEARCHED`
- `DEDUPLICATED`
- `SCREENED_TITLE_ABSTRACT`
- `SCREENED_FULL_TEXT`
- `INCLUDED`
- `EXTRACTED`
- `RISK_OF_BIAS_ASSESSED`
- `SYNTHESIZED`
- `CERTAINTY_ASSESSED`
- `REPORTED`
- `UPDATED`
- `PENDING`
- `DEVIATION_RECORDED`

Never promote a state without evidence.

## Workflow

### 1. Confirm systematic-review suitability

Check whether the question requires exhaustive identification and critical synthesis of studies. Clarify whether the objective concerns effects, association, diagnosis, prognosis, prevalence, experiences, implementation, or another construct.

If the objective is broad mapping of concepts, methods, or gaps, consider a scoping review. If evidence is sparse, a systematic review may still be appropriate, but the likely synthesis must be realistic.

### 2. Formulate the question and objectives

Use the framework matched to the review type. Define:

- population and setting
- intervention/exposure/index test or phenomenon
- comparator/reference standard when applicable
- outcomes and measurement hierarchy
- study designs
- time points
- effect or association of interest
- primary and secondary objectives

Avoid changing the question after seeing results without recording an amendment.

### 3. Develop eligibility criteria

Specify operational inclusion and exclusion criteria before screening:

- participants and diagnostic criteria
- interventions/exposures and comparators
- outcomes and minimum reporting requirements
- designs and publication forms
- setting, dates, language, and geography when justified
- minimum follow-up
- handling of preprints, abstracts, theses, protocols, corrections, retractions, and multiple reports

Do not exclude studies solely because findings are negative, nonsignificant, inconvenient, or not freely accessible.

### 4. Write and register the protocol

The protocol should include rationale, question, eligibility, information sources, complete draft strategies, study-selection process, extraction fields, risk-of-bias tools, effect measures, synthesis models, heterogeneity, subgroups, sensitivity analyses, reporting-bias methods, certainty assessment, conflicts, funding, and dissemination.

Use a suitable registry such as PROSPERO only when the review is eligible and registration is actually accepted. A submitted or drafted registration is not a registered protocol. Preserve registration ID and date only after verification.

Record amendments with date, rationale, timing relative to results, and impact.

### 5. Design the search

Build concept maps with `mesh-expert`, PubMed strategies with `pubmed-search-builder`, and WoS strategies with `wos-search-builder`. Translate each database independently; do not replace field tags mechanically.

For comprehensive reviews, consider multiple bibliographic databases plus registries, grey literature, backward/forward citation searching, related-article searches, and author contact as appropriate.

Document every source, platform, coverage, exact query, filters, and search date. Consider peer review of key strategies, such as PRESS, when feasible.

### 6. Execute, export, and archive searches

For every source save:

- exact executed query
- date and database coverage
- result count actually observed
- export content and format
- batch ranges and filenames
- search history or screenshot/text export
- rerun/update procedure

Label unexecuted strategies `DRAFT—NOT RUN`. Archive raw exports read-only when possible.

### 7. Deduplicate records reproducibly

Preserve raw records and perform staged deduplication using identifiers first, then normalized title, authors, year, journal, and manual review. Distinguish duplicate database records from multiple reports of one study.

Record:

- software/version
- import totals by source
- automated and manual rules
- number removed at each stage
- ambiguous decisions
- final unique-record count

Never infer missing PRISMA counts.

### 8. Pilot screening

Create a decision manual from eligibility criteria. Pilot a diverse sample with all reviewers, discuss disagreements, refine definitions, and update the protocol/manual transparently.

Agreement statistics may supplement but do not replace consensus and calibration. Do not invent kappa values.

### 9. Screen titles and abstracts

Use at least two independent reviewers when required by the protocol/standard. Preserve each reviewer's decision before consensus. Use `include`, `exclude`, and `uncertain` states.

AI or automation may prioritize or assist only under a declared, validated workflow. Do not allow opaque automation to make unreviewed final exclusions.

### 10. Retrieve and screen full texts

Document retrieval attempts. Apply prespecified criteria independently. Assign one primary, specific exclusion reason per excluded full text for the PRISMA report, while retaining detailed notes internally.

Do not use vague reasons such as “irrelevant” when a specific criterion applies. Preserve unavailable reports separately from confirmed ineligible reports.

### 11. Link reports to underlying studies

Use `reference-verifier` and `evidence-matrix` to distinguish studies from reports. Link journal articles, preprints, abstracts, follow-ups, secondary analyses, protocols, registrations, corrections, and retractions.

Avoid double counting participants and outcomes. Define which report supplies each datum.

### 12. Extract data

Pilot a structured form. Extract study methods, participants, interventions/exposures, comparators, outcomes, time points, analysis populations, numerical results, funding, conflicts, and author-reported limitations.

Use provenance states such as `REPORTED`, `CALCULATED`, `INFERRED`, `NOT_REPORTED`, `UNCLEAR`, and `ABSTRACT_ONLY`. Duplicate or checked extraction must match the protocol.

Record conversions, formulas, assumptions, graph extraction, imputation, and author contacts. Never estimate unavailable data merely to enable pooling.

### 13. Assess risk of bias

Select current, design-appropriate, domain-based tools. Examples may include current RoB tools for randomized trials, ROBINS tools for nonrandomized interventions, QUADAS tools for diagnostic studies, PROBAST-type tools for prediction models, and appropriate tools for prevalence, prognosis, qualitative, animal, or other designs.

Verify the current tool/version and guidance. Use at least two reviewers when planned. Record signaling-question support, domain judgments, overall rules, disagreements, and consensus.

Do not replace risk of bias with reporting scores, journal metrics, or a homemade total score.

### 14. Decide whether studies can be synthesized together

Assess clinical, methodological, and statistical compatibility:

- population and baseline risk
- intervention/exposure definition and dose
- comparator/reference group
- outcome construct, instrument, and direction
- time point
- design and bias
- effect measure and analysis

Create synthesis groups before examining favorable results. If pooling is inappropriate, use structured synthesis without meta-analysis and explain why.

### 15. Plan and conduct quantitative synthesis when justified

Predefine:

- effect measure and data scale
- fixed/common-effect or random-effects rationale
- estimator and confidence-interval method
- unit-of-analysis handling
- multiarm, cluster, crossover, repeated-measure, and zero-event methods
- heterogeneity assessment
- subgroup and meta-regression hypotheses
- sensitivity analyses
- small-study/reporting-bias methods
- software/version and code

Do not select models or exclusions because they produce significance. Report effect estimates and uncertainty; do not interpret I² alone as clinical heterogeneity. Seek statistical expertise for complex synthesis.

If quantitative synthesis has not actually been executed and verified, mark it `PENDING—NO POOLED RESULT`.

### 16. Conduct structured synthesis without meta-analysis

When pooling is unsuitable, organize studies by prespecified synthesis groups and report direction, magnitude, uncertainty, risk of bias, and consistency. Follow current synthesis-without-meta-analysis guidance where applicable.

Avoid vote counting by statistical significance. Do not state that “most studies were significant” as a substitute for effect synthesis.

### 17. Investigate heterogeneity and robustness

Distinguish clinical, methodological, and statistical heterogeneity. Conduct only prespecified or clearly labeled exploratory analyses. Interpret subgroup differences using interaction evidence rather than separate within-group significance.

Sensitivity analyses may examine risk of bias, missing data, model choices, effect measures, assumptions, duplicate populations, and influential studies. Record all deviations.

### 18. Assess reporting bias and missing evidence

Use methods appropriate to the number and type of studies. Funnel plots and tests have limitations and should not be used mechanically with very few studies or substantial heterogeneity.

Compare protocols, registrations, methods, and reported outcomes. Consider nonpublication, selective outcome reporting, unavailable results, and time-lag bias.

### 19. Assess certainty of evidence

Apply an outcome-specific recognized framework such as GRADE when appropriate. Separate certainty from risk of bias. Record judgments and reasons for domains such as risk of bias, inconsistency, indirectness, imprecision, publication bias, and applicable upgrading considerations.

Do not assign a certainty rating without evidence supporting every domain judgment. Until the dedicated module is operational and assessment is performed, label ratings `PENDING—NOT ASSESSED`.

### 20. Interpret findings

Distinguish:

- no evidence from evidence of no effect
- statistical from clinical importance
- certainty from effect magnitude
- association from causation
- direct from indirect evidence
- absence of studies from absence of a problem

Conclusions must reflect risk of bias, certainty, applicability, harms, and limitations. Avoid clinical recommendations that exceed the evidence.

### 21. Report using current standards

Use the current PRISMA statement and relevant extensions for the review type. Ensure consistency across abstract, flow diagram, eligibility, search appendix, study characteristics, risk-of-bias figures, syntheses, certainty tables, discussion, registration, funding, data, and code.

Provide complete search strategies for every database, not only keywords.

### 22. Update and archive

Define search rerun dates and update triggers. Archive protocol versions, raw exports, deduplication logs, screening decisions, full-text exclusions, extraction forms, bias judgments, analysis code, outputs, and manuscript versions.

## Design-specific adaptations

### Intervention reviews

Define intervention components, dose, comparator, adherence, harms, estimand, and relevant follow-up. Use appropriate trial and nonrandomized bias tools.

### Diagnostic accuracy reviews

Define index test, target condition, reference standard, threshold, setting, flow/timing, and intended clinical role. Avoid simplistic pooling of sensitivity/specificity without appropriate models.

### Prognostic and prediction-model reviews

Separate prognostic-factor, prognostic-model, and model-impact questions. Extract events, candidate predictors, model development/validation, calibration, discrimination, and applicability.

### Prevalence reviews

Define population frame, case definition, sampling, response, period, and transformation/model choices. Assess representativeness and measurement validity.

### Qualitative evidence synthesis

Define phenomenon and context, appraise methodological limitations appropriately, preserve participant voice and author interpretation, and use a justified synthesis method. Do not convert themes into prevalence.

## Safeguards

- Never fabricate registrations, counts, studies, reasons for exclusion, data, bias judgments, pooled estimates, or certainty ratings.
- Never label a search comprehensive without documented sources and executed strategies.
- Never treat one reviewer plus unvalidated AI as independent duplicate screening.
- Never exclude studies based on direction, significance, citation count, journal prestige, or full-text price.
- Never double count multiple reports or overlapping populations.
- Never pool solely because studies report the same named outcome.
- Never use p values or significance vote counting as the synthesis.
- Never equate reporting quality with risk of bias.
- Never state “no effect” from nonsignificance alone.
- Never hide protocol deviations.
- Protect confidential, copyrighted, and participant-level information.

## Common failure modes

| Failure | Correction |
|---|---|
| Question changes after seeing results | Record amendment and timing |
| One database called comprehensive | Justify sources and add complementary searching |
| Copying one syntax across databases | Translate and test each platform |
| Missing exact search strategies | Preserve executed queries and dates |
| PRISMA counts reconstructed by guess | Use deduplication and screening logs |
| One row per paper | Link multiple reports to one study |
| One reviewer silently excludes | Preserve independent decisions and consensus |
| Generic full-text reason | Use one specific eligibility reason |
| Quality score replaces bias domains | Use design-appropriate risk-of-bias tools |
| Pooling incompatible studies | Define synthesis groups and justify pooling |
| I² alone determines heterogeneity | Assess clinical and methodological differences |
| Vote counting significance | Synthesize effect direction, magnitude, and uncertainty |
| GRADE assigned from memory | Document outcome-specific domain judgments |
| Retraction ignored | Verify publication status and handle transparently |

## Required project records

Maintain:

- protocol and amendment log
- search-source and strategy log
- raw export manifest
- deduplication log
- screening decision log
- full-text exclusion log
- study/report linkage table
- extraction forms and data dictionary
- risk-of-bias judgments
- synthesis plan, code, and outputs
- certainty assessment
- PRISMA counts and checklist
- conflicts, funding, and contributor roles

## Completion criteria

The review is complete only when:

- question, design, eligibility, outcomes, and synthesis units are explicit
- protocol status and amendments are transparent
- searches are reproducible and execution states are accurate
- deduplication and screening counts derive from records
- screening and extraction procedures match the protocol
- reports are linked to underlying studies
- risk of bias uses appropriate current tools
- synthesis groups and pooling decisions are justified
- quantitative results are actually executed and reproducible, or marked pending
- certainty ratings are evidence-supported, or marked pending
- PRISMA reporting is internally consistent
- conclusions reflect effect, uncertainty, bias, certainty, and applicability
- all deviations and unresolved limitations remain visible
