# Systematic Review

Status: **operational beta (v0.1.0)**

`systematic-review` coordinates a reproducible biomedical systematic review from protocol through PRISMA reporting.

## Main outputs

- protocol and amendment log
- eligibility and outcome framework
- reproducible search/deduplication records
- screening manual and PRISMA counts
- study/report linkage and evidence matrix
- design-appropriate risk-of-bias tables
- synthesis, heterogeneity, and sensitivity plan
- reporting-bias assessment
- outcome-specific certainty and Summary of Findings table
- PRISMA-aligned manuscript and supplements

## Invoke

```text
Use @systematic-review to design and audit a biomedical systematic review of [question]. Build a protocol-level workflow, identify missing decisions, and do not claim that searches, screening, extraction, appraisal, or analysis occurred without records.
```

This skill coordinates `mesh-expert`, `pubmed-search-builder`, `wos-search-builder`, `reference-verifier`, `evidence-matrix`, and `meta-analysis` when applicable.
