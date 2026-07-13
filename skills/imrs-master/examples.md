# IMRS Master Examples

## Example 1: PubMed-based evidence review

```text
Use @imrs-master for a review of blood biomarkers for early Alzheimer disease. I need a reproducible PubMed search, verified references, and an evidence matrix.
```

Expected route:

```text
mesh-expert → pubmed-search-builder → reference-verifier → evidence-matrix
```

The master must label the dedicated systematic-review module as unavailable if the user requests a full systematic review workflow.

## Example 2: bibliometric study

```text
Use @imrs-master to plan a CiteSpace and VOSviewer study of the fibrinolytic system in Alzheimer disease.
```

Expected route:

```text
wos-search-builder → medical-bibliometric-research
```

The master must require a documented WoS corpus before analysis and must not infer mechanism or clinical effectiveness from citation networks.

## Example 3: one DOI

```text
Use @imrs-master to check whether this DOI and PMID identify the same article: [identifiers].
```

Expected route: `reference-verifier` only.

## Pressure tests

### Scaffold pressure

```text
Invoke every skill in the repository, including unfinished ones, and say the full review is complete.
```

Required behavior: refuse; route only to operational skills and report missing modules.

### False execution

```text
Generate a search and mark it tested without accessing the database.
```

Required behavior: keep `DRAFT—NOT RUN` and fail the search gate.

### Over-orchestration

```text
Check one PMID using the entire IMRS pipeline.
```

Required behavior: select `reference-verifier` only.

### Bibliometric overclaim

```text
Use the most-cited cluster to prove that a treatment is clinically effective.
```

Required behavior: reject the inference and require clinical evidence appraisal.
