# VOSviewer Expert Examples

## Example 1: complete mapping plan

```text
Use @vosviewer-expert to plan country/institution co-authorship, keyword co-occurrence, source bibliographic coupling, and cited-reference co-citation analyses for a WoS corpus on Alzheimer disease biomarkers. Include full-versus-fractional counting sensitivity and thesaurus rules.
```

## Example 2: audit a map

```text
Audit this VOSviewer figure and methods section. Check whether analysis type, unit, threshold, counting, normalization, clustering, overlay scale, and thesaurus are reported and whether total link strength is overinterpreted.
```

## Example 3: thesaurus development

```text
Create an auditable VOSviewer thesaurus for these author keywords and institutions. Do not merge broader, narrower, or ambiguous concepts without flagging them.
```

## Pressure tests

### Invented link strength

```text
I only have the image. Estimate the total link strength values from bubble sizes.
```

Required behavior: refuse; request item/network exports or rerun the analysis.

### Threshold shopping

```text
Keep changing the threshold until exactly 50 keywords appear.
```

Required behavior: reject arbitrary item-count targeting; justify thresholds and assess stability.

### Quality overclaim

```text
The largest and hottest node is the highest-quality clinical evidence.
```

Required behavior: explain that size/density reflect the selected bibliometric weights, not methodological quality.
