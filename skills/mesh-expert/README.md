# MeSH Expert

Status: **operational beta (v0.1.0)**

`mesh-expert` maps biomedical concepts to verified MeSH descriptors and complementary free-text terms for PubMed and MEDLINE searching.

Main outputs include a MeSH verification table, tree and explosion decisions, qualifier decisions, free-text synonyms, provisional PubMed concept blocks, and a reproducibility record.

```text
Use @mesh-expert to map the concepts in this research question:
[question]
Database: PubMed
Priority: high sensitivity
```

Pass the output to `pubmed-search-builder` before finalizing a complete strategy.
