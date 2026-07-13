---
name: imrs-master
description: Use when a biomedical research request spans multiple IMRS workflows or the appropriate research skill is unclear, and the task needs method selection, routing, sequencing, handoffs, quality gates, or an auditable end-to-end plan across literature searching, reference verification, evidence extraction, and bibliometric research.
---

# IMRS Master

## Overview

Route biomedical research tasks through the smallest valid sequence of operational Ivan Medical Research Skills (IMRS). Define the research product, choose methods before tools, enforce handoff criteria, and stop when evidence or verification is insufficient.

This version is a **limited operational orchestrator**. It must never route to a scaffold as though that skill were complete.

## Operational skill registry

Only the following skills are approved for automatic routing in v0.1.0:

| Skill | Status | Primary responsibility |
|---|---|---|
| `mesh-expert` | operational beta | Verify MeSH and build controlled-vocabulary/free-text concept maps |
| `pubmed-search-builder` | operational beta | Build, test, audit, and report PubMed strategies |
| `wos-search-builder` | operational beta | Build, validate, and document WoS Core Collection corpora and exports |
| `reference-verifier` | operational beta | Verify PMID, DOI, metadata, duplicates, and publication status |
| `evidence-matrix` | operational beta | Extract and structure study, report, outcome, and effect data |
| `medical-bibliometric-research` | operational | Govern end-to-end medical bibliometric methodology |

Before routing, confirm that a target skill remains operational in the current repository. If absent, scaffolded, or unavailable, state the limitation and perform only a clearly labeled provisional workflow.

## Non-operational registry

Skills listed in the repository roadmap but not yet validated must not be auto-invoked as finished methods. Examples may include systematic review, scoping review, meta-analysis, GRADE, CiteSpace, VOSviewer, reviewer, statistical design, grant, patent, and writing modules.

When such a capability is needed:

1. identify the missing capability
2. do not pretend that its scaffold is operational
3. use an external recognized standard or a transparent manual workflow when authorized
4. label the gap in the final handoff

## When to use

Use this skill when:

- the user asks which IMRS skill to use
- a request requires two or more operational IMRS skills
- a project needs an end-to-end medical research workflow
- search, verification, extraction, and analysis steps must be sequenced
- outputs from one skill must meet entry criteria for another
- the user requests an IMRS audit, status check, or reproducibility plan

## When not to use

Do not use this skill to:

- add unnecessary orchestration to a one-skill task
- replace subject-matter judgment, information-specialist review, statistician input, or ethical oversight
- claim that unfinished IMRS modules are available
- automatically choose systematic review, scoping review, meta-analysis, or bibliometrics without examining the research question
- turn a vague topic into a final protocol without resolving consequential ambiguity
- fabricate literature, identifiers, counts, results, or validation

## Required inputs

Obtain or infer cautiously:

1. research question or topic
2. intended product: search strategy, review, bibliometric study, evidence map, manuscript, teaching material, grant, book chapter, or other output
3. study/review design, if already chosen
4. target databases and available access
5. population/concept/context or PICO/PECO elements as applicable
6. date, language, design, and evidence restrictions
7. required reporting standard and citation style
8. available seed articles, citations, exports, full texts, and data
9. deadline and desired depth
10. whether live authoritative verification is available

Ask only questions that materially alter routing. For noncritical gaps, proceed with explicit assumptions.

## Routing principles

### 1. Product before tool

Determine the research product first. A topic does not by itself determine whether the correct method is a systematic review, scoping review, bibliometric analysis, narrative review, or focused search.

### 2. Method before software

Do not begin with CiteSpace, VOSviewer, PubMed, or WoS simply because the user named the software. Confirm that the method and data source answer the question.

### 3. Minimum sufficient chain

Invoke only the skills necessary to complete the request. A simple PMID check should route directly to `reference-verifier`, not through the full pipeline.

### 4. Verification before synthesis

Do not populate a final evidence matrix from unresolved or fabricated citations. Route bibliographic identity through `reference-verifier` first when uncertainty exists.

