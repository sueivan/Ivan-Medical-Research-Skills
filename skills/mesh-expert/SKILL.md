---
name: mesh-expert
description: Use when identifying, verifying, mapping, expanding, or auditing MeSH descriptors, entry terms, tree structure, explosion decisions, qualifiers, and free-text synonyms for PubMed or MEDLINE biomedical searches.
---

# MeSH Expert

## Overview

Build an evidence-based concept map for biomedical searching. Verify controlled vocabulary against the current NLM MeSH record and combine it with free-text language. Never treat a plausible phrase as a verified MeSH term.

## When to use

Use this skill to map research concepts to MeSH and free-text synonyms; inspect scope notes, entry terms, trees, indexing history, and qualifiers; decide on explosion; identify concepts without suitable descriptors; and audit PubMed or MEDLINE vocabulary.

## When not to use

Do not use this skill alone to finalize an entire PubMed strategy, translate syntax for other databases, judge study eligibility, grade evidence, infer effectiveness from indexing, or claim a term is current without authoritative NLM verification.

## Required inputs

1. Research question or topic.
2. Population, condition, exposure/intervention, comparator, and outcome when relevant.
3. Database and interface.
4. Desired balance between sensitivity and precision.
5. Date range, language, study design, and other pre-decided limits.
6. Seed articles, candidate terms, acronyms, drug names, and gene/protein names.

If a topic is ambiguous, separate its meanings before mapping. Do not silently select one interpretation.

## Workflow

### 1. Decompose the question

Create 2–4 essential concept blocks. Do not force every PICO element into the search; comparators and outcomes are often omitted when they reduce sensitivity.

### 2. Collect candidate language

For each concept collect clinical and everyday terms, full forms and abbreviations, spelling and word-order variants, former names, drug names and codes, gene symbols, and language found in seed titles and abstracts. Label all as candidates, not verified MeSH.

### 3. Verify the MeSH record

Check the current NLM MeSH Browser or an equivalent authoritative NLM record. Record the preferred descriptor, descriptor UI, scope note, entry terms, tree numbers, year introduced, previous indexing, allowable qualifiers, relevant annotations, verification date, and source URL.

A phrase appearing in PubMed, autocomplete, an article keyword list, or author keywords is not proof that it is a MeSH descriptor.

### 4. Assess conceptual fit

Classify each verified descriptor as direct match, broader match, narrower match, related but not equivalent, obsolete/previous indexing, or no suitable descriptor. Do not map by lexical similarity alone.

### 5. Decide on explosion

PubMed normally includes narrower terms beneath a MeSH descriptor. Make the decision explicit:

- explode when narrower concepts are relevant
- use `[mh:noexp]` when narrower branches add material noise
- search selected narrower descriptors separately when only part of the tree is relevant

Inspect every tree position because a descriptor may occur in multiple hierarchies.

### 6. Decide on qualifiers

Use a qualifier only when its meaning is necessary and the sensitivity loss is acceptable. Verify that it is allowed. Consider a broader descriptor plus a separate free-text block when indexing inconsistency is likely. Never use qualifiers merely to make a query appear sophisticated.

### 7. Build dual-track concept blocks

For each concept include verified controlled vocabulary and free-text terms in appropriate fields, normally title/abstract.

```text
("Preferred Descriptor"[MeSH Terms]
 OR synonym*[Title/Abstract]
 OR "exact phrase"[Title/Abstract]
 OR abbreviation[Title/Abstract])
```

Avoid unfielded terms when reproducibility matters. Confirm current PubMed behavior before combining truncation with quoted phrases.

### 8. Address indexing lag and new concepts

MeSH indexing may lag publication, and emerging biomarkers, devices, methods, and named models may lack dedicated descriptors. Include current free-text and, when needed, historical terminology. A MeSH-only comprehensive strategy is normally incomplete.

### 9. Audit with seed articles

Check whether draft blocks retrieve known seed articles, inspect their assigned MeSH and title/abstract language, explain misses, and revise only when conceptually justified. Seed retrieval is diagnostic, not proof of sensitivity.

### 10. Produce the mapping table

| Concept | Candidate expression | Status | Verified MeSH descriptor | UI/tree | Role | Field | Decision/rationale |
|---|---|---|---|---|---|---|---|

Status must distinguish descriptor, entry term, free-text synonym, historical term, abbreviation, rejected term, and unverified term.

### 11. Hand off

Provide the concept map, provisional PubMed blocks, unresolved ambiguities, rejected terms, and reproducibility record. Recommend `pubmed-search-builder` for full syntax, filters, testing, and reporting.

## Safeguards

- Never fabricate a descriptor, UI, tree number, scope note, qualifier, or indexing history.
- If authoritative verification is unavailable, label mappings `UNVERIFIED`.
- Do not equate entry terms with independently indexed descriptors.
- Preserve distinctions among disease, symptom, mechanism, biomarker, test, intervention, and outcome.
- Do not add filters without considering sensitivity loss.
- Record manual judgment calls.
- Do not make clinical recommendations from vocabulary mapping.

## Common failure modes

| Failure | Correction |
|---|---|
| Guessing MeSH | Verify the NLM record |
| Using only MeSH | Add title/abstract free text |
| Copying all entry terms | Retain useful expressions only |
| Exploding without tree review | Inspect all tree positions |
| Overusing qualifiers | Use only when the indexed relationship is essential |
| Confusing author keywords with MeSH | Label source and status separately |
| Ignoring indexing lag | Include current free text |
| Inventing a descriptor for a new concept | Document the gap and use free text |
| Adding every PICO element | Keep only essential retrieval concepts |

## Reproducibility record

Record database/interface, MeSH source and access date, descriptors and UIs, tree numbers, explosion decisions, qualifiers, free-text sources, seed articles, rejected terms, unresolved terms, final blocks, and revision date.

## Completion criteria

The task is complete only when every claimed descriptor is verified or marked unverified; each essential concept has controlled-vocabulary and free-text coverage unless an exception is documented; explosion and qualifier decisions are explicit; historical and missing descriptors are handled; rejected and unresolved terms are visible; and another researcher can reconstruct the decisions.
