---
name: wos-search-builder
description: Use when designing, translating, validating, documenting, or auditing a reproducible Web of Science Core Collection search strategy for biomedical research, systematic or scoping reviews, evidence mapping, or bibliometric and science-mapping studies.
---

# Web of Science Search Builder

## Overview

Convert a research question into a transparent, reproducible Web of Science Core Collection strategy. Define the database edition and indexes, construct fielded concept blocks, test syntax and retrieval, and document the exact query and corpus boundaries. Web of Science search behavior is not interchangeable with PubMed, Scopus, or other databases.

## When to use

Use this skill to:

- build or audit a Web of Science Core Collection query
- develop a corpus for CiteSpace, VOSviewer, Bibliometrix, or other bibliometric tools
- translate conceptual terms from PubMed/MeSH or another database into WoS-appropriate free text
- choose among Topic, Title, Abstract, Author Keywords, Keywords Plus, author, source, organization, funding, DOI, and other fields
- test Boolean logic, wildcards, exact phrases, proximity operators, exclusions, years, document types, and indexes
- document a reproducible WoS search and export workflow

## When not to use

Do not use this skill alone to:

- treat MeSH headings as controlled vocabulary in WoS
- translate syntax to PubMed, Scopus, Embase, CINAHL, or other platforms without database-specific review
- assume all institutions, journals, years, references, or document types are indexed uniformly
- claim corpus completeness from retrieval count alone
- perform bibliometric cleaning, network analysis, or interpretation; hand off to the relevant analysis skill
- fabricate result counts, index coverage, export limits, or validation outcomes

## Required inputs

Obtain or label unresolved:

1. research question and study purpose
2. review or bibliometric design
3. essential concepts and known synonyms
4. Web of Science product and collection, preferably Web of Science Core Collection
5. included citation indexes and editions
6. timespan and search date
7. language and document-type restrictions, if justified
8. sensitivity/precision priority
9. known seed records or distinctive publications
10. intended analysis software and required export fields
11. whether cited-reference searching or source-title/institution restrictions are needed

Interface labels and available indexes vary by subscription. Never infer the user's coverage without confirmation.

## Workflow

### 1. Define the corpus purpose

Classify the task:

- **bibliometric/science mapping:** prioritize a coherent, defensible corpus and stable metadata
- **systematic/scoping review:** prioritize sensitivity and consider whether WoS is supplementary rather than sufficient alone
- **targeted literature review:** balance precision and breadth
- **institution/author/journal analysis:** define entities and disambiguation rules before searching

### 2. Record database scope

Document:

- Web of Science platform
- collection, normally Core Collection
- included indexes, such as SCI-EXPANDED, SSCI, AHCI, ESCI, CPCI, BKCI, or others actually available
- timespan
- search date
- interface language or regional settings if they affect reproducibility

Do not report only “Web of Science” when the actual collection and indexes matter.

### 3. Decompose into essential concepts

Create 2–4 concept blocks where possible. Include only concepts necessary to define the corpus. Overly restrictive outcome, setting, method, or design blocks can distort bibliometric structure.

| Block | Concept | Include? | Boundary rationale |
|---|---|---|---|

### 4. Translate vocabulary for WoS

WoS has no MeSH-based subject-heading search equivalent to PubMed. Use:

- preferred and historical names
- acronyms and full forms
- spelling, hyphenation, singular/plural, and regional variants
- disease, intervention, biomarker, method, device, or policy terminology
- terminology found in seed titles, abstracts, and author keywords
- verified MeSH entry terms only as candidate natural-language synonyms, not as WoS controlled vocabulary

Remove PubMed field tags and reassess every term. Do not copy a PubMed strategy mechanically.

### 5. Choose fields deliberately

Common field tags include:

- `TS=` Topic
- `TI=` Title
- `AB=` Abstract
- `AK=` Author Keywords
- `KP=` Keywords Plus
- `AU=` Author
- `SO=` Publication Name/Source
- `OG=` Organization-Enhanced
- `DO=` DOI
- `PY=` Year Published

Field availability and semantics can change by interface or edition. Confirm current help documentation when exact behavior matters.

Topic search generally spans title, abstract, author keywords, and Keywords Plus. Because Keywords Plus is generated from cited-reference titles, `TS=` can increase sensitivity but also introduce conceptual noise. If corpus precision is critical, compare `TS=` with narrower field combinations such as `TI=` and `AB=` plus `AK=`.

### 6. Build concept blocks

Join synonyms with `OR` and enclose each block in parentheses:

```text
TS=(Alzheimer* OR dementia*)
```

Join essential concepts with `AND`:

```text
TS=(Alzheimer* OR dementia*)
AND TS=(microglia* OR "microglial cell*")
```

Keep related but non-equivalent concepts separate when their inclusion would broaden the corpus beyond the study question.

### 7. Use phrases and wildcards carefully

WoS commonly supports:

- `*` for zero or more characters
- `?` for one character
- `$` for zero or one character
- quotation marks for exact phrases

Confirm current platform rules before final reporting. Use the shortest stable stem that does not create substantial semantic noise. Test each wildcarded term independently when ambiguity is plausible.

Do not assume quoted phrases and wildcard placement behave like PubMed or Scopus.

### 8. Use proximity operators when justified

Use `NEAR/x` to require terms within a specified distance when adjacency improves precision without forcing an exact phrase.

```text
TS=((digital OR remote) NEAR/3 biomarker*)
```

Use proximity only after checking:

- term order behavior
- punctuation/hyphenation effects
- whether the distance is scientifically defensible
- whether recall of seed records is preserved

Avoid arbitrary proximity distances chosen only to reduce the result count.

### 9. Handle exclusions conservatively