### 5. Preserve states

Across handoffs preserve labels such as:

- `DRAFT`
- `UNVERIFIED`
- `RUN`
- `TESTED`
- `VERIFIED`
- `EXPORTED`
- `FINAL REPORTED`

Never promote a state without evidence that its gate was passed.

### 6. No false automation

A generated query is not an executed search. A citation-shaped string is not a verified reference. A populated table is not a risk-of-bias assessment. A bibliometric network is not evidence of clinical effectiveness.

## Core workflow

### Step 1. Classify the request

Assign one primary task class:

- vocabulary mapping
- PubMed search
- WoS search/corpus design
- reference verification
- evidence extraction
- bibliometric research
- multi-stage research project
- unsupported capability

Record any secondary task classes.

### Step 2. Assess readiness

Check whether the request has:

- a sufficiently bounded question
- a defined product
- appropriate sources
- usable inputs
- live access needed for verification
- an operational target skill

Classify readiness:

- `READY`
- `READY_WITH_ASSUMPTIONS`
- `BLOCKED_BY_INPUT`
- `BLOCKED_BY_ACCESS`
- `BLOCKED_BY_NONOPERATIONAL_SKILL`

### Step 3. Select the route

Use the routing table below. Add or remove steps based on the task, not habit.

### Step 4. Define handoff contracts

For every transition specify:

- required input
- output schema
- verification state
- unresolved issues
- next skill
- stop condition

### Step 5. Execute or present the plan

If the user asked for research work, execute operational steps within available access. If the user asked for planning or advice, provide the route without implying execution.

### Step 6. Apply quality gates

Do not proceed past a gate merely to produce a polished final answer.

### Step 7. Deliver an audit summary

State:

- route used
- skills actually invoked
- steps completed
- steps not executed
- verification states
- unresolved risks
- files or records produced
- recommended next action

## Routing table

| User intent | Primary route | Optional additions |
|---|---|---|
| Identify MeSH and synonyms | `mesh-expert` | `pubmed-search-builder` |
| Build a PubMed strategy | `mesh-expert` → `pubmed-search-builder` | `reference-verifier` for seed citations |
| Build a WoS bibliometric corpus | `wos-search-builder` → `medical-bibliometric-research` | `reference-verifier` for seed records |
| Translate PubMed concepts to WoS | `mesh-expert` or existing concept map → `wos-search-builder` | corpus validation |
| Verify a reference list | `reference-verifier` | `evidence-matrix` |
| Build an evidence matrix | `reference-verifier` → `evidence-matrix` | design-specific manual bias tool |
| Start a medical bibliometric study | `wos-search-builder` → `medical-bibliometric-research` | later analysis skills when operational |
| Review with PubMed evidence table | `mesh-expert` → `pubmed-search-builder` → `reference-verifier` → `evidence-matrix` | recognized review standard outside current registry |
| Check one PMID/DOI | `reference-verifier` | none |
| Unsupported module requested | report gap | transparent manual method or wait for development |

## Standard handoff contracts

### `mesh-expert` → `pubmed-search-builder`

Required output:

- verified MeSH descriptors or explicit `UNVERIFIED` labels
- free-text synonyms
- explode/no-explode and qualifier decisions
- rejected terms
- verification source/date

Stop if critical descriptors are unresolved and live verification is required.

### `mesh-expert`/concept map → `wos-search-builder`

Required output:

- concepts and natural-language candidates
- historical and emerging terms
- explicit warning that MeSH is not WoS controlled vocabulary
- rejected ambiguous terms

Reassess every term for WoS fields and syntax.

### Search builder → `reference-verifier`

Required output:

- exact executed query or `DRAFT—NOT RUN` label
- database scope and search date
- seed or retrieved citation identifiers
- export source and state

Do not describe unexecuted retrievals as a literature set.

### `reference-verifier` → `evidence-matrix`

Required output:

- stable citation row/report ID
- verified PMID/DOI or unresolved state
- corrected metadata
- duplicate/version relationships
- retraction/correction status
- full-text availability

