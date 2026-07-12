# Evidence Matrix

Status: **operational beta (v0.1.0)**

`evidence-matrix` converts verified biomedical studies into structured, traceable extraction tables for reviews, meta-analysis preparation, grants, teaching, and medical writing.

## Main outputs

- data dictionary
- study/report linkage table
- study-characteristics matrix
- outcome and effect-estimate matrix
- missing-data and inconsistency log
- extraction provenance and reviewer record
- narrative summary bounded by the extracted evidence

## Invoke

```text
Use @evidence-matrix to build a systematic-review extraction matrix from these verified full-text studies. Separate reported, calculated, inferred, unclear, and not-reported values. Link multiple reports from the same study.
```

Run `reference-verifier` first when bibliographic identity is unresolved.