Use `NOT` only for a clearly separable, repeatedly observed irrelevant meaning. Test excluded records and document the effect. Incidental mention can cause relevant papers to be removed.

Prefer refining ambiguous terms, fields, or proximity before adding broad exclusions.

### 10. Apply years and document types transparently

Separate the conceptual query from interface filters and eligibility restrictions. Record exact timespan and document types.

For bibliometric studies:

- distinguish publication year from data-export date
- justify inclusion or exclusion of reviews, proceedings papers, early access, book chapters, letters, editorials, and corrections
- inspect how early-access and final publication records are represented
- avoid partial current-year comparisons without explicit treatment

Do not assume `Article OR Review` is universally correct.

### 11. Run staged tests

Execute and record:

1. each concept block separately
2. combined blocks sequentially
3. alternative field choices
4. wildcard and proximity variants
5. filters and exclusions separately

Record counts only when actually observed, with search date and database scope. Do not optimize merely toward a preferred corpus size.

### 12. Validate the corpus

Use complementary checks:

- **seed-record recall:** known relevant records are retrieved
- **precision sample:** inspect a defined sample of titles/abstracts
- **boundary sample:** inspect records retrieved only through Keywords Plus or broad synonyms
- **term contribution:** determine whether each term adds relevant unique records
- **year-edge check:** inspect early and latest years
- **source/index check:** identify unexpected journals, proceedings, books, or indexes
- **expert review:** obtain domain or information-specialist review when feasible

Seed retrieval does not prove completeness.

### 13. Inspect and save exact Search History

Preserve:

- set numbers and combinations
- exact Advanced Search query
- filters applied in the interface
- result count for each set, if observed
- search date and database/index scope

Export or capture the search history when available. An intended query is not equivalent to the executed query.

### 14. Plan exports for reproducibility

Before export, record:

- record content, such as Full Record and Cited References
- file format
- batch size and sequence
- sort order
- total records
- export date
- duplicate handling
- file naming and checksum when appropriate
- intended software and version

If the interface imposes export limits, document the actual batching procedure rather than relying on a remembered universal limit.

### 15. Produce final deliverables

Return:

1. database/index scope statement
2. concept and boundary table
3. readable multiline query
4. exact single-line Advanced Search query
5. field, wildcard, proximity, exclusion, timespan, and document-type decisions
6. staged-test and validation log
7. Search History record
8. export plan
9. manuscript-ready methods paragraph
10. unresolved limitations

## Query patterns

### Topic search

```text
TS=(concept-a-term* OR "concept a phrase")
AND TS=(concept-b-term* OR "concept b phrase")
```

### Narrower topical fields

```text
(TI=(term*) OR AB=(term*) OR AK=(term*))
```

### Proximity

```text
TS=((term1 OR term2) NEAR/3 term3*)
```

These are patterns, not universal prescriptions.

## Safeguards

- Never fabricate retrieval counts, export limits, index coverage, search dates, or validation results.
- Distinguish `DRAFT`, `RUN`, `TESTED`, `PEER REVIEWED`, `EXPORTED`, and `FINAL REPORTED` states.
- Do not describe MeSH terms as controlled vocabulary in WoS.
- Do not equate citation impact with study quality or evidence strength.
- Do not claim WoS is exhaustive for every biomedical question.
- Do not infer country, institution, or author identity without disambiguation.
- Preserve the exact executed query, scope, filters, and export settings.
- Recheck current platform help for unstable syntax and interface behavior.

## Common failure modes

| Failure | Correction |
|---|---|
| Reporting only “Web of Science” | State collection, indexes, timespan, and search date |
| Copying PubMed syntax | Translate concepts and rebuild WoS fields/operators |
| Treating MeSH as WoS vocabulary | Use terms only as candidate free text |
| Assuming `TS=` means title/abstract only | Account for author keywords and Keywords Plus |
| Broad wildcards | Test semantic noise and unique contribution |
| Arbitrary `NEAR/x` | Justify and test the distance |
| Using `NOT` to force corpus size | Refine concepts/fields and inspect exclusions |
| Applying filters without recording them | Preserve interface filters and rationale |
| Treating record count as validation | Use seed, precision, boundary, and year checks |
| Ignoring early-access handling | Document representation and deduplication |
| Undocumented export batches | Record content, format, order, ranges, and date |
| Inferring evidence quality from citations | Separate bibliometrics from critical appraisal |

## Reproducibility record

Record:

- product, collection, editions, and indexes
- timespan and search date
- exact Advanced Search query and Search History
- all fields, operators, phrases, wildcards, and proximity distances
- language, document type, and other filters
- staged-test counts only if observed
- seed records and validation findings
- exclusion tests
- export content, format, ranges, order, filenames, and date
- analysis software and version
- deduplication and data-cleaning handoff
- deviations from protocol

## Manuscript-ready reporting template

```text
The Web of Science Core Collection was searched on [date] across [indexes/editions] for records published from [start] to [end]. The strategy combined fielded free-text terms for [concepts] using Boolean and, where applicable, proximity operators. The final executed query and all filters are reported in [appendix/supplement]. Records were exported as [content and format] in [batch procedure] for analysis in [software and version].
```

Do not fill bracketed fields with invented details.

## Completion criteria

The strategy is complete only when:

- corpus purpose and conceptual boundary are explicit
- collection, indexes, timespan, and search date are recorded
- each concept, field, wildcard, phrase, and proximity choice is justified
- MeSH-derived language is treated only as candidate free text
- `TS=` scope and Keywords Plus implications are considered
- document types, languages, years, and exclusions are transparent
- exact executed Search History is saved, or the query is labeled unrun
- validation findings are real and documented
- export settings and batching are reproducible
- unresolved corpus limitations remain visible