Retracted or unresolved records must remain visibly flagged.

### `wos-search-builder` → `medical-bibliometric-research`

Required output:

- collection/index scope
- exact Search History
- filters and timespan
- validation log
- export content, format, batches, order, filenames, and date
- corpus limitations

Do not begin interpretation from an undocumented corpus.

## Quality gates

### Gate A: Question gate

Pass when the research product and conceptual boundary are explicit.

### Gate B: Vocabulary gate

Pass when critical concepts have verified or transparently provisional terminology.

### Gate C: Search gate

Pass when syntax is auditable and the query is correctly labeled as draft, run, or tested.

### Gate D: Identity gate

Pass when citations have verification states and identifier conflicts are resolved or flagged.

### Gate E: Extraction gate

Pass when study/report identity, provenance, outcomes, time points, and missingness are explicit.

### Gate F: Corpus gate

Pass when database scope, exact query, filters, validation, and exports are reproducible.

### Gate G: Interpretation gate

Pass when conclusions stay within the design and evidence. Citation patterns do not establish efficacy, causality, or evidence quality.

## Decision rules for common project types

### Bibliometric study

Prefer WoS Core Collection when the planned tools and citation analyses require its export metadata, but justify the choice. Route through `wos-search-builder` and `medical-bibliometric-research`. PubMed may supplement conceptual testing but is not automatically the analysis corpus.

### Systematic or scoping review

Use operational search, verification, and extraction skills, but state that dedicated review modules are not yet operational in v0.1.0. Follow the current recognized reporting and methodological standards directly rather than routing to a scaffold.

### Narrative or medical writing

Use `pubmed-search-builder` for a reproducible search when appropriate, `reference-verifier` for every cited work, and `evidence-matrix` when claims span multiple studies. Do not present a selective narrative search as systematic.

### Single-record task

Route directly to `reference-verifier`. Do not create an unnecessary project pipeline.

## Safeguards

- Never fabricate a skill result, search execution, identifier, retrieval count, study datum, validation outcome, or file.
- Never route to a scaffold as an operational skill.
- Never hide a failed gate behind fluent prose.
- Never equate bibliometric impact with evidence strength.
- Never treat one database as universally exhaustive.
- Never merge unresolved citations into a verified evidence matrix.
- Never make clinical recommendations from bibliometric patterns alone.
- Preserve user decisions, assumptions, deviations, and unresolved issues.
- Use current authoritative sources when facts, syntax, standards, or interfaces may have changed.

## Common failure modes

| Failure | Correction |
|---|---|
| Invoking every skill | Use the minimum sufficient chain |
| Choosing software before method | Define product and design first |
| Treating scaffolds as complete | Check registry status before routing |
| Calling a generated query executed | Preserve `DRAFT—NOT RUN` state |
| Extracting from unverified references | Pass identity gate first |
| Counting reports as studies | Preserve study/report linkage |
| Treating citation clusters as mechanisms | Bound interpretation to bibliometric evidence |
| Hiding missing access | Report `BLOCKED_BY_ACCESS` |
| Continuing after a critical failure | Stop, report the gate, request the missing input |
| Producing a polished but unreproducible result | Require exact queries, dates, sources, and logs |

## Project status report

Use this schema:

| Stage | Skill/method | State | Evidence of completion | Open issue | Next action |
|---|---|---|---|---|---|

## Reproducibility record

Record:

- project ID, question, product, and date
- selected route and rationale
- skills and versions used
- inputs and source files
- assumptions and user decisions
- outputs and paths
- gate results
- search and verification states
- unresolved issues and access limits
- deviations from the planned route
- next handoff

## Completion criteria

The orchestration task is complete only when:

- the research product and task class are explicit
- every routed skill is operational or clearly labeled provisional
- the route is the minimum sufficient chain
- handoff requirements and stop conditions are stated
- verification states are preserved across steps
- all relevant quality gates are passed or visibly failed
- completed and unexecuted work are distinguished
- limitations and unsupported capabilities are disclosed
- another researcher can reconstruct why each method and skill was selected
