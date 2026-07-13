---
name: scoping-review
description: Use when planning, conducting, auditing, updating, or reporting a biomedical scoping review that maps concepts, evidence types, methods, populations, contexts, implementation, definitions, or research gaps using protocol-driven searching, screening, data charting, synthesis, and PRISMA-ScR reporting.
---

# Scoping Review

## Overview

Manage a transparent, reproducible scoping review that maps the breadth, characteristics, concepts, definitions, methods, and gaps of a body of evidence. Use a protocol, broad but bounded eligibility, comprehensive searching, independent selection, iterative data charting, and structured descriptive or qualitative synthesis.

A scoping review is not a lower-quality systematic review. It answers a different type of question. Meta-analysis, effect estimation, and certainty grading are usually not its primary purpose.

## Operational dependencies

Use completed IMRS skills where applicable:

| Task | Skill |
|---|---|
| Concept and MeSH mapping | `mesh-expert` |
| PubMed strategy | `pubmed-search-builder` |
| WoS strategy/corpus | `wos-search-builder` |
| Citation and publication-status verification | `reference-verifier` |
| Data-charting architecture | `evidence-matrix` |
| Methodological audit | `medical-reviewer` |
| Multi-skill routing | `imrs-master` |

## When to use

Use this skill when the objective is to:

- clarify key concepts, definitions, or terminology
- map evidence types, designs, populations, settings, interventions, outcomes, or methods
- examine how research is conducted in an emerging or heterogeneous field
- identify evidence gaps and future research needs
- summarize implementation, policy, educational, service, or interdisciplinary evidence
- assess whether a later systematic review is feasible
- audit or update an existing scoping review

## When not to use

Do not use this skill when the primary objective is to:

- estimate a pooled treatment effect
- determine comparative effectiveness or harms
- make a clinical recommendation based on certainty of effects
- answer a narrowly focused causal question better suited to systematic review
- perform bibliometric network analysis without evidence screening and charting
- call an unsystematic narrative overview a scoping review
- fabricate protocol registration, search dates, counts, inclusion decisions, charted data, or research gaps

## Required inputs

Obtain or mark unresolved:

1. rationale and intended use of the map
2. Population/Participants, Concept, and Context (PCC)
3. review questions and subquestions
4. eligible evidence sources and publication forms
5. date, language, geographic, or setting boundaries and their rationale
6. information sources and grey-literature needs
7. protocol/registration status
8. reviewer team and independent selection process
9. charting fields and planned synthesis/display
10. whether stakeholder consultation is planned
11. software, reporting guideline, and update plan

The concept must be broad enough to map but bounded enough to screen consistently.

## Review states

Preserve:

- `PLANNED`
- `REGISTERED_OR_POSTED`
- `SEARCHED`
- `DEDUPLICATED`
- `SCREENED_TITLE_ABSTRACT`
- `SCREENED_FULL_TEXT`
- `INCLUDED`
- `CHARTED`
- `MAPPED`
- `CONSULTED`
- `REPORTED`
- `UPDATED`
- `PENDING`
- `DEVIATION_RECORDED`

Never promote a state without evidence.

## Workflow

### 1. Confirm that a scoping review fits the objective

Use a scoping review when breadth, concepts, evidence characteristics, definitions, methods, or gaps are primary. If the user wants a precise estimate of effect, diagnostic accuracy, prognosis, or prevalence, consider a systematic review instead.

Do not choose a scoping review merely to avoid critical appraisal or because the literature is large.

### 2. Formulate PCC and questions

Define:

- **Population/Participants:** people, organizations, systems, documents, or other units
- **Concept:** phenomenon, intervention, approach, definition, mechanism, model, policy, or method being mapped
- **Context:** care setting, geography, discipline, culture, policy environment, education level, or other boundary

Write one primary question and focused subquestions aligned with planned charting fields. Outcomes may be charted but need not define eligibility unless central to the concept.

### 3. Define eligibility criteria

Operationalize:

- PCC boundaries
- evidence types, including primary studies, reviews, guidelines, policy documents, theses, conference materials, reports, or grey literature as justified
- study designs and methods
- language, dates, geography, and context
- publication status and accessibility
- handling of protocols, abstracts, preprints, corrections, retractions, and duplicate reports

Do not say “all evidence” if sources or publication forms are restricted.

### 4. Develop and post/register a protocol

