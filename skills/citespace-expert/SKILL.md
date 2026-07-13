---
name: citespace-expert
description: Use when planning, configuring, executing, auditing, interpreting, or reporting CiteSpace-based bibliometric and science-mapping analyses, including data preparation, time slicing, node selection, thresholding, pruning, clustering, burst detection, timelines, and reproducibility.
---

# CiteSpace Expert

## Overview

Design and audit reproducible CiteSpace analyses from a defined bibliographic corpus. Match parameters to the research question, preserve data provenance, distinguish network structure from evidence quality, and report enough detail for reconstruction. A visually attractive map is not proof that the analysis is valid.

## When to use

Use this skill to:

- prepare Web of Science or other supported bibliographic data for CiteSpace
- choose time slicing, node types, selection criteria, scaling, and pruning
- analyze countries/regions, institutions, authors, keywords, categories, journals, documents, and cited references
- perform co-occurrence, collaboration, co-citation, clustering, timeline, burst, dual-map, or related supported analyses
- interpret modularity, silhouette, centrality, density, burst strength, cluster labels, and temporal patterns
- troubleshoot implausible maps, fragmented networks, duplicate entities, missing references, or parameter sensitivity
- write reproducible methods, results, figure legends, and limitations

## When not to use

Do not use this skill alone to:

- define the search corpus; use `wos-search-builder` or another database-specific search skill
- infer study quality, clinical effectiveness, causality, or certainty from citations or centrality
- fabricate network sizes, Q/S values, burst strengths, cluster labels, or screenshots
- merge names or institutions without an auditable normalization rule
- select parameters only because they produce a cleaner or more dramatic figure
- replace critical reading of highly cited or central documents

## Required inputs

Obtain or label unresolved:

1. research question and intended bibliometric claims
2. database, collection, indexes, exact search strategy, timespan, and search date
3. record count and export batches
4. export content and format
5. CiteSpace version/build and runtime environment
6. analysis type and node type
7. time-slice length
8. selection criterion and threshold settings
9. pruning settings
10. term source and cluster-labeling method
11. data-cleaning and entity-normalization rules
12. desired figures, tables, and sensitivity analyses

Interface options vary across CiteSpace versions. Verify version-specific labels and defaults in current official documentation or the software itself.

## Analysis states

Label work as:

- `PLANNED`: design specified but not run
- `IMPORTED`: corpus loaded and checked
- `RUN`: network generated
- `CLEANED`: normalization decisions applied
- `SENSITIVITY_CHECKED`: reasonable alternative settings compared
- `INTERPRETED`: key nodes/clusters verified against source records
- `FINAL_REPORTED`: methods, outputs, and limitations documented

Never report a planned analysis as executed.

## Workflow

### 1. Define the analytical question

Map each question to an appropriate network:

| Question | Typical node/network |
|---|---|
| Who collaborates? | author, institution, country collaboration |
| What topics dominate? | keyword/term co-occurrence |
| What intellectual bases structure the field? | cited-reference or cited-journal co-citation |
| Which papers bridge specialties? | document/reference network with centrality review |
| What themes emerged or declined? | keyword/reference bursts and timelines |
| How is the field organized? | co-citation clusters and cluster labels |

Do not answer all questions with one map.

### 2. Freeze corpus provenance

Record the exact database scope, executed query, search date, filters, total records, export fields, export batches, filenames, and checksums when feasible. Preserve the raw files unchanged.

If the corpus changes, create a new version rather than silently overwriting the analysis.

### 3. Verify export completeness

For cited-reference and co-citation analyses, ensure the export includes cited references. Check:

- all batches are present
- ranges do not overlap or omit records
- file formats are supported
- encoding is intact
- record totals match the search/export log
- early-access/final records and duplicates are addressed

Do not assume a successful import means complete metadata.

### 4. Create a cleaning and normalization plan

Before interpreting maps, assess:

- author-name variants and homonyms
- institution aliases, mergers, hospitals, colleges, and parent universities
- country/region variants
- keyword singular/plural, spelling, abbreviations, hyphenation, and synonyms
- merged concepts that are related but not equivalent
- generic or search-imposed terms that add little information

Maintain a thesaurus/alias table with original value, normalized value, reason, and date. Preserve raw labels.

Do not merge `China`, `Taiwan`, `Hong Kong`, or other geopolitical labels without an explicit, defensible reporting policy appropriate to the study context and data source.

