# IMRS Skill Standard

## 1. Directory structure

```text
skill-name/
├── SKILL.md
├── README.md
├── examples.md
├── checklist.md
├── CHANGELOG.md
└── templates/
```

Not every skill needs every file, but `SKILL.md` is mandatory.

## 2. Frontmatter

```yaml
---
name: lowercase-hyphenated-name
description: Use when ...
---
```

Rules:

- `name` contains lowercase letters, numbers, and hyphens only
- `description` states triggering conditions, not the workflow
- frontmatter should remain concise

## 3. Required sections

- Overview
- When to use
- When not to use
- Required inputs
- Workflow
- Safeguards
- Common failure modes
- Completion criteria

## 4. Scientific safeguards

Every medical research skill must:

- distinguish verified facts from inference
- require current verification for unstable information
- prohibit fabricated identifiers and results
- preserve uncertainty
- avoid equating citation impact with evidence quality
- avoid making clinical recommendations from inadequate evidence
- identify reporting standards when applicable

## 5. Reproducibility

A skill must require users to record relevant items such as:

- database and index
- search date
- software version
- parameter settings
- inclusion and exclusion criteria
- data transformations
- statistical assumptions
- analysis scripts
- deviations from protocol

## 6. Testing

Before release, test the skill against:

- incomplete input
- contradictory input
- pressure to invent missing data
- pressure to overstate results
- false or unresolved references
- ambiguous study design
- inappropriate method selection

## 7. Versioning

Use semantic versioning:

- patch: wording or minor correction
- minor: added workflow capability
- major: changed behavior or scope

## 8. Quality bar

A skill is not complete because it produces fluent text. It is complete only when it reliably prevents common methodological errors.
