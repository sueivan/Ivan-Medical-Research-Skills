---
name: medical-reviewer
description: Use when critically reviewing, pre-submission auditing, or drafting reviewer comments for biomedical manuscripts, protocols, theses, reports, or evidence syntheses, with design-specific checks of methods, statistics, results, interpretation, reporting standards, ethics, reproducibility, and reference integrity.
---

# Medical Reviewer

## Overview

Perform an evidence-based, design-specific medical peer review. Identify the study design before selecting standards, distinguish fatal flaws from correctable reporting problems, trace every major criticism to manuscript evidence, and calibrate conclusions to the data.

This skill reviews scientific validity and reporting. It does not replace specialist statistical, laboratory, clinical, ethical, or regulatory judgment.

## When to use

Use this skill to:

- conduct a pre-submission manuscript audit
- review a journal submission, thesis, protocol, research report, or revision
- draft confidential editor comments and author-facing comments
- assess whether methods answer the stated question
- check consistency among abstract, methods, results, tables, figures, discussion, and conclusions
- identify applicable reporting guidelines
- prioritize major and minor revisions
- evaluate whether authors adequately answered reviewer comments

## When not to use

Do not use this skill to:

- invent missing data, analyses, registration, ethics approval, or references
- recommend acceptance or rejection solely from writing quality, novelty claims, journal prestige, or author identity
- perform a complete statistical reanalysis without data and code
- diagnose misconduct from textual suspicion alone
- equate reporting omissions automatically with actions not performed
- disclose confidential manuscript content outside the authorized review context
- rewrite the paper unless the user separately requests revision

## Required inputs

Obtain or state as unavailable:

1. full manuscript or relevant sections
2. title, abstract, tables, figures, supplements, and references
3. declared study design
4. target journal and author instructions, if relevant
5. protocol, registration, statistical analysis plan, ethics statement, or reporting checklist when available
6. reviewer role: journal reviewer, internal reviewer, supervisor, editor, or author self-audit
7. desired output language and recommendation format
8. whether reference and claim verification is requested

Do not infer that a method was performed merely because it is standard practice.

## Review states

Use these labels:

- `SUPPORTED`: adequately documented and appropriate
- `PARTIALLY_SUPPORTED`: plausible but incomplete or inconsistently reported
- `UNSUPPORTED`: claim or method is not supported by supplied evidence
- `NOT_REPORTED`: required information absent from inspected material
- `UNCLEAR`: wording prevents reliable judgment
- `NOT_APPLICABLE`: item does not apply
- `REQUIRES_SPECIALIST`: needs statistical, clinical, laboratory, ethical, or other expert review

## Severity levels

Classify every actionable finding:

- **Critical:** threatens validity, ethics, participant safety, data integrity, or interpretability and may not be correctable
- **Major:** materially affects reproducibility, bias, analysis, interpretation, or conclusions; revision or additional analysis is required
- **Moderate:** important clarity or reporting problem that does not alone invalidate the main result
- **Minor:** localized wording, presentation, consistency, or formatting issue
- **Editorial:** optional improvement that should not determine the decision

Do not inflate severity to make a review appear rigorous.

## Workflow

### 1. Define the review question

Record manuscript type, target audience, claimed contribution, reviewer role, and whether the task is methodological review, statistical review, reporting audit, or full peer review.

### 2. Identify the actual study design

Classify from methods rather than title alone:

- randomized trial
- nonrandomized intervention
- cohort, case-control, cross-sectional, diagnostic/prognostic study
- prediction model or AI/ML study
- qualitative or mixed-methods study
- systematic review, scoping review, meta-analysis, network meta-analysis
- bibliometric/science-mapping study
- animal or in vitro study
- medical education study
- protocol, guideline, economic evaluation, case report/series, or other design

If the design is mislabeled, flag the mismatch before applying a checklist.

### 3. Select current reporting and methodological standards

Choose standards appropriate to design and verify current versions when live access is available. Examples include:

- CONSORT and relevant extensions for randomized trials
- STROBE for observational studies
- PRISMA and relevant extensions for systematic reviews
- PRISMA-ScR for scoping reviews
- STARD for diagnostic accuracy
- TRIPOD or current prediction-model guidance
- CHEERS for economic evaluations
- COREQ or SRQR for qualitative studies
- CARE for case reports
- ARRIVE for animal research
- TIDieR for intervention description
- SPIRIT for trial protocols
- appropriate AI/ML reporting guidance for the clinical task and design