### 5. Set time slicing

Choose start year, end year, and years per slice based on:

- corpus coverage and annual volume
- field maturity and expected temporal resolution
- comparison needs
- computational feasibility

One-year slices are common but not automatically optimal. Sparse corpora may require broader slices; rapidly evolving topics may need finer resolution.

Record whether partial years are included and how they are interpreted.

### 6. Select one node type per analytical purpose

Run conceptually distinct analyses separately. Combining multiple node types may be appropriate for specific hybrid analyses, but it complicates interpretation and must be justified.

Document node type, links represented, and unit of analysis in every figure legend.

### 7. Choose node-selection criteria

Use supported selection approaches such as Top N, Top N%, or g-index with a stated scaling factor, depending on the installed version.

Selection controls which items enter each time slice. It is not a neutral cosmetic choice. Compare at least one reasonable alternative when conclusions depend on network density or cluster structure.

Do not select settings solely to achieve a target number of nodes.

### 8. Choose link and pruning settings

Possible pruning options may include Pathfinder, pruning sliced networks, and pruning the merged network, depending on version and analysis.

Pruning can improve readability but changes network topology. Record:

- whether pruning was applied
- which method and stage
- why it was chosen
- whether key conclusions persist without or under alternative pruning

Do not compare centrality values across differently pruned networks as if they were directly equivalent.

### 9. Generate and inspect the base network

Before styling, check:

- nodes and links are plausible
- years and colors span the expected period
- duplicates or encoding errors are visible
- isolated nodes dominate unexpectedly
- a search term mechanically dominates the keyword network
- node/link totals and density are recorded

If output is implausible, diagnose corpus, metadata, normalization, slicing, selection, and pruning before interpretation.

### 10. Evaluate collaboration and co-occurrence networks

For country, institution, author, or keyword networks, report appropriate structural information such as publication frequency, links, network density, and centrality where meaningful.

Interpret cautiously:

- high frequency means prominence in this corpus, not quality
- high centrality may suggest a bridging position, not causal importance
- low density may reflect field fragmentation, name disambiguation problems, or selection settings
- absence may reflect database and indexing limitations

### 11. Build and evaluate clusters

For clustering analyses, record:

- network used
- clustering algorithm/options available in the version
- label source and method, such as LLR, TF-IDF, or mutual information when available
- cluster size, mean year, and silhouette
- overall modularity Q and mean silhouette when generated

Interpret metrics as diagnostics, not pass/fail guarantees. High Q or silhouette does not prove labels are meaningful, and tiny clusters can have deceptively high silhouette.

Manually inspect representative and highly cited records in each important cluster. Revise narrative labels only with a documented rationale; do not alter software output invisibly.

### 12. Use timelines and time zones

Timeline views can show cluster persistence, emergence, and decline. Confirm that cluster ordering, labels, time span, and representative nodes are readable. Avoid claiming a theme “ended” merely because recent citation accumulation is incomplete.

### 13. Detect and interpret bursts

For keyword, reference, author, or other supported burst analyses, record:

- burst type
- detection period
- minimum duration or relevant options
- burst strength
- begin and end years

Burst indicates an unusually rapid increase relative to the model and corpus, not necessarily importance, novelty, or evidence quality. Recent bursts are affected by partial years and citation lag.

Verify burst items against their actual titles/contexts before naming research fronts.

### 14. Identify pivotal or influential records

Use multiple signals where appropriate:

- citation/co-citation frequency
- centrality
- burst strength
- sigma or other version-supported composite indicators
- cluster role and temporal position

Read the source record before interpreting its intellectual contribution. A highly cited method paper, guideline, or review may play a different role from primary evidence.

### 15. Conduct sensitivity analysis

Compare reasonable alternatives for settings most likely to affect conclusions:

- time-slice length
- selection criterion or g-index scaling
- pruning
- term sources
- cleaned versus raw labels
- inclusion/exclusion of document types or incomplete years

Focus on stability of major clusters, leading entities, temporal patterns, and narrative conclusions—not visual identity.

### 16. Prepare figures and tables

Every figure should state:

- corpus and timespan
- node/link meaning
- node type
- selection criterion
- pruning
- size and color encodings
- centrality ring or other visual encoding, when present
- software version