Specify objectives, PCC, eligibility, information sources, draft searches, selection, charting, synthesis, consultation, reporting, and amendments.

Use an appropriate public repository or registry when available and eligible. Report the actual status accurately: drafted, posted, registered, amended, or not registered. Do not invent a registration number.

### 5. Build the search iteratively but transparently

Use a staged approach:

1. preliminary search to identify terminology and index terms
2. analysis of titles, abstracts, and indexing of seed records
3. full database-specific strategies
4. reference-list and cited-reference searching
5. grey-literature and targeted website searching when relevant
6. updates before publication when required

Route controlled vocabulary to `mesh-expert`, PubMed syntax to `pubmed-search-builder`, and WoS syntax to `wos-search-builder`.

Scoping searches are often sensitive, but uncontrolled breadth produces an incoherent map. Justify the boundary rather than maximizing terms mechanically.

### 6. Execute and document every source

Record database/platform, collection/index, coverage, exact query, filters, search date, observed result count, export fields, format, batches, filenames, and update date.

For websites and grey literature, record URLs, search strings, navigation path, date, screening depth, and stopping rule. Label unexecuted strategies `DRAFT—NOT RUN`.

### 7. Deduplicate while preserving source provenance

Archive raw exports. Deduplicate by identifiers and bibliographic identity, then manually review ambiguous pairs. Retain source membership for coverage analysis.

Distinguish duplicate database records from multiple reports, versions, or document types relating to one project or evidence source.

### 8. Pilot screening criteria

Create a decision manual and pilot a diverse record set with all reviewers. Refine ambiguous PCC definitions and evidence-source rules before full screening. Record amendments and rescreen earlier records when necessary.

### 9. Screen titles/abstracts and full texts

Use independent reviewers according to the protocol. Preserve individual decisions, consensus, and adjudication. Document retrieval attempts.

Use specific full-text exclusion reasons derived from PCC and evidence-source criteria. Do not exclude merely because a study lacks an effect estimate.

Automation may assist prioritization only when its role and validation are transparent; opaque automated final exclusions are not acceptable.

### 10. Verify and link sources

Use `reference-verifier` to resolve PMID/DOI, metadata, corrections, retractions, and duplicates. Link multiple publications, reports, protocols, or versions to the same underlying project when relevant.

Decide whether the unit of mapping is a report, study, intervention, program, policy, concept, or other entity. Do not switch units silently.

### 11. Design and pilot the charting form

Use `evidence-matrix` principles but tailor fields to the mapping questions. Possible fields include:

- citation, country, year, discipline, setting
- evidence type and design
- population/participants
- concept definition and theoretical framework
- intervention/exposure/program components
- context and implementation features
- methods, instruments, outcomes, or data sources
- stakeholder involvement
- equity variables
- key findings relevant to mapping
- reported gaps and author recommendations

Pilot on diverse sources. Data charting may be iterative, but changes must be documented and earlier records updated consistently.

### 12. Decide whether critical appraisal is needed

Critical appraisal is optional, not prohibited. Decide based on the review objective:

- omit when the goal is descriptive mapping and quality does not affect interpretation
- include when the map compares methodological quality, informs practice/policy, or needs quality-stratified interpretation

If included, use design-appropriate tools and explain how judgments affect synthesis. Do not use one generic score across heterogeneous evidence.

### 13. Chart data with provenance

Use explicit states such as `REPORTED`, `CALCULATED`, `INFERRED`, `NOT_REPORTED`, `UNCLEAR`, and `ABSTRACT_ONLY`. Preserve source locations when feasible.

Keep author-stated gaps separate from reviewer-identified gaps. Do not transform qualitative findings into prevalence estimates.

### 14. Map and synthesize evidence

Use methods matched to the questions:

- frequencies and distributions
- evidence maps and cross-tabulations
- timelines and geographic maps
- taxonomies and conceptual models
- qualitative content or thematic analysis
- framework synthesis
- matrices of population × concept × context
- gap maps

Report denominators for percentages and define categories. Avoid significance testing on descriptive map counts unless analytically justified.

Do not treat the number of publications as evidence of effectiveness, importance, or quality.

### 15. Identify evidence gaps carefully

Classify gaps rather than simply declaring “more research is needed”:

- absolute gap: little or no eligible evidence
- population gap
- context/geographic gap
- concept/definition gap
- design/method gap
- outcome/measurement gap
- implementation gap
- reporting gap
- synthesis gap

