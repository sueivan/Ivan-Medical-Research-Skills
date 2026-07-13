# Systematic Review

Status: **operational workflow beta (v0.1.0)**

`systematic-review` manages protocol, searching, deduplication, screening, study linkage, extraction, risk of bias, synthesis decisions, certainty assessment, PRISMA reporting, and reproducibility.

## IMRS integration

```text
mesh-expert
→ pubmed-search-builder / wos-search-builder
→ reference-verifier
→ evidence-matrix
→ systematic-review synthesis and reporting
→ medical-reviewer
```

Meta-analysis and GRADE outputs must remain pending until actually performed with recognized methods; this Skill never fabricates pooled estimates or certainty ratings.

## Invoke

```text
Use @systematic-review to develop and manage a protocol-driven systematic review of [question]. Apply design-specific methods, route searches and verification through operational IMRS skills, preserve independent screening decisions, and report all unfinished steps as pending.
```