Reporting compliance does not prove low risk of bias. Use design-appropriate bias tools separately when required.

### 4. Trace the argument

Build a short logic map:

```text
Research gap → objective/hypothesis → design → population/data → measurements → analysis → results → conclusion
```

Flag breaks where a conclusion answers a different question from the methods or results.

### 5. Review title and abstract

Check:

- design identification
- population/intervention/exposure and primary outcome
- consistency with full text
- numerical accuracy
- balanced conclusion
- registration and funding when required
- avoidance of causal language unsupported by design

Abstract errors are substantive when they misrepresent primary results or harms.

### 6. Review introduction

Check whether the rationale is evidence-based, the gap is specific, objectives are prespecified and answerable, and novelty is not asserted through selective citation. Verify key references through `reference-verifier` when requested.

### 7. Review participants, setting, and sampling

Assess:

- source population and recruitment
- inclusion/exclusion criteria
- sampling method and representativeness
- dates and setting
- sample-size rationale
- attrition, missingness, and analysis population
- subgroup definitions
- selection and spectrum bias

Distinguish inadequate reporting from demonstrably biased execution.

### 8. Review interventions, exposures, comparators, and outcomes

Assess operational definitions, validity and reliability of measurements, timing, blinding, comparator content, adherence/fidelity, co-interventions, primary/secondary outcome hierarchy, and outcome switching.

For interventions, use TIDieR-relevant detail. For observational exposures, assess measurement timing, reference groups, confounding, and reverse causation.

### 9. Review design-specific internal validity

#### Randomized trials

Check sequence generation, allocation concealment, blinding, deviations, attrition, intention-to-treat principle, prespecified outcomes, harms, registration, protocol consistency, and cluster/crossover features.

#### Observational studies

Check temporality, selection, exposure/outcome measurement, confounder rationale, overadjustment, collider bias, missing data, loss to follow-up, sensitivity analysis, and causal wording.

#### Diagnostic accuracy

Check intended use, patient spectrum, reference standard, blinding, prespecified threshold, flow/timing, indeterminate results, verification bias, and confidence intervals for accuracy measures.

#### Prediction/AI models

Check data provenance, participant flow, outcome definition, feature availability, leakage, preprocessing within resampling, missing data, class imbalance, sample size/events, calibration, discrimination, validation type, optimism correction, comparator, fairness, explainability claims, and external transportability.

#### Systematic/scoping reviews

Check protocol/registration, eligibility, databases, reproducible strategies, duplicate screening/extraction, excluded-study handling, risk of bias, synthesis suitability, heterogeneity, publication bias, certainty, and PRISMA flow consistency. A scoping review should not be criticized for omitting meta-analysis when mapping is its justified objective.

#### Bibliometric studies

Check database/index scope, exact search, search date, corpus boundary, document types, export completeness, cleaning and entity merging, software versions, parameters, time slicing, network definitions, cluster validation, and limits of citation-based inference.

#### Qualitative/mixed methods

Check epistemological fit, sampling rationale, reflexivity, data collection, saturation/information power claims, analytic process, triangulation, negative cases, participant quotations, integration, and transferability.

#### Animal/in vitro studies

Check model justification, randomization, blinding, sample-size basis, biological replicates, batch effects, exclusions, humane endpoints, sex as a variable, protocol detail, and translational overclaiming.

#### Medical education studies

Check educational theory, intervention description, comparator, learner selection, clustering, validated instruments, response bias, repeated measures, contamination, implementation fidelity, and whether outcomes exceed satisfaction/self-report.

### 10. Review statistical methods

Assess:

- alignment with design, outcome scale, distribution, and repeated/clustered structure
- sample-size and power assumptions
- primary analysis and estimand
- model assumptions and diagnostics
- confounder/covariate selection
- missing-data mechanism and handling
- multiplicity and subgroup interactions
- effect estimates with uncertainty, not p values alone
- sensitivity analyses
- software and reproducible code

Do not demand normality tests mechanically or treat p>0.05 as proof of no effect. Mark complex concerns `REQUIRES_SPECIALIST` when necessary.

### 11. Review results and internal consistency

Check participant counts, denominators, percentages, totals, tables, figures, units, decimal consistency, effect direction, confidence intervals, p values, subgroup labels, outcome time points, harms, and correspondence with prespecified analyses.

