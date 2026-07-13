---
name: systematic-review
description: Use when planning, conducting, auditing, updating, or reporting a biomedical systematic review, including protocol development, eligibility criteria, searching, screening, data extraction, risk-of-bias assessment, synthesis, certainty assessment, PRISMA reporting, and reproducibility.
---

# Systematic Review

## Overview

Conduct a transparent, reproducible biomedical systematic review from question formulation through reporting. Prespecify methods, preserve an audit trail, use design-appropriate appraisal, separate study findings from reviewer judgments, and align conclusions with evidence certainty. Fluent narrative is not a substitute for a defensible review process.

## When to use

Use this skill to:

- develop or audit a systematic-review protocol
- formulate PICO/PECO or another suitable eligibility framework
- coordinate database searching and supplementary search methods
- design deduplication, screening, extraction, and reviewer-resolution workflows
- select risk-of-bias tools by study design
- plan narrative synthesis or meta-analysis
- assess reporting biases and certainty of evidence
- prepare PRISMA-aligned manuscripts, abstracts, flow diagrams, checklists, and supplements
- update an existing systematic review

## When not to use

Do not use this skill to:

- label a narrative review “systematic” because it contains a database search
- fabricate registration, search results, exclusion counts, extracted data, risk-of-bias judgments, effect estimates, or GRADE ratings
- conduct meta-analysis without suitable data, assumptions, and a dedicated statistical workflow
- treat publication quality scores as substitutes for domain-based risk-of-bias assessment
- make clinical recommendations that exceed the evidence and certainty
- automate final inclusion, risk-of-bias, or certainty decisions without accountable human review

## Required inputs

Obtain or declare unresolved:

1. review question and decision context
2. population, intervention/exposure, comparator, outcomes, and eligible designs
3. protocol/registration status and review team roles
4. databases, platforms, coverage dates, and supplementary sources
5. language, publication status, date, and report-type restrictions
6. primary and secondary outcomes with time points
7. effect measures and synthesis plan
8. screening and extraction workflow
9. design-specific risk-of-bias tools
10. certainty framework, commonly GRADE for intervention outcomes
11. reporting guideline and relevant extensions
12. funding, conflicts of interest, and stakeholder involvement

When critical decisions are missing, draft options and mark them for protocol-level approval rather than deciding invisibly.

## Review states

Use explicit states:

- `CONCEPT`
- `PROTOCOL_DRAFT`
- `REGISTERED/PROTOCOL_FINAL`
- `SEARCHED`
- `SCREENING`
- `EXTRACTED`
- `APPRAISED`
- `SYNTHESIZED`
- `CERTAINTY_ASSESSED`
- `FINAL_REPORTED`
- `UPDATE_PENDING`

Do not describe a protocol draft as a completed review.

## Workflow

### 1. Confirm that a systematic review is appropriate

Clarify the decision problem, users, existing reviews, likely evidence base, resources, and timeline. Check whether an up-to-date high-quality review already answers the question and whether an update, overview, scoping review, or rapid review is more appropriate.

Avoid unnecessary duplication; document the added value of the new review.

### 2. Build the review team and governance

Assign accountable roles for:

- clinical/domain expertise
- information retrieval
- screening and extraction
- statistics/meta-analysis
- risk of bias and certainty assessment
- adjudication
- patient/public or stakeholder input where appropriate

Declare funding and conflicts. AI may assist organization, extraction drafts, or language, but final methodological judgments require named human responsibility.

### 3. Formulate the question and eligibility criteria

Define operational criteria for:

- population and condition/diagnostic criteria
- intervention or exposure
- comparator
- outcomes and measurement time points
- eligible study designs
- setting and context
- publication status, language, dates, and report types

Separate eligibility elements from search concepts. Not every eligibility criterion belongs in the search query.

### 4. Prespecify outcomes and effect measures

For each outcome specify:

- construct and accepted instruments/definitions
- primary or secondary status
- measurement time points/windows
- direction of benefit/harm
- preferred effect measure
- hierarchy for multiple instruments or analyses
- minimal important difference when available

Do not choose outcomes or time points after seeing favorable results without declaring the change.

### 5. Develop and register the protocol

Follow an appropriate protocol guideline, such as PRISMA-P, and register in a suitable registry when eligible, such as PROSPERO or another domain registry. Registration availability and eligibility must be verified at the time of submission.

Prespecify:

- objectives and eligibility
- information sources and full draft search strategy
- screening and extraction
- risk-of-bias methods
- synthesis and heterogeneity
- subgroup and sensitivity analyses
- reporting-bias assessment
- certainty assessment
- amendment process

Record every amendment with date, rationale, and whether it was made before or after relevant results were known.

### 6. Design the search

Use database-specific skills:

- `mesh-expert` for controlled-vocabulary mapping
- `pubmed-search-builder` for PubMed
- `wos-search-builder` for Web of Science