Distinguish lack of evidence from evidence of no effect. A database or language restriction can create an apparent gap; report this possibility.

### 16. Conduct stakeholder consultation when useful

Consultation may refine interpretations, identify missing sources, validate a taxonomy, or assess relevance. Prespecify purpose, participants, recruitment, data collection, analysis, ethics/consent needs, and how input changes the review.

Consultation is not a substitute for searching or screening. Distinguish consultation data from included literature.

### 17. Report with current scoping-review standards

Use current PRISMA-ScR and relevant methodological guidance. Ensure consistency across abstract, PCC, protocol, information sources, complete searches, flow diagram, charting methods, evidence characteristics, maps, gaps, limitations, funding, conflicts, consultation, data, and code.

Report why scoping review was selected and whether critical appraisal was performed.

### 18. Archive and update

Archive protocol versions, amendment log, raw exports, deduplication log, screening decisions, exclusion reasons, linkage, charting forms, data dictionary, analysis code, figures, consultation records, and final reports.

Define update triggers for rapidly evolving fields.

## Difference from systematic review

| Dimension | Scoping review | Effect-focused systematic review |
|---|---|---|
| Primary aim | Map concepts, evidence, methods, and gaps | Estimate or critically synthesize effects/associations |
| Framework | Usually PCC | Often PICOS/PECO or design specific |
| Evidence types | May be broad and heterogeneous | Usually restricted to answerable designs |
| Critical appraisal | Optional, question dependent | Normally required |
| Meta-analysis | Usually not the main aim | May be used when justified |
| Certainty grading | Usually not required | Often required for key outcomes |
| Output | Map, taxonomy, characteristics, gaps | Effect synthesis and certainty |

These differences are tendencies, not excuses for weak methods.

## Safeguards

- Never fabricate protocols, searches, counts, decisions, charted data, categories, consultation, or gaps.
- Never label a selective narrative review as a scoping review.
- Never claim comprehensive coverage without documented sources and strategies.
- Never use one database automatically for a multidisciplinary concept.
- Never treat multiple reports as independent evidence units without justification.
- Never infer effectiveness, causality, or evidence quality from publication counts.
- Never force meta-analysis or GRADE into a mapping objective.
- Never omit critical appraisal merely to avoid unfavorable findings when quality is central to the question.
- Never present author recommendations as established research gaps without independent synthesis.
- Preserve protocol deviations and limitations.

## Common failure modes

| Failure | Correction |
|---|---|
| Vague “map the literature” objective | Define PCC and specific subquestions |
| Scope too broad to screen consistently | Set defensible concept/context boundaries |
| One database called comprehensive | Match sources to disciplines and grey literature |
| Search iteration hidden | Record versions, dates, and reasons |
| No pilot screening | Calibrate criteria and rescreen after changes |
| One row per paper by default | Define the mapping unit and link versions/reports |
| Charting form grows without control | Maintain data dictionary and amendment log |
| Publication count treated as importance | Interpret only as research activity |
| Author-stated gap copied as review gap | Separate author and reviewer gap evidence |
| No appraisal without rationale | Explain objective-based decision |
| Forced meta-analysis | Use descriptive, framework, or thematic mapping |
| Generic “more research” conclusion | Classify precise gap type and context |

## Required project records

Maintain:

- protocol and amendment log
- PCC and eligibility manual
- source/search log
- website/grey-literature search log
- raw export and deduplication manifest
- independent screening log
- full-text exclusion log
- evidence-source linkage table
- charting form and data dictionary
- appraisal records if used
- analysis/category codebook
- consultation record if used
- PRISMA-ScR counts/checklist
- data/code and update plan

## Completion criteria

The review is complete only when:

- scoping-review rationale, PCC, and mapping questions are explicit
- evidence types and boundaries are operational
- protocol status and amendments are transparent
- searches are reproducible and source appropriate
- screening counts derive from records
- mapping unit and report/project linkage are explicit
- charting fields align with questions and retain provenance
- critical-appraisal inclusion or omission is justified
- maps, categories, denominators, and synthesis methods are reproducible
- evidence gaps are classified and bounded by search limitations
- consultation, if used, is methodologically transparent
- PRISMA-ScR reporting is internally consistent
- conclusions do not imply effectiveness or certainty beyond the mapped evidence