Recalculate only when inputs are explicit; label recalculations and assumptions.

### 12. Review discussion and conclusions

Check whether authors:

- summarize without selectively repeating favorable findings
- compare appropriately with prior evidence
- discuss plausible alternatives and limitations
- distinguish association, prediction, diagnosis, and causation
- address clinical relevance separately from statistical significance
- avoid claiming equivalence from nonsignificance
- avoid generalizing beyond population, setting, model, or follow-up
- avoid recommendations unsupported by evidence certainty

### 13. Review ethics, transparency, and integrity

Check ethics approval/waiver, consent, trial registration, data and code availability, funding, conflicts, author contributions, reporting of harms, privacy, image/data manipulation concerns, and use of AI disclosures when required.

Do not accuse misconduct without evidence. Describe the observation and request clarification or editorial investigation.

### 14. Review references and claim support

When requested, route identifiers and metadata to `reference-verifier`. Separate:

- bibliographic validity
- whether the cited source directly supports the statement
- whether a primary source is preferable
- whether important contrary evidence is omitted

Do not invent replacement citations.

### 15. Synthesize prioritized findings

For each finding provide:

1. location
2. observation
3. why it matters
4. required action or question
5. severity
6. evidence/state

Avoid vague comments such as “methods need improvement.”

### 16. Calibrate the recommendation

Use journal-specific categories when supplied. Otherwise report one of:

- methodologically sound with minor revisions
- potentially sound but major revision required
- validity cannot be determined from current reporting
- fundamental design/analysis problem unlikely to be correctable
- specialist review required before recommendation

The recommendation must follow the findings, not novelty preference.

## Output structure

### Review summary

- manuscript design and question
- overall validity assessment
- main strengths grounded in evidence
- three to five highest-priority concerns
- recommendation and confidence

### Major comments

Numbered, prioritized, actionable comments.

### Minor comments

Localized clarity, consistency, presentation, and reporting points.

### Confidential comments to editor

Include only information inappropriate for author-facing comments, such as decision rationale, ethical concerns requiring confidential handling, or need for specialist review. Do not insult authors or speculate about motives.

## Safeguards

- Never fabricate manuscript content, analyses, references, standards, or reviewer expertise.
- Never claim a checklist was completed if the required manuscript sections were unavailable.
- Never confuse absence of reporting with proof that a procedure was not performed.
- Never demand post hoc analyses without discussing bias and multiplicity.
- Never recommend causal conclusions from designs that do not support them.
- Never equate statistical significance with clinical importance.
- Never equate nonsignificance with equivalence or no effect.
- Never infer evidence quality from citation count or journal impact.
- Protect confidential and personally identifiable information.
- Disclose uncertainty and specialist-review needs.

## Common failure modes

| Failure | Correction |
|---|---|
| One checklist for all designs | Identify design and select matching standards |
| Line editing before validity review | Review question, design, methods, and results first |
| Vague criticism | Give location, impact, and actionable request |
| Treating missing reporting as failed conduct | Use `NOT_REPORTED` and request clarification |
| Demanding significance | Prioritize estimates and uncertainty |
| Calling p>0.05 “no effect” | Assess estimate, interval, power, and estimand |
| Recommending every possible analysis | Require only analyses linked to validity or objectives |
| Ignoring protocol/registration | Compare prespecified and reported outcomes |
| Overstating suspected misconduct | Report observations and seek clarification/editor review |
| Checking reference format only | Verify identity and claim support separately |
| Equal weight to all comments | Assign severity and priority |
| Rewriting instead of reviewing | Diagnose first; edit only when requested |

## Reproducibility record

Record:

- manuscript version and review date
- reviewer role and scope
- study-design classification
- standards and versions consulted
- materials available and missing
- section/table/figure locations
- finding severity and state
- calculations and assumptions
- reference-verification status
- specialist-review referrals
- recommendation rationale
- changes assessed in revised versions

## Completion criteria

The review is complete only when:

- actual study design and review scope are explicit
- appropriate standards are selected and current-version status is clear
- methods, statistics, results, interpretation, ethics, and transparency are assessed
- every major comment is located, consequential, and actionable
- severity is calibrated
- missing reporting is distinguished from confirmed methodological failure
- numerical and cross-section inconsistencies are checked
- reference identity and claim support are not conflated
- conclusions are evaluated against design and evidence
- specialist-review needs and uncertainty are visible
- recommendation is traceable to prioritized findings
