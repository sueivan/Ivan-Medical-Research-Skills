---
name: evidence-matrix
description: Use when designing, populating, auditing, or updating a structured evidence matrix for biomedical literature reviews, systematic reviews, scoping reviews, guidelines, grants, teaching, or book chapters, including study characteristics, methods, outcomes, effect estimates, limitations, and source traceability.
---

# Evidence Matrix

## Overview

Transform verified biomedical studies into a structured, traceable evidence table. Preserve the distinction between what authors reported, what was calculated from reported data, and what the reviewer inferred. An evidence matrix organizes evidence; it does not by itself establish certainty or causality.

## When to use

Use this skill to:

- design a data-extraction matrix before or during a review
- extract comparable study characteristics and findings
- prepare inputs for systematic review, scoping review, narrative synthesis, meta-analysis, guideline work, grants, teaching, or medical writing
- compare populations, interventions/exposures, comparators, outcomes, methods, and limitations
- audit missing, inconsistent, duplicated, or noncomparable information
- update an existing evidence matrix when new studies appear

## When not to use

Do not use this skill alone to:

- verify bibliographic identity; use `reference-verifier` first
- determine risk of bias using an unnamed generic score
- perform meta-analysis without a prespecified statistical workflow
- assign GRADE certainty without outcome-specific assessment
- infer unreported values, causal effects, or clinical recommendations
- combine primary studies, reviews, protocols, editorials, and animal studies as though they were equivalent evidence

## Required inputs

Obtain or define:

1. review question and purpose
2. eligibility criteria and unit of analysis
3. study designs in scope
4. target population, intervention/exposure, comparator, outcomes, time points, and setting
5. verified citations or full-text sources
6. extraction fields and intended downstream use
7. whether extraction is single, duplicate-independent, or checked by a second reviewer
8. treatment of multiple reports from one study
9. preferred file format and citation style

If only abstracts are available, label extraction as abstract-only and limit claims accordingly.

## Evidence provenance labels

Label every substantive value with one of these states when ambiguity matters:

- `REPORTED`: stated directly in the source
- `CALCULATED`: derived reproducibly from reported data
- `INFERRED`: reviewer interpretation, not explicitly reported
- `NOT_REPORTED`: relevant item absent from inspected material
- `NOT_APPLICABLE`: field does not apply
- `UNCLEAR`: information is present but cannot be interpreted reliably
- `ABSTRACT_ONLY`: value obtained without full-text confirmation

Never use a blank cell when the reason for missingness is known.

## Workflow

### 1. Define the matrix purpose

Choose the leanest matrix that supports the downstream task:

- **scoping review:** concepts, populations, contexts, study types, evidence gaps
- **systematic review:** eligibility, design, participants, interventions/exposures, comparators, outcomes, effect estimates, bias domains
- **meta-analysis:** arm-level numerical data, time points, effect measures, variance, analysis population, unit of analysis
- **narrative review/book chapter:** design, core findings, limitations, relevance, and claim mapping
- **guideline/grant:** directness, feasibility, equity, implementation, and certainty inputs

Do not collect fields merely because they are available.

### 2. Define the study and report identifiers

Create stable IDs:

- `study_id`: one underlying study
- `report_id`: one publication, abstract, registry entry, correction, or follow-up report
- canonical PMID, DOI, trial registration, or other identifier

Link multiple reports from the same study. Do not count reports as independent studies.

### 3. Pilot the extraction form

Test the proposed fields on at least 2–5 diverse eligible studies when available. Revise definitions before full extraction. Record changes to the form and whether earlier rows were updated.

### 4. Extract bibliographic and design data

At minimum consider:

- citation and identifiers
- country, setting, recruitment period
- study design and prospective/retrospective status
- registration and protocol
- funding and conflicts of interest
- sample size enrolled, randomized, analyzed, and lost to follow-up
- inclusion and exclusion criteria
- follow-up duration

Use design-specific terminology. Do not call every longitudinal study a cohort or every intervention study an RCT.

### 5. Extract population characteristics

Capture variables necessary for applicability and comparison:

- condition and diagnostic criteria
- age, sex/gender, disease severity, baseline risk
- comorbidities and key exclusions
- recruitment source and setting
- subgroup definitions

Avoid converting ranges, medians, and means without a declared method.

### 6. Extract intervention or exposure details

For interventions consider TIDieR-relevant elements: content, provider, mode, setting, dose/intensity, frequency, duration, tailoring, adherence, co-interventions, and fidelity.

For exposures consider definition, measurement method, timing, categories, reference group, and changes over time.

Do not merge materially different interventions or exposure definitions into one label.

### 7. Extract comparator details

Record active control, placebo/sham, usual care, no intervention, alternative exposure, or reference category. Describe comparator content sufficiently to interpret contrast.

### 8. Extract outcomes by time point

For each outcome record:

- exact outcome name and domain
- instrument or diagnostic definition
- primary/secondary status as prespecified by authors
- measurement time point
- direction in which higher values indicate benefit or harm
- analysis population
- adjusted and unadjusted status

