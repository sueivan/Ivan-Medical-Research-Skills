---
name: apa7-checker
description: Use when checking, correcting, reconciling, or formatting APA 7th edition in-text citations and reference lists for biomedical, health, education, social-science, or interdisciplinary writing, including author–date matching, ordering, DOI/URL presentation, source-type templates, non-English works, tables/figures, and audit reports.
---

# APA 7 Checker

## Overview

Audit APA 7 citation mechanics after bibliographic identity has been verified. Check every in-text citation against the reference list, every reference against in-text use, and every entry against the correct source type. Preserve verified metadata; never “fix” an APA problem by inventing or changing the cited work.

APA formatting accuracy and reference validity are different tasks.

## Operational dependencies

| Task | IMRS skill |
|---|---|
| PMID, DOI, authors, title, journal, year, status | `reference-verifier` |
| Claim support | `reference-verifier`, `evidence-matrix`, `medical-reviewer` |
| Manuscript-level methodological review | `medical-reviewer` |
| Evidence-based writing | relevant domain/review skill |

When metadata are unverified or conflicting, route them to `reference-verifier` before final APA correction.

## When to use

Use this skill to:

- audit in-text citations and reference lists
- convert verified metadata to APA 7 style
- reconcile missing, orphan, duplicate, or inconsistent citations
- check author–date forms, narrative/parenthetical citations, quotations, multiple works, and same-author/same-year labels
- format journal articles, books, chapters, reports, webpages, datasets, software, theses, conference materials, preprints, and other sources
- check DOI and URL presentation
- produce an error report and corrected list
- apply journal-specific deviations after APA 7 baseline

## When not to use

Do not use this skill to:

- verify whether a source exists or supports a claim
- fabricate DOI, PMID, author, title, date, publisher, page, URL, or retrieval date
- replace an inaccessible or incorrect source with a related one silently
- force APA style when the target journal requires another style
- treat citation-manager output as authoritative without inspection
- reproduce long copyrighted guidance or substitute for the official APA manual

## Required inputs

Obtain or mark unresolved:

1. complete manuscript text with in-text citations
2. complete reference list
3. verified metadata or permission to verify through `reference-verifier`
4. target language and whether transliteration/translation is required
5. target journal/institution and documented deviations from APA 7
6. treatment of supplemental material, tables, figures, appendices, and online-first records
7. preferred output: corrected text, corrected references, issue table, or all

Preserve the original manuscript and reference list before editing.

## Audit states

Use:

- `APA_COMPLIANT`
- `FORMAT_CORRECTION_REQUIRED`
- `IN_TEXT_REFERENCE_MISMATCH`
- `DUPLICATE_ENTRY`
- `SOURCE_TYPE_UNCLEAR`
- `METADATA_CONFLICT`
- `IDENTITY_UNVERIFIED`
- `CLAIM_SUPPORT_NOT_ASSESSED`
- `JOURNAL_DEVIATION`
- `MANUAL_REVIEW_REQUIRED`

## Workflow

### 1. Confirm target style

Verify that APA 7 is required. Record target journal/institution and any documented deviations in capitalization, DOI, issue numbers, article numbers, reference limits, or citation placement.

Apply target instructions over baseline APA only when the deviation is explicit and current.

### 2. Preserve and parse inputs

Create stable IDs for:

- each in-text citation occurrence
- each reference-list entry
- each cited source identity

Preserve original text. Parse authors, date, title, source, volume, issue, pages/article number, DOI, URL, and source type without overwriting verified data.

### 3. Verify bibliographic identity first

If any identity or metadata are uncertain, use `reference-verifier`. Confirm author order, publication year, article title, journal, volume/issue, pages/article number, DOI, and publication status.

APA checking must not guess missing fields. Mark unresolved records `IDENTITY_UNVERIFIED`.

### 4. Create an in-text/reference crosswalk

Match by source identity, not text similarity alone. Report:

- cited in text but absent from references
- listed in references but never cited
- author spelling/order mismatch
- year mismatch
- same author/year suffix mismatch
- duplicate reference entries
- one citation label pointing to multiple sources
- multiple citation labels pointing to one source

Do not delete uncited references automatically; they may be cited in omitted tables, figures, appendices, or supplements.

### 5. Check author–date in-text forms

Apply APA 7 author rules:

- one author: author and year
- two authors: both names on every citation
- three or more authors: first author plus “et al.” from the first citation, unless disambiguation is required
- group author: full name, with abbreviation introduced only when useful and unambiguous
- no author: use an appropriate shortened title
- no date: use `n.d.` when verified

Use `&` in parenthetical citations and “and” in English narrative citations. Adapt surrounding prose correctly in other languages while preserving APA citation logic.

