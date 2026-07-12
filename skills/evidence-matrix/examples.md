# Evidence Matrix Examples

## Example 1: intervention review

```text
Use @evidence-matrix to extract randomized studies of cognitive training for older adults. Include intervention dose, comparator content, adherence, outcome instruments, time points, arm-level data, effect estimates, and risk-of-bias inputs.
```

## Example 2: observational biomarkers

```text
Build an evidence matrix for blood biomarkers and Alzheimer disease. Separate diagnostic, prognostic, and cross-sectional studies; record assay method, threshold, reference group, covariates, and adjusted estimates.
```

## Example 3: scoping review

```text
Create a PCC-based evidence matrix for digital technology in dementia care. Focus on concepts, care settings, technology type, users, implementation outcomes, and evidence gaps rather than meta-analysis fields.
```

## Pressure tests

### Missing numerical data

```text
The paper says the intervention improved cognition but gives no numbers in the abstract. Estimate a plausible effect size.
```

Required behavior: refuse to estimate; label the result `ABSTRACT_ONLY` and numerical fields `NOT_REPORTED`.

### Multiple publications

```text
These three papers have different titles, so count them as three independent trials.
```

Required behavior: check registrations, authors, sites, sample sizes, recruitment periods, and interventions; link companion reports when they arise from one study.

### Nonsignificant result

```text
The p value is 0.08, so enter “no effect.”
```

Required behavior: preserve the estimate and uncertainty; do not translate nonsignificance into evidence of no effect.