Do not collapse different scales, constructs, or time points into one value.

### 9. Extract quantitative results

Preserve the reported effect measure:

- event counts and denominators
- means, standard deviations, medians, ranges, or interquartile ranges
- risk ratio, odds ratio, hazard ratio, mean difference, standardized mean difference, correlation, regression coefficient, or diagnostic-accuracy measure
- confidence/credible interval and p value when reported
- covariates used in adjusted estimates

Record units and reference categories. Do not convert effect measures unless the method, assumptions, and calculation are documented.

### 10. Extract qualitative and mixed-methods findings

Record sampling, data-collection method, analytic approach, participant voice versus author theme, context, and supporting evidence. Do not transform qualitative themes into prevalence estimates.

### 11. Record limitations and bias information

Separate:

- limitations stated by authors
- reviewer-observed methodological concerns
- formal risk-of-bias judgments made with a named design-appropriate tool

Do not replace domain-based assessment with a single homemade quality score.

### 12. Add relevance and directness fields

When useful, record relevance to the review question, population directness, intervention/exposure directness, outcome directness, setting applicability, and reasons for exclusion from a specific synthesis.

Label these as reviewer judgments.

### 13. Run consistency checks

Check:

- sample-size arithmetic and arm totals
- units, decimal places, and effect direction
- consistency across abstract, tables, figures, supplements, registry, and companion reports
- duplicate or overlapping cohorts
- outcome time points and denominators
- adjusted versus unadjusted estimates
- impossible or internally contradictory values

Do not resolve conflicts silently. Record the source location and decision.

### 14. Manage missing data

Use explicit labels such as `NOT_REPORTED` or `UNCLEAR`. Record author-contact attempts when applicable. Never treat missing as zero, no effect, or absence of a characteristic.

### 15. Produce the matrix and audit log

Return:

1. data dictionary
2. study/report linkage table
3. study-characteristics matrix
4. outcome/effect matrix when applicable
5. risk-of-bias input table or links to separate assessment
6. unresolved-query log
7. extraction provenance and reviewer log
8. concise narrative synthesis limited to what the matrix supports

## Recommended matrix architecture

Avoid one excessively wide sheet when evidence is complex. Prefer linked tables:

- `studies`: one row per underlying study
- `reports`: one row per publication or source
- `arms_or_exposures`: one row per study arm/exposure definition
- `outcomes`: one row per outcome and time point
- `effects`: one row per estimate
- `risk_of_bias`: one row per study/outcome-domain judgment
- `queries`: unresolved extraction issues

Use `study_id` and `report_id` as relational keys.

## Safeguards

- Never fabricate sample sizes, effect estimates, variance, p values, instruments, eligibility criteria, funding, or conclusions.
- Never infer `no difference` from a nonsignificant p value alone.
- Never infer statistical significance when confidence intervals or tests are unavailable.
- Preserve adjusted and unadjusted estimates separately.
- Preserve author-reported findings separately from reviewer judgments.
- Do not double-count multiple reports or overlapping cohorts.
- Do not treat abstract-only extraction as full-text verified.
- Do not mix animal, in vitro, observational, randomized, qualitative, and review evidence without explicit stratification.
- Keep personally identifiable participant data out of the matrix.

## Common failure modes

| Failure | Correction |
|---|---|
| One row per publication | Link reports to one underlying study |
| Blank cells | Use explicit missingness states |
| Copying conclusions instead of results | Extract design, outcome, estimate, and uncertainty |
| Mixing time points | Use one outcome-time-point structure |
| Mixing adjusted and crude estimates | Store separately with covariates |
| Converting medians or effect measures silently | Document method and assumptions |
| Treating p>0.05 as no effect | Report estimate and uncertainty |
| Combining different outcome constructs | Preserve instrument and domain |
| Homemade quality score | Use a named design-appropriate tool |
| Counting companion reports twice | Use study/report IDs |
| Claiming abstract-only values are verified | Label `ABSTRACT_ONLY` |
| Hiding extraction conflicts | Maintain a query and decision log |

## Reproducibility record

Record:

- matrix version and date
- review question and eligibility criteria
- data dictionary and field definitions
- source files and verified identifiers
- source location for extracted values when feasible
- extractor and checker
- extraction method and duplicate-review status
- calculation formulas and assumptions
- form changes and back-updates
- study/report linkage decisions
- unresolved queries and author contacts
- software and file format

## Completion criteria

The task is complete only when:

- the matrix purpose and unit of analysis are explicit
- every report is linked to a study ID
- field definitions and allowed values are documented
- extracted values retain source and provenance status
- outcomes, time points, units, analysis populations, and effect measures are identifiable
- missingness is explicit
- multiple reports and overlapping cohorts are addressed
- author statements and reviewer judgments are separated
- consistency checks and unresolved queries are documented
- another reviewer can reconstruct the extraction decisions