### 6. Check narrative and parenthetical placement

Narrative example:

```text
Author (2024) reported ...
```

Parenthetical example:

```text
... (Author, 2024).
```

Avoid duplicating the author or year in the same sentence. Place punctuation according to quotation and citation context.

### 7. Check multiple works in one citation

Order different-author works alphabetically by first-author surname and separate them with semicolons. Order multiple works by the same author chronologically, using `n.d.` and in-press placement according to APA rules.

Do not reorder citations numerically or by perceived importance.

### 8. Check same-author/same-year disambiguation

Assign `a`, `b`, `c` based on the reference-list ordering rules, not citation appearance. Apply suffixes consistently in every in-text citation and reference entry.

When author lists differ but truncate to the same `et al.` form, add enough author names in text to distinguish the works according to APA rules.

### 9. Check quotations and specific parts

For direct quotations include page number when available. For unpaginated works use a meaningful locator such as paragraph, section, table, or timestamp when appropriate.

Verify quotation accuracy and permissions separately. Do not add a fabricated page number. Paraphrases generally do not require locators, though they may improve precision.

### 10. Identify source type before formatting

Classify each source accurately:

- journal article
- advance online publication/online first
- book or edited book
- chapter in edited book
- report or organizational publication
- webpage/site content
- dataset
- software/application
- thesis/dissertation
- conference presentation/proceeding
- preprint
- guideline/standard
- legal material
- social media/audiovisual/podcast
- other

Do not apply the journal-article pattern to every source.

### 11. Format authors

Preserve verified author order and spelling. Format surnames and initials according to APA 7. Include up to 20 authors; for 21 or more, list the first 19, an ellipsis, and the final author.

Handle group authors, suffixes, particles, hyphenated names, compound surnames, and culturally specific names cautiously. Do not infer surname boundaries without evidence.

### 12. Format dates

Use the date form required by source type. Journal references generally use the publication year; webpages and time-sensitive content may use year, month, and day when available.

Distinguish online-first date, issue year, update date, and retrieval date. Do not choose a date merely to match an in-text citation; reconcile through authoritative metadata.

### 13. Apply title capitalization

Use sentence case for article, chapter, report, book, webpage, dataset, software, thesis, and similar work titles, preserving proper nouns, acronyms, gene/protein symbols, drug names, and required capitalization.

Use title case for periodical titles. Do not mechanically lowercase scientifically meaningful capitalization.

### 14. Apply italics and source elements

In final rendered output, apply italics to the appropriate work or source elements by source type. For journal articles, periodical title and volume are typically italicized; issue number is not. Article title is not italicized.

Plain-text exports should use a documented marker or remain semantically correct for later formatting rather than inserting inconsistent symbols.

### 15. Format journal articles

Typical structure:

```text
Author, A. A., & Author, B. B. (Year). Title of article. Journal Title, volume(issue), pages or article number. https://doi.org/xxxxx
```

Use verified volume, issue, page range, or article number. Do not prefix an article number with `pp.` or convert it into a page range.

### 16. Format DOI and URLs

Present DOI as a hyperlink:

```text
https://doi.org/10.xxxx/xxxxx
```

Do not use `doi:` before the hyperlink. Remove duplicate resolver prefixes and terminal punctuation not belonging to the identifier. DOI matching is case insensitive, but preserve the authoritative canonical form when practical.

Do not add “Retrieved from” before most URLs. Add a retrieval date only when content is designed to change and an archived version is not used, consistent with source-type guidance.

### 17. Handle database and publisher information

For ordinary journal articles, omit database names and URLs when a DOI is present; do not include PubMed URLs as a substitute for a DOI unless the source type or project requires it.

Follow source-specific rules for proprietary databases, dissertations, datasets, or archival materials.

### 18. Handle books and chapters

Distinguish authored book, edited book, and chapter in an edited book. Include editors and chapter page range only for chapters. Do not include publisher location in APA 7.

Use edition information when not the first edition. Verify publisher and DOI/URL.

### 19. Handle reports, guidelines, and group authors

Identify individual or group author, date/version, title, report number, publisher, and DOI/URL. When author and publisher are the same, omit the repeated publisher according to APA rules.

For guidelines, distinguish the guideline itself from an article summarizing it. Verify the current version and responsible organization.

### 20. Handle webpages and changing content

Distinguish a specific webpage from a whole website. Identify author, full date, page title, site name, and URL. Omit the site name when it duplicates the author where APA rules require.

Do not use a webpage pattern for online journal articles.

### 21. Handle non-English and translated works

Preserve the original title according to the source and provide an English translation in square brackets when required for an English-language reference list. Follow target-language and journal rules for transliteration.

