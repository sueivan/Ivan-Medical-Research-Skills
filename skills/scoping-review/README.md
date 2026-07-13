# Scoping Review

Status: **operational workflow beta (v0.1.0)**

`scoping-review` manages PCC formulation, protocol, broad evidence searching, deduplication, independent screening, data charting, evidence mapping, gap classification, consultation, and PRISMA-ScR reporting.

## IMRS integration

```text
mesh-expert
→ pubmed-search-builder / wos-search-builder
→ reference-verifier
→ evidence-matrix-based charting
→ scoping-review mapping and reporting
→ medical-reviewer
```

## Invoke

```text
Use @scoping-review to map [concept] among [population] in [context]. Define PCC, evidence-source boundaries, protocol, searches, dual screening, charting, mapping outputs, gap taxonomy, and PRISMA-ScR records.
```

Do not add meta-analysis or GRADE unless a separate, justified question requires them.
