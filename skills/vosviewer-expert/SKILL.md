---
name: vosviewer-expert
description: Use when planning, configuring, executing, auditing, interpreting, or reporting VOSviewer bibliometric and science-mapping analyses, including data import, counting methods, thresholds, normalization, clustering, thesaurus cleaning, overlay visualization, density maps, and reproducibility.
---

# VOSviewer Expert

## Overview

Design and audit reproducible VOSviewer analyses from a documented bibliographic corpus. Choose the appropriate analysis, unit, counting method, thresholds, normalization, clustering, and visualization settings; preserve an auditable thesaurus; and interpret maps without equating bibliometric prominence with scientific quality.

## When to use

Use this skill to:

- prepare and import supported bibliographic or network data into VOSviewer
- create co-authorship, co-occurrence, citation, bibliographic-coupling, and co-citation maps
- choose units such as authors, organizations, countries, documents, sources, cited references, cited authors, or terms
- compare full and fractional counting
- set occurrence/citation/document thresholds and item selection
- apply and audit normalization and clustering
- build network, overlay, and density visualizations
- create and validate a VOSviewer thesaurus file
- export network/map data and write reproducible methods, results, legends, and limitations

## When not to use

Do not use this skill alone to:

- construct the search corpus; use `wos-search-builder` or another database-specific skill
- infer evidence quality, causal importance, clinical efficacy, or certainty from link strength, citations, or cluster position
- fabricate item counts, link strength, cluster membership, average year, citation impact, or screenshots
- merge names, institutions, countries, or concepts without an explicit normalization rule
- choose thresholds only to create a visually pleasing map
- substitute VOSviewer maps for reading representative source documents

## Required inputs

Obtain or label unresolved:

1. research question and intended claims
2. database, collection/indexes, exact search, timespan, and search date
3. record count, export content, format, and batches
4. VOSviewer version and analysis date
5. type of analysis and unit of analysis
6. counting method
7. minimum threshold and item-selection rule
8. normalization and clustering settings
9. term source, minimum term occurrences, and relevance selection for text mining
10. thesaurus/normalization rules
11. desired visualization type and overlay variable
12. sensitivity analyses and output formats

Options vary by VOSviewer version and input source. Verify current software labels and supported functions before prescribing exact clicks.

## Analysis states

Use:

- `PLANNED`
- `IMPORTED`
- `RUN`
- `CLEANED`
- `SENSITIVITY_CHECKED`
- `INTERPRETED`
- `FINAL_REPORTED`

Do not present a planned map as executed.

## Workflow

### 1. Match the question to the analysis

| Research question | Type of analysis | Typical unit |
|---|---|---|
| Who collaborates? | Co-authorship | authors, organizations, countries |
| Which concepts co-occur? | Co-occurrence | author keywords, all keywords, terms |
| Which items cite each other? | Citation | documents, sources, authors, organizations, countries |
| Which items share references? | Bibliographic coupling | documents, sources, authors, organizations, countries |
| Which references/authors/sources are cited together? | Co-citation | cited references, cited authors, cited sources |

Choose one analysis/unit combination for each map. Do not call all networks “co-occurrence.”

### 2. Freeze corpus provenance

Record database scope, exact executed query, search date, filters, total records, export content, batches, filenames, and checksums when feasible. Preserve raw files unchanged and version any revised corpus.

### 3. Verify import suitability

Confirm that the selected export supports the intended analysis:

- cited references are included for citation, coupling, or co-citation analyses
- author affiliations support organization/country analysis
- abstracts/keywords support text or term analysis
- all batches are complete and nonoverlapping
- file encoding and record totals are intact
- duplicates and early-access/final versions are addressed

An importable file is not necessarily analytically complete.

### 4. Define the unit of analysis precisely

State whether an item represents an author, organization, country, document, source, cited reference, cited author, cited source, author keyword, all keyword, or text-mined term. Explain what a link and total link strength mean for that network.

### 5. Choose counting method

Compare the implications of:

- **full counting:** each co-authored/co-occurring contribution receives full weight
- **fractional counting:** contribution weight is divided to reduce dominance by records with many coauthors, organizations, countries, or terms, where supported

Counting choice changes weights and potentially rankings. Justify it based on the question and test alternatives when conclusions are sensitive.

Do not describe fractional counting as universally superior.

### 6. Set thresholds transparently