Do not invent translations or transliterations. Preserve diacritics and verified names. For translated editions, distinguish the original work date and the edition actually consulted when applicable.

### 22. Handle preprints and versions

Label preprints as preprints and include the repository/platform and DOI/URL. If a later peer-reviewed article exists, decide which version supports the claim and cite transparently; do not list both as independent evidence without reason.

Route version relationships to `reference-verifier`.

### 23. Check tables, figures, appendices, and supplements

Include citations appearing only in table notes, figure captions, appendices, or supplementary material in the crosswalk. Check source notes, permissions/attributions, and reproduced/adapted material separately.

Do not mark a reference orphaned until all manuscript components are inspected.

### 24. Sort and format the reference list

Sort alphabetically by author/group author/title according to APA rules. Apply same-author ordering and same-year suffixes consistently.

Final document formatting should use hanging indents and consistent spacing as required by the target document. Do not insert manual spaces to simulate indentation.

### 25. Detect duplicates and near-duplicates

Use DOI/PMID first, then verified bibliographic identity. Distinguish exact duplicates from preprint/article, abstract/full paper, correction/original article, and multiple reports.

Do not merge distinct papers merely because titles are similar.

### 26. Separate APA errors from scientific errors

Classify findings:

- citation/reference mismatch
- APA punctuation/order/capitalization/italics issue
- verified metadata error
- duplicate/version issue
- source-type uncertainty
- claim-support concern
- journal-specific deviation

Route metadata and claim support outside APA formatting when necessary.

### 27. Produce deliverables

Return as requested:

1. audit summary
2. citation–reference crosswalk
3. issue log with original and corrected forms
4. corrected in-text citations
5. corrected reference list
6. unresolved metadata/source-type records
7. journal-deviation log

## Issue severity

- **Critical:** citation points to the wrong source, fabricated/unverifiable identity, retracted status hidden, or systematic mismatch that changes attribution
- **Major:** missing reference/citation, wrong author/year identity, duplicate identity, source type causing materially incorrect entry
- **Moderate:** DOI/URL, author list, title, journal, date, volume/issue, page/article-number, or ordering problem
- **Minor:** punctuation, spacing, capitalization, italics, ampersand, locator, or presentation issue
- **Editorial:** optional consistency improvement outside strict compliance

## Safeguards

- Never fabricate metadata, identifiers, locators, translations, retrieval dates, or source types.
- Never change author order or publication year merely to make citations match.
- Never mark a reference valid because its APA formatting looks correct.
- Never treat PubMed absence as proof that a source is false.
- Never silently replace a cited work with a related work.
- Never remove uncited references before checking tables, figures, appendices, and supplements.
- Never use DOI resolution alone as proof that all metadata are correct.
- Never assume journal-specific rules without current instructions.
- Preserve original text and every correction.

## Common failure modes

| Failure | Correction |
|---|---|
| Formatting before identity verification | Use `reference-verifier` first |
| Every source formatted as journal article | Classify source type |
| Three-author citations list all names | Use first author + et al. unless disambiguation requires more |
| Two-author citations use et al. | Cite both authors every time |
| `doi:` or PubMed URL used with DOI | Use canonical DOI hyperlink |
| Article number treated as page range | Preserve article number |
| Database URL added to ordinary article | Omit when DOI/standard reference suffices |
| Same-year suffix based on citation order | Base on reference-list ordering |
| Alpha order replaced by citation order | Restore APA reference ordering |
| Scientific capitalization lowercased blindly | Preserve proper nouns and technical symbols |
| Unverified page number added to quote | Use verified alternative locator or flag |
| Orphan reference deleted too early | Inspect every manuscript component |

## Reproducibility record

Record:

- manuscript/reference-list version and date
- target APA/journal rules and access date
- source identities and verification state
- citation-occurrence and reference-entry IDs
- original and corrected forms
- issue category and severity
- author/year/suffix decisions
- source-type classification
- DOI/URL and retrieval-date decisions
- non-English translation/transliteration source
- duplicate/version decisions
- unresolved records and manual review

## Completion criteria

The APA audit is complete only when:

- target APA 7 and journal deviations are explicit
- every in-text citation is linked to one verified or visibly unresolved reference
- every reference is cited or documented as legitimately uncited
- author, year, and same-year suffixes agree
- source type is identified for every entry
- authors, dates, titles, sources, volume/issue, pages/article numbers, DOI/URL, and ordering are checked
- quotations use verified locators when required
- duplicates and version relationships are resolved or flagged
- non-English works are handled without invented translation/transliteration
- metadata/claim-support concerns are separated from format corrections
- corrected text and reference list remain traceable to originals