Involve an information specialist when feasible. Use multiple appropriate databases; one database is rarely sufficient for a comprehensive biomedical review.

Consider:

- trial registries
- reference lists and forward citation searching
- grey literature, preprints, dissertations, conference sources, or regulatory documents when relevant
- author/contact searches
- correction and retraction status

Record exact strategies, platforms, coverage, search dates, and all limits. Consider PRESS peer review of major strategies.

### 7. Manage records and deduplicate

Preserve raw exports. Record import files, database source, counts, deduplication software/version, algorithm/rules, and manual decisions.

Distinguish:

- duplicate database records
- multiple reports of one study
- conference abstract and full article
- preprint and journal publication
- correction/retraction notices

Deduplication must not erase study–report relationships.

### 8. Pilot and conduct screening

Develop a screening manual with operational inclusion/exclusion rules. Pilot a diverse sample and refine rules before full screening.

Use at least two independent reviewers for title/abstract and full-text screening when the review standard or protocol requires it. Resolve disagreements by consensus or a predefined adjudicator.

Record:

- decisions by reviewer
- conflict resolution
- full-text exclusion reason using one primary standardized category
- unavailable reports and retrieval attempts
- automation tools and human verification

Do not use inter-rater agreement as proof that eligibility criteria are scientifically valid.

### 9. Link reports to studies

Assign `study_id` and `report_id`. Use registrations, authors, sites, dates, sample sizes, interventions, and baseline characteristics to identify companion reports or overlapping cohorts.

Count studies and reports separately in the manuscript and flow diagram where appropriate.

### 10. Design and pilot data extraction

Use `reference-verifier` to confirm citations and `evidence-matrix` to structure extraction.

Pilot the form on diverse studies. Extract:

- design, setting, recruitment, funding, conflicts
- participant eligibility and baseline characteristics
- intervention/exposure and comparator details
- outcomes, instruments, time points, and analysis populations
- numerical results, uncertainty, and covariate adjustment
- author limitations and reviewer queries

Prefer duplicate independent extraction or extraction plus independent checking for critical outcomes. Preserve source locations and provenance labels.

### 11. Obtain missing information

Contact authors when important methods or outcome data are missing or ambiguous. Record dates, attempts, responses, and decisions. Do not impute or derive missing data without a prespecified, transparent method.

### 12. Assess risk of bias

Use a named, current, design-appropriate tool and version, for example:

- RoB 2 for randomized trials
- ROBINS-I for non-randomized intervention studies
- QUADAS-2 or a current appropriate successor/extension for diagnostic-accuracy studies
- PROBAST or an appropriate current tool for prediction-model studies
- tools suited to prevalence, qualitative, or other eligible designs when justified

Verify current guidance before use. Apply domain-level signaling questions and support judgments with quotes/source locations. Do not convert domain judgments into an unvalidated total quality score.

Risk of bias may be outcome/result specific; do not assume one judgment applies to every outcome and time point.

### 13. Decide whether studies can be synthesized

Assess clinical and methodological compatibility before statistical heterogeneity. Compare populations, interventions/exposures, comparators, outcome constructs, time points, designs, and bias.

If meta-analysis is inappropriate, conduct a structured narrative synthesis; do not pool merely because numerical data exist.

### 14. Conduct quantitative synthesis when justified

Prespecify and document:

- effect measure and direction
- unit-of-analysis handling
- fixed-effect or random-effects model and rationale
- heterogeneity estimators and uncertainty
- multi-arm, cluster, crossover, repeated-measure, and zero-event handling
- conversions and imputation
- software/package/version and code
- subgroup, meta-regression, and sensitivity analyses

Interpret I² alongside effect estimates, confidence/prediction intervals, number/size of studies, and clinical heterogeneity. Do not use a single I² cutoff as the sole pooling decision.

Use `meta-analysis` for detailed statistical execution.

### 15. Conduct structured synthesis without meta-analysis

Follow current SWiM guidance when applicable. Group studies by prespecified clinical/methodological features, report effect direction and magnitude where available, avoid vote counting by statistical significance, and explain how certainty was assessed.

Narrative synthesis must remain systematic and transparent.

### 16. Investigate heterogeneity

Use prespecified subgroup or meta-regression analyses only when scientifically plausible and sufficiently supported. Distinguish within-study from between-study comparisons. Treat exploratory findings as hypothesis-generating.

Avoid data-driven subgroup proliferation and causal claims from ecological study-level moderators.

### 17. Assess reporting biases and missing evidence

Consider:

- selective nonreporting within studies
- publication bias and small-study effects
- registry/protocol discrepancies
- unavailable full texts or outcomes

Funnel-plot asymmetry has multiple causes and is unreliable with few studies. Use statistical tests only when assumptions and study numbers are adequate. Do not equate symmetry with absence of bias.

