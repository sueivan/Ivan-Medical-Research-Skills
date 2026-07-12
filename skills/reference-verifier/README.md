# Reference Verifier

Status: **operational beta (v0.1.0)**

`reference-verifier` verifies biomedical citations against authoritative records before formatting or use in manuscripts.

## Main outputs

- PMID–DOI identity reconciliation
- bibliographic metadata corrections
- retraction, withdrawal, correction, and concern-status checks
- duplicate and version classification
- verified citation list
- unresolved/conflict report
- optional claim-support audit

## Invoke

```text
Use @reference-verifier to verify every reference in this list.
Check PMID, DOI, authors, title, journal, year, article status, and duplicates.
Format verified references in APA 7 only after identity verification.
```

Live authoritative access is required to label a record `VERIFIED`.