Record minimum documents, occurrences, citations, or other relevant thresholds, plus the number meeting the threshold and number selected.

Thresholds control visibility and analytical inclusion. They are not mere display settings. Avoid selecting a threshold only to obtain a desired number of bubbles.

For large networks, use a reproducible selection rule and document any manual exclusions.

### 7. Build an auditable thesaurus

Use a VOSviewer-compatible thesaurus to:

- merge spelling, singular/plural, hyphenation, abbreviation, and name variants
- standardize institution aliases
- remove terms only when they are genuinely uninformative for the question

Maintain columns such as `label` and `replace by`, preserving the original label, replacement, entity type, rationale, reviewer, and date in a separate audit log.

Do not merge broader/narrower or related-but-distinct concepts merely to simplify the map. Do not make geopolitical normalization decisions by convenience.

### 8. Handle author and organization ambiguity

VOSviewer is not a complete authority-disambiguation system. Check:

- initials and full-name variants
- homonyms
- name changes
- group/consortium authors
- hospital–university relationships
- department and parent-institution levels
- organization mergers and historical names

Label uncertain merges and consider leaving them separate rather than creating a false identity.

### 9. Choose term sources for co-occurrence/text maps

Distinguish:

- author keywords
- database-added keywords
- title/abstract terms
- noun phrases or other software-extracted terms

Keyword and term maps answer different questions. Record source, occurrence threshold, relevance-based selection, and thesaurus version.

Search-imposed terms may dominate a map mechanically; consider whether they should remain for transparency or be omitted from a secondary exploratory map. Report the decision.

### 10. Generate the base network

Before visual styling, inspect:

- number of items, links, and total link strength
- connected components and isolated items
- unexpected dominant entities
- duplicates, encoding errors, or malformed cited references
- plausibility of clusters and link patterns

Diagnose corpus, metadata, unit, counting, threshold, and cleaning before interpreting an implausible network.

### 11. Understand normalization

VOSviewer applies a similarity normalization to construct maps; association-strength normalization is commonly used in supported workflows. Record the actual method/version behavior rather than assuming a default.

Normalization changes how raw co-occurrence/link counts become similarities. Do not interpret map distance as raw link count.

### 12. Configure and inspect clustering

Record clustering resolution and minimum cluster size or other version-supported options. Cluster color indicates algorithmic grouping under the chosen network and parameters, not a natural or definitive taxonomy.

Check:

- cluster size and coherence
- representative/high-weight items
- sensitivity to resolution, threshold, counting, and thesaurus
- whether small or isolated clusters arise from noise or genuine specialties

Read representative documents or term contexts before naming clusters.

### 13. Interpret network visualization

State the encodings:

- item size: selected weight, such as documents, occurrences, citations, or normalized citations
- link: the relationship defined by analysis type
- link thickness: link strength
- distance: approximate relatedness in the VOS mapping, not a metric to measure with a ruler
- color: cluster or another selected attribute

Avoid claiming that nearby items are causally connected.

### 14. Configure overlay visualization

Overlay color may represent average publication year, average citations, normalized citations, a score imported by the user, or another supported attribute.

Record:

- overlay variable and calculation
- color-scale minimum/maximum
- treatment of missing values
- whether citation normalization was used
- limitations from citation lag and partial years

Average publication year can indicate temporal orientation, not the exact emergence date of a topic.

### 15. Configure density visualization

Density maps emphasize areas with many or heavily weighted nearby items. Record the item weight and visualization settings when consequential.

Do not equate visual heat with research quality, clinical importance, or statistical significance.

### 16. Interpret weights and links cautiously

- **occurrences/documents:** frequency in the analyzed corpus
- **citations:** database- and time-dependent attention
- **links:** number of connected items, depending on output
- **total link strength:** aggregate strength of an item's links under the selected network
- **normalized citations:** relative impact only under the specific normalization method

None of these directly measures methodological quality.

### 17. Conduct sensitivity analyses

Compare reasonable alternatives for consequential choices:

- full versus fractional counting
- minimum threshold
- number of selected items
- raw versus thesaurus-cleaned data
- author keywords versus all keywords versus text terms
- clustering resolution/minimum size
- inclusion/exclusion of incomplete years or document types

Assess stability of leading items, clusters, temporal patterns, and narrative conclusions—not identical coordinates.

### 18. Export reusable outputs

Preserve:

