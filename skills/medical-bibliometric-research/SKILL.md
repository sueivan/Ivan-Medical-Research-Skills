---
name: medical-bibliometric-research
description: Use when planning, conducting, interpreting, writing, or auditing a medical or health-science bibliometric study using Web of Science, Scopus, PubMed, CiteSpace, VOSviewer, Bibliometrix, or biblioshiny.
---

# Medical Bibliometric Research

## Overview

Use this skill to convert a medical bibliometric question into a reproducible study. Treat bibliometric software as an analytical instrument, not as an automatic source of scientific conclusions.

**Core rule:** Never interpret a map, cluster, burst term, centrality value, or publication trend without checking the underlying records and study context.

## When to Use

Use for:

- bibliometric analysis and science mapping
- CiteSpace, VOSviewer, Bibliometrix, and biblioshiny
- co-authorship, co-citation, bibliographic coupling, and keyword co-occurrence
- burst detection, timeline views, thematic maps, and thematic evolution
- protocol design, results interpretation, manuscript writing, or peer review

## When Not to Use

Do not use as a substitute for:

- systematic review
- scoping review
- meta-analysis
- causal inference
- clinical effectiveness assessment

## Required Inputs

At minimum, request:

- research question
- database and index
- search date and timespan
- complete query
- export format
- screening and deduplication method
- software versions and parameters
- numeric outputs, tables, or figures
- representative records behind major clusters or bursts

When these inputs are missing, provide design or audit only. Do not fabricate results.

## Safeguards

1. Do not invent record counts, parameters, clusters, modularity, silhouette, centrality, burst strength, PMID, DOI, or journal metrics.
2. Distinguish database coverage from the scientific field itself.
3. Preserve the exact search strategy and raw export.
4. Document deduplication and normalization.
5. Separate observed output, interpretation, inference, and speculation.
6. Do not treat citation impact as study quality.
7. Do not claim clinical effectiveness from bibliometric frequency.
8. Verify recent claims and identifiers against current primary sources.
9. Inspect constituent records before accepting automatic cluster labels.
10. Require more than one indicator before calling a topic a research frontier.

## Workflow

```text
Question → Protocol → Search → Export → Cleaning → Analysis
→ Source verification → Interpretation → Writing → Audit
```

### 1. Frame the question

Define:

- domain
- purpose
- unit of analysis
- timespan
- database
- planned outputs

### 2. Write a protocol

Record:

- rationale
- database and index
- query
- search date
- inclusion and exclusion criteria
- deduplication
- software and version
- parameters
- sensitivity analyses
- data and code plan

### 3. Validate the search

Perform:

- known-item check
- noise sample
- boundary check

Revise until recall and precision are defensible.

### 4. Export and preserve data

Keep:

```text
raw/
clean/
analysis/
```

Never overwrite raw data.

### 5. Clean and normalize

Check:

- DOI, PMID, title, and near duplicates
- author variants
- institution variants
- country normalization
- journal title variants
- keyword spelling and singular/plural forms
- acronym/full-term consistency

Do not merge genuinely distinct concepts merely to improve appearance.

### 6. Match analysis to the question

| Question | Analysis |
|---|---|
| Productivity | annual output, authors, institutions, countries |
| Collaboration | co-authorship |
| Intellectual base | reference co-citation |
| Structural similarity | bibliographic coupling |
| Concepts | keyword co-occurrence |
| Evolution | timeline, overlay, thematic evolution |
| Emergence | burst analysis plus source verification |

### 7. CiteSpace requirements

Report:

- version
- time slicing
- years per slice
- node type
- selection criterion or g-index
- pruning
- cluster labeling
- visualization type

Interpret cautiously:

- centrality is network-specific
- modularity measures partition strength
- silhouette reflects internal consistency
- burst indicates abrupt attention, not clinical importance
- sigma is not an evidence grade

### 8. VOSviewer requirements

Report:

- version
- analysis type
- unit
- counting method
- threshold
- number meeting threshold
- thesaurus use
- altered defaults

### 9. Bibliometrix requirements

Report:

- R and Bibliometrix versions
- import pathway
- duplicate handling
- fields used
- conceptual, intellectual, and social structure parameters
- thematic map or evolution settings

Save scripts whenever possible.

### 10. Sensitivity analysis

Compare reasonable alternatives for:

- thresholds
- counting methods
- pruning
- keyword fields
- time slices
- review inclusion
- raw versus normalized terms

### 11. Verify sources

For each major cluster, burst, or frontier claim:

- inspect high-weight records
- read representative original studies or authoritative reviews
- verify PMID and DOI
- classify the evidence type
- distinguish preclinical, observational, diagnostic, interventional, and review evidence

### 12. Write results

Use:

```text
Observed output → metric or evidence → restrained interpretation
```

Do not convert rankings into claims of scientific dominance or methodological quality.

### 13. Write discussion

Cover:

- field development
- collaboration structure
- intellectual base
- hotspots
- emerging directions
- implications
- limitations

Clearly mark inference.

### 14. Mandatory limitations

Address:

- database coverage
- language restrictions
- citation time-lag
- indexing changes
- name ambiguity
- threshold dependence
- keyword normalization subjectivity
- inability to assess clinical efficacy
- database updates after the search date

## Common Failure Modes

| Failure | Correction |
|---|---|
| Broad unvalidated query | Run known-item, noise, and boundary checks |
| Defaults not reported | Record reproducibility-critical parameters |
| Automatic labels accepted | Inspect constituent records |
| Citations treated as quality | Separate impact from evidence quality |
| Recent term called a frontier | Triangulate burst, growth, timeline, and sources |
| Mixed databases without harmonization | Document conversion and deduplication |
| False PMID or DOI | Resolve every identifier |
| Discussion repeats rankings | Explain drivers, gaps, implications, and uncertainty |

## Completion Criteria

The task is complete only when:

- the corpus can be reconstructed;
- analysis choices are reproducible;
- major interpretations are traceable to underlying records;
- limitations are explicit;
- and conclusions do not exceed bibliometric evidence.
