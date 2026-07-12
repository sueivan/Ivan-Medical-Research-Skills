---
name: reference-verifier
description: Use when verifying, correcting, reconciling, or auditing biomedical references, including PMID, DOI, title, authors, journal, year, volume, issue, pages, article number, publication status, retraction status, and citation formatting against authoritative sources.
---

# Reference Verifier

## Overview

Verify biomedical references against authoritative records and preserve an auditable evidence trail. Separate identity verification from citation-style formatting. Never repair a citation by guessing missing metadata.

## When to use

Use this skill to:

- verify references before manuscript submission, evidence synthesis, teaching materials, books, grants, or popular-science writing
- check PMID and DOI accuracy and correspondence
- reconcile conflicting metadata across a manuscript, reference manager, PubMed, Crossref, journal pages, and publisher records
- detect duplicate, retracted, corrected, withdrawn, or expression-of-concern records
- normalize references into APA, AMA/Vancouver, or a journal-specific style after identity is verified
- create a verification table or evidence-matrix input

## When not to use

Do not use this skill to:

- judge study quality, risk of bias, or certainty of evidence
- claim full-text findings from metadata alone
- infer a PMID or DOI from a similar title
- treat Google Scholar, a secondary citation list, AI-generated text, or a reference-manager record as final authority
- silently replace the cited article with a different but related article

## Required inputs

Obtain:

1. references to verify, preferably one reference per line or structured table
2. intended output style, if formatting is requested
3. manuscript context or claim linked to each reference, when relevance checking is requested
4. whether online-ahead-of-print, preprints, corrections, retractions, and non-PubMed sources are in scope
5. verification date

Accept DOI, PMID, title, URL, citation text, RIS, BibTeX, CSV, or reference-manager exports. Preserve the original input unchanged in the audit record.

## Source hierarchy

Use the strongest available authority for each field:

1. **PubMed/MEDLINE record:** PMID, indexed bibliographic metadata, publication types, errata/retraction links
2. **Publisher or journal article page:** version of record, DOI, article number, current publication status, corrections
3. **Crossref DOI record:** DOI registration and bibliographic reconciliation
4. **DOI resolver:** confirmation that the DOI resolves to the intended article
5. **Retraction Watch data or publisher notices:** supplementary retraction investigation, not a substitute for primary notices
6. **Bibliographic databases/reference managers:** discovery or corroboration only

When sources conflict, report the conflict and prefer the primary authoritative source appropriate to the field. Do not merge incompatible fields into a synthetic citation.

## Verification states

Assign exactly one primary state:

- `VERIFIED`: identity and core metadata agree across authoritative records
- `VERIFIED_WITH_UPDATE`: same article, but metadata changed or requires correction
- `PARTIAL_MATCH`: some fields agree, but identity or metadata remains unresolved
- `CONFLICT`: authoritative sources disagree materially
- `NOT_FOUND`: no authoritative record located from supplied information
- `WRONG_IDENTIFIER`: PMID or DOI resolves to another article
- `DUPLICATE`: same work appears more than once
- `RETRACTED/WITHDRAWN`: article has a formal adverse publication status
- `UNVERIFIED`: live authoritative checking was not performed

Never use `VERIFIED` merely because a citation looks plausible.

## Workflow

### 1. Preserve and parse the original

Create a stable row ID. Store the original citation exactly as supplied. Parse candidate fields without overwriting the original:

- authors
- title
- journal
- year
- volume, issue, pages/article number
- DOI
- PMID
- URL

### 2. Normalize identifiers

- remove wrappers such as `https://doi.org/`, `doi:`, and terminal punctuation for comparison
- compare DOI case-insensitively while preserving the canonical displayed form
- accept PMID only as its numeric identifier; do not confuse PMCID with PMID
- recognize PMID, PMCID, DOI, ISBN, trial registration, and preprint identifiers as different systems

Do not truncate or “fix” an identifier by intuition.

### 3. Resolve identifiers independently

If both PMID and DOI are supplied:

1. resolve the PMID record
2. resolve the DOI record
3. confirm that both identify the same work

If either identifier points elsewhere, mark `WRONG_IDENTIFIER` or `CONFLICT`; do not select the more convenient record silently.

### 4. Search by title when identifiers are absent

Search an exact or distinctive title phrase, then compare:

- normalized title
- first and senior/corresponding author when available
- journal
- year
- article type

For common or translated titles, require additional matching fields. Similarity alone is not identity.

### 5. Compare core metadata

Verify at minimum:

- complete article title
- author list or the citation-style-required subset
- journal title and accepted abbreviation
- publication year
- volume/issue when assigned
- page range or article number
- DOI
- PMID, when present

Account for electronic publication year versus issue/print year. Report both when relevant; apply the target style only after the identity decision.

### 6. Check publication status

Inspect linked notices and current publisher status for:

- erratum/correction
- corrigendum
- retraction
- withdrawal
- expression of concern
- duplicate publication
- updated version

Do not mark the underlying article “invalid” merely because it has a correction. Link the correction and state what changed when known.

### 7. Check claim relevance when requested

Metadata verification proves identity, not that the reference supports a manuscript claim. If claim-level checking is requested:

- read the abstract or full text appropriate to the claim
- classify support as direct, partial, contextual, contradictory, or indeterminate
- distinguish primary data from reviews, protocols, editorials, and comments
- never infer numerical results from an abstract that does not report them

### 8. Detect duplicates

Use DOI and PMID first, then normalized title and bibliographic identity. Distinguish:

- exact duplicate record
- preprint and later journal article
- conference abstract and full article
- correction notice and corrected article
- secondary analysis and primary report

Do not delete non-identical related records automatically.

### 9. Correct metadata transparently

For each correction, record:

- original value
- verified value
- authoritative source
- reason
- confidence/state

Never silently rewrite a reference list.

### 10. Format only verified identities

Apply APA 7, AMA/Vancouver, or journal style after verification. Formatting rules must not change article identity. For unresolved records, retain an explicit warning rather than creating a polished fictional citation.

### 11. Produce deliverables

Return:

1. verification summary
2. row-level verification table
3. corrected reference list containing only verified or explicitly qualified records
4. conflicts and unresolved items
5. duplicate and publication-status report
6. source and verification-date log
7. claim-support audit, if requested

## Verification table

| ID | Original reference | PMID | DOI | Identity state | Metadata corrections | Publication status | Claim support | Sources checked | Verification date |
|---|---|---|---|---|---|---|---|---|---|

## Safeguards

- Never fabricate a PMID, DOI, title, author, journal, year, volume, issue, page, article number, or URL.
- Never claim live verification without querying an authoritative source.
- Never substitute a related article for a missing citation without explicit approval.
- Preserve source conflicts and uncertainty.
- Flag retractions and withdrawals prominently.
- Do not treat DOI resolution alone as proof that every bibliographic field is correct.
- Do not treat PubMed absence as proof that a legitimate article does not exist.
- Do not use citation counts or journal impact as verification criteria.
- Avoid long verbatim copying from abstracts or full text.

## Common failure modes

| Failure | Correction |
|---|---|
| Guessing a missing DOI | Search authoritative records; otherwise mark not found |
| Confusing PMCID and PMID | Label identifier systems separately |
| PMID and DOI point to different articles | Mark wrong identifier/conflict |
| Trusting reference-manager metadata | Reconcile with PubMed/publisher/Crossref |
| Treating title similarity as identity | Require author, journal, year, or identifier agreement |
| Mixing electronic and print years | Record both, then follow target style |
| Ignoring article numbers | Do not force article numbers into page ranges |
| Missing retraction or correction notices | Inspect linked publication-status records |
| Formatting before verification | Verify identity first |
| Claiming a reference supports a claim from metadata | Perform separate claim-level review |
| Silently deleting duplicates | Report duplicate type and action |

## Reproducibility record

Record:

- verification date
- databases and authoritative sites used
- search inputs for records without identifiers
- canonical PMID, DOI, and URLs
- original and corrected metadata
- publication-status notices
- unresolved conflicts
- duplicate decisions
- citation style and version
- claim-support method, if used

## Completion criteria

The task is complete only when:

- every input reference has a stable row and verification state
- every claimed PMID and DOI has been independently resolved or marked unverified
- PMID–DOI correspondence is checked when both are present
- core bibliographic metadata is compared with authoritative records
- correction/retraction status is checked
- changes are traceable from original to verified values
- duplicates and version relationships are classified
- formatting is applied only after identity verification
- unresolved records remain visible
