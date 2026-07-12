# Ivan Medical Research Skills

**Ivan Medical Research Skills (IMRS)** is an open-source library of reusable AI-assisted workflows for medical research.

The project focuses on methodological rigor, evidence verification, reproducibility, and reviewer-grade quality control.

## Core principles

1. **Evidence first**  
   Never invent PMID, DOI, study results, statistics, or bibliometric outputs.

2. **Reproducibility**  
   Record databases, search dates, software versions, parameters, exclusions, and analysis decisions.

3. **Reviewer thinking**  
   Every workflow should identify likely methodological weaknesses before submission.

4. **Bounded interpretation**  
   Do not overstate what bibliometric, observational, educational, or secondary evidence can support.

## Repository structure

```text
skills/       Reusable research skills
docs/         Standards and governance
templates/    Shared research templates
examples/     Example invocation prompts
.github/      Issue and pull-request templates
```

## Current status

- `medical-bibliometric-research`: first complete skill
- other v1.0 skills: planned and scaffolded
- current milestone: repository foundation and quality standardization

## Planned v1.0 modules

- Literature searching
- Evidence synthesis
- Bibliometric analysis
- Medical writing
- Peer review
- Research design
- Grant and patent support
- Alzheimer's disease research
- Medical education
- Medical popular science

## Installation

Copy a skill folder from `skills/` into the personal skills directory used by the target agent environment.

Example:

```text
~/.codex/skills/medical-bibliometric-research/
```

Each skill must contain a valid `SKILL.md`.

## License

MIT License.