- map and network files
- item and link tables
- screenshots/vector or high-resolution images
- thesaurus file and audit log
- parameter record
- software version
- sensitivity-run outputs

Do not rely only on a screenshot that cannot be audited.

### 19. Write bounded results

Separate observed metrics, network interpretation, source-record verification, and limitations. Use phrases such as “within the analyzed WoS corpus” rather than implying universal coverage.

### 20. Produce deliverables

Return:

1. corpus/import audit
2. parameter record
3. thesaurus and normalization log
4. item/network statistics tables
5. cluster interpretation table
6. overlay/density settings
7. sensitivity-analysis log
8. figure specifications and legends
9. manuscript-ready methods/results text
10. limitations and unresolved issues

## Core interpretation rules

### Total link strength

Interpret total link strength as the sum of link strengths for an item within the selected analysis, corpus, counting method, threshold, and cleaning rules. It is not universal influence or evidence quality.

### Map distance

Interpret shorter distances as generally indicating stronger relatedness under the VOS mapping. Do not report Euclidean distances as direct raw relationship measures or assume axes have substantive meaning.

### Clusters

Treat clusters as parameter-dependent algorithmic groupings. Validate them by inspecting item content; do not name them solely from the largest label.

### Overlay year

Treat average publication year as a weighted temporal summary of an item's associated records. It is not necessarily the year the concept originated.

## Safeguards

- Never fabricate VOSviewer outputs, item counts, thresholds, total link strengths, clusters, overlay values, or screenshots.
- Never claim a map was generated without the output or execution record.
- Do not infer scientific quality, causality, or clinical benefit from bibliometric prominence.
- Preserve raw files and reversible cleaning logs.
- Disclose database, corpus, language, index, citation-lag, and software limitations.
- Distinguish analysis type, unit, counting, and term source precisely.
- Verify version-specific options and defaults in current software/documentation.

## Common failure modes

| Failure | Correction |
|---|---|
| Calling every map co-occurrence | Name analysis type and unit correctly |
| Missing cited references | Re-export required metadata |
| Full counting used automatically | Justify and compare fractional counting when relevant |
| Threshold chosen for attractive bubble count | Prespecify/test a defensible threshold |
| Thesaurus merges distinct concepts | Preserve conceptual distinctions and audit changes |
| Author/institution homonyms merged | Require corroboration or retain uncertainty |
| Distance treated as raw strength | Use link metrics and mapping interpretation correctly |
| Cluster colors treated as fixed truth | Report resolution/settings and inspect content |
| Overlay year called emergence year | Describe it as average temporal orientation |
| Density called importance | State weight and corpus-dependent meaning |
| Citation/link strength called quality | Separate bibliometrics from critical appraisal |
| Screenshot used as sole output | Preserve map/network/item files and parameters |
| Partial recent years overinterpreted | Disclose incompleteness and citation lag |

## Reproducibility record

Record:

- exact corpus and raw filenames
- search/export provenance
- VOSviewer version
- input data type/source
- analysis type and unit
- counting method
- threshold and number meeting/selected
- normalization method
- clustering resolution/minimum size
- term source and relevance selection
- thesaurus filename/version and audit log
- overlay/density variables and scale
- manual exclusions
- item/map/network exports
- sensitivity runs
- figure settings
- deviations from protocol

## Manuscript-ready methods template

```text
Bibliographic records from [database/collection/indexes] were analyzed using VOSviewer [version]. A [type of analysis] analysis was conducted with [unit of analysis] using [full/fractional] counting. Items with at least [threshold definition] were eligible, of which [number] were selected. Data were normalized using [method], and clusters were generated using [resolution/minimum-size settings]. Terminology was standardized with thesaurus version [version]. Network, overlay, and density visualizations encoded [weights/attributes]. Sensitivity analyses compared [settings].
```

Do not fill bracketed fields with invented information.

## Completion criteria

The analysis is complete only when:

- corpus provenance and import completeness are verified
- research question matches analysis type and unit
- counting, threshold, normalization, and clustering choices are recorded
- thesaurus changes are reversible and justified
- real map/network/item outputs are preserved
- total link strength, distance, clusters, overlay, and density are interpreted within limits
- representative items/documents are checked before thematic claims
- reasonable parameter sensitivity is assessed
- figures explain every consequential encoding
- claims are bounded to the analyzed corpus
- limitations and unresolved decisions remain visible