### 18. Assess certainty of evidence

For each critical and important outcome, apply an appropriate framework, commonly GRADE for intervention effects. Consider risk of bias, inconsistency, indirectness, imprecision, publication bias, and applicable upgrading domains.

Provide explicit justifications and a Summary of Findings table. Certainty is outcome-specific, not one grade for the whole review.

Do not allow citation count, journal impact, or statistical significance to determine certainty.

### 19. Interpret findings

Separate:

1. magnitude and direction of effects
2. uncertainty and certainty of evidence
3. harms and benefits
4. applicability, equity, feasibility, and patient relevance
5. evidence gaps

Avoid “effective” or “safe” when estimates and certainty do not support such language. Absence of evidence is not evidence of absence.

### 20. Report using PRISMA

Use the current PRISMA statement and relevant extensions. Include:

- checklist
- flow diagram with reconciled counts
- complete search strategies
- protocol/registration and amendments
- study and report characteristics
- risk-of-bias results
- synthesis methods and outputs
- reporting-bias assessment
- certainty assessment
- limitations, funding, conflicts, data/code availability

Verify current checklist/extension versions when reporting.

### 21. Archive reproducible materials

Preserve:

- protocol and amendments
- exact searches and exports
- deduplication log
- screening decisions and exclusion reasons
- study/report linkage
- extraction forms and queries
- risk-of-bias support
- analysis code and outputs
- GRADE evidence profiles
- PRISMA materials
- data dictionary and version history

Protect copyrighted full text and participant-identifiable information.

### 22. Produce deliverables

Return:

1. protocol and amendment log
2. eligibility and outcome framework
3. search and deduplication record
4. screening manual and PRISMA counts
5. study/report linkage
6. evidence matrix
7. risk-of-bias tables
8. synthesis plan and results
9. reporting-bias assessment
10. certainty/Summary of Findings table
11. PRISMA-aligned manuscript sections and checklist
12. limitations and unresolved issues

## Safeguards

- Never fabricate any review count, identifier, extracted value, appraisal judgment, effect, or certainty rating.
- Never claim registration, duplicate screening, author contact, peer review, or database searching unless documented.
- Keep protocol decisions, post hoc changes, and exploratory analyses distinct.
- Preserve excluded full-text reasons and study–report linkage.
- Do not use AI as the sole final screener, extractor, risk-of-bias assessor, or GRADE decision maker.
- Do not equate reporting quality with risk of bias.
- Do not equate statistical significance with clinical importance.
- Verify live versions of standards, tools, registries, and software before final reporting.

## Common failure modes

| Failure | Correction |
|---|---|
| Search called systematic without protocol | Prespecify complete methods and audit trail |
| One database only without rationale | Search appropriate complementary sources |
| Every PICO element forced into query | Separate eligibility from retrieval concepts |
| Duplicate records confused with companion reports | Link reports under one study ID |
| One reviewer makes final decisions invisibly | Use independent review/adjudication per protocol |
| Exclusion reasons are vague or multiple | Use one primary standardized full-text reason |
| Generic quality score | Use design-appropriate domain-based RoB tool |
| One RoB judgment for all outcomes | Assess at appropriate result/outcome level |
| Pooling based only on available numbers | Assess clinical/methodological compatibility first |
| I² cutoff dictates pooling | Interpret heterogeneity multidimensionally |
| Vote counting by significance | Synthesize effect estimates/directions transparently |
| Funnel symmetry called no publication bias | Consider power and alternative causes |
| One GRADE rating for entire review | Rate each important outcome |
| Conclusions ignore low certainty | Align wording with estimate and certainty |
| Protocol deviations hidden | Maintain dated amendment/deviation log |

## Reproducibility record

Record:

- protocol/registration and amendments
- team roles, training, and conflicts
- eligibility manual
- all database and supplementary searches
- raw exports and deduplication
- screening decisions, conflicts, and exclusions
- study/report linkage
- extraction forms, provenance, and queries
- risk-of-bias tool/version, support, and adjudication
- synthesis decisions, code, software, and outputs
- heterogeneity and sensitivity analyses
- reporting-bias methods
- certainty judgments and explanations
- PRISMA checklist/flow
- data/code availability and version history

## Completion criteria

The review is complete only when:

- question, eligibility, outcomes, and methods were prespecified or deviations disclosed
- searches are reproducible and appropriately broad
- deduplication, screening, and report linkage are auditable
- extracted data are source-traceable and checked
- risk of bias uses current design-appropriate methods
- synthesis is clinically and methodologically defensible
- heterogeneity, missing evidence, and sensitivity are addressed
- certainty is assessed by outcome with explicit reasons
- conclusions match effect magnitude, uncertainty, and certainty
- PRISMA items, flow counts, strategies, and supplements reconcile
- all unresolved issues and limitations remain visible