Avoid unreadable labels, decorative 3D effects, or screenshots with unexplained interface elements. Export at publication-appropriate resolution and retain editable/vector output when available.

### 17. Write bounded results

Separate:

1. observed network statistics
2. structural interpretation
3. source-record verification
4. limitations and alternative explanations

Use language such as “in this WoS-derived corpus” rather than implying the map represents all global research.

### 18. Produce deliverables

Return:

1. analysis protocol and parameter table
2. corpus and import audit
3. normalization dictionary
4. network statistics table
5. cluster table
6. burst table
7. sensitivity-analysis log
8. figure specifications and legends
9. manuscript-ready methods/results text
10. limitations and unresolved issues

## Core interpretation rules

### Modularity Q

Use Q as a measure of how strongly the network partitions into clusters under the chosen network and settings. Do not use a universal cutoff as proof of validity. Report the value and evaluate cluster coherence substantively.

### Silhouette

Use silhouette to assess within-cluster consistency relative to separation. Interpret alongside cluster size, labeling, and record content. Do not claim that a high value guarantees scientific meaning.

### Betweenness centrality

Treat high centrality as a possible bridging or brokerage position in the constructed network. It does not establish clinical or scientific superiority.

### Citation burst

Treat burst as rapid temporal attention in the analyzed corpus. It does not prove novelty, quality, or a current research frontier without contextual review.

## Safeguards

- Never fabricate CiteSpace outputs, parameter values, Q/S metrics, node counts, cluster labels, or burst results.
- Never claim an analysis was run without output files or an execution record.
- Do not infer evidence quality, causality, or treatment efficacy from bibliometric indicators.
- Preserve raw data and a reversible normalization log.
- Disclose corpus, database, language, index, citation-lag, and software limitations.
- Distinguish author keywords, Keywords Plus, extracted terms, and cited references.
- Avoid geopolitical or institutional normalization by convenience.
- Verify current version-specific functions and defaults before prescribing exact clicks.

## Common failure modes

| Failure | Correction |
|---|---|
| Attractive map treated as validation | Audit corpus, parameters, metrics, and source records |
| Missing cited references in export | Re-export correct record content |
| One parameter set only | Test reasonable alternatives for conclusion stability |
| One-year slices used automatically | Match slice length to volume and temporal question |
| Top N/g-index chosen for desired node count | Justify selection and assess sensitivity |
| Pruning treated as cosmetic | Report topology-changing effect |
| Q or silhouette used as universal pass/fail | Interpret with cluster size and content |
| Centrality called “importance” | Describe network bridging role cautiously |
| Burst called “frontier” automatically | Verify content and temporal context |
| Author/institution variants ignored | Use an auditable normalization dictionary |
| Companion/duplicate records unexamined | Audit corpus before mapping |
| Highly cited references not read | Verify document type and contribution |
| Partial recent year overinterpreted | Label incomplete coverage and citation lag |

## Reproducibility record

Record:

- exact corpus and raw filenames
- search/export provenance
- CiteSpace version/build and runtime details
- project name and analysis date
- time slicing
- node type and term source
- link settings
- selection criterion and parameters
- pruning settings
- clustering and labeling methods
- burst settings
- normalization dictionary/version
- exclusions and manual decisions
- network, cluster, and burst outputs
- sensitivity runs
- figure export settings
- deviations from protocol

## Manuscript-ready methods template

```text
Bibliographic records retrieved from [database/collection and indexes] were exported with [record content] and analyzed using CiteSpace [version/build]. The analysis covered [years] with [slice length]-year time slices. For the [node type] network, nodes were selected using [criterion and parameters], and [pruning setting] was applied. Clusters were generated using [method] and labeled using [labeling method/source]. Burst detection used [settings]. Data normalization and parameter-sensitivity procedures are reported in [appendix/supplement].
```

Do not fill bracketed fields with invented information.

## Completion criteria

The analysis is complete only when:

- corpus provenance and import completeness are verified
- research questions map to appropriate network types
- all consequential parameters are recorded
- normalization is reversible and documented
- network, cluster, and burst outputs are real and preserved
- Q, silhouette, centrality, and bursts are interpreted within limits
- important clusters and records are checked against source content
- reasonable parameter sensitivity is assessed
- figures explain visual encodings and software version
- claims are bounded to the analyzed corpus
- limitations and unresolved decisions remain visible
