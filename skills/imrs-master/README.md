# IMRS Master

Status: **limited operational orchestrator (v0.1.0)**

`imrs-master` routes biomedical research tasks through the smallest valid sequence of completed Ivan Medical Research Skills.

## Operational routes in v0.1.0

- `mesh-expert`
- `pubmed-search-builder`
- `wos-search-builder`
- `reference-verifier`
- `evidence-matrix`
- `medical-bibliometric-research`

It must not treat roadmap scaffolds as finished skills.

## Invoke

```text
Use @imrs-master to design and manage the IMRS workflow for this research question: [question]. Identify the product, route only to operational skills, apply quality gates, and show unresolved capability gaps.
```

Update the registry whenever another IMRS skill becomes operational.
