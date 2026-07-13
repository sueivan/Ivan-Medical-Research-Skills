---
name: medical-reviewer
description: Use when critically peer reviewing, pre-submission auditing, revising, or quality-checking biomedical manuscripts, protocols, theses, grants, or evidence syntheses for methodological validity, reporting completeness, statistical integrity, clinical interpretation, ethics, transparency, and actionable reviewer comments.
---

# Medical Reviewer

## Overview

Perform a rigorous, fair, evidence-aware review of biomedical work. Identify the study type, reconstruct the research question and methods, test whether results support the conclusions, apply current design-specific reporting and appraisal standards, and produce prioritized, actionable comments. Do not confuse polished writing with valid science or stylistic preference with methodological necessity.

## When to use

Use this skill to:

- peer review a journal manuscript or revision
- perform a pre-submission methodological audit
- review a protocol, thesis, conference paper, grant, or research report
- assess systematic, scoping, narrative, or bibliometric reviews
- review randomized, observational, diagnostic, prognostic, prediction-model, qualitative, mixed-methods, animal, laboratory, or educational research
- evaluate statistical reporting, tables, figures, references, ethics, transparency, and interpretation
- draft confidential editor comments and author-facing reviewer comments
- assess whether revisions adequately address prior comments

## When not to use

Do not use this skill to:

- invent missing methods, data, registrations, ethics approvals, analyses, references, or reviewer expertise
- reject a paper because results are negative, unfashionable, or inconsistent with personal beliefs
- demand citations to the reviewer's own work without scientific necessity
- impose one preferred method when several valid approaches exist
- rewrite the paper instead of identifying consequential problems
- make accusations of misconduct without evidence and appropriate confidential handling
- disclose confidential manuscript content or use it outside the review purpose

## Required inputs

Obtain or declare unavailable:

1. manuscript/protocol and supplementary files
2. journal scope, article type, author instructions, and review form
3. abstract, tables, figures, appendices, registration/protocol, statistical analysis plan, and data/code statements
4. prior reviewer comments and response letter for revisions
5. study design and reporting guideline claimed by authors
6. review deadline, requested depth, and whether comments are for editor, authors, or internal use
7. conflicts of interest and reviewer-scope limitations

If key supplements are missing, review what is available and state the limitation. Do not infer absent content.

## Review states

Use:

- `TRIAGED`
- `FULL_REVIEW_IN_PROGRESS`
- `METHODS_AUDITED`
- `STATISTICS_AUDITED`
- `REPORTING_AUDITED`
- `COMMENTS_DRAFTED`
- `CONSISTENCY_CHECKED`
- `FINAL_REVIEW`

Do not claim a full review after reading only the abstract.

## Severity framework

Classify comments by consequence:

- `FATAL/NOT REPAIRABLE IN CURRENT DATA`: undermines the research question or validity and cannot be fixed by clarification or reanalysis
- `MAJOR`: could materially change validity, interpretation, reproducibility, or ethical acceptability
- `MINOR`: improves clarity, completeness, or presentation without changing the central inference
- `EDITORIAL/OPTIONAL`: preference or polish; keep limited
- `QUERY`: information needed before severity can be determined

Avoid inflating severity. A missing sentence is not automatically a major flaw if the method was valid and can be reported.

## Workflow

### 1. Check scope, expertise, and conflicts

Assess whether the work fits the journal/request, whether you can review its key methods, and whether conflicts or confidentiality constraints prevent review. Identify areas requiring statistical, clinical, laboratory, qualitative, or other specialist input.

### 2. Identify manuscript type and design

Classify the actual design, not merely the authors' label:

- randomized or nonrandomized intervention
- cohort, case-control, cross-sectional, ecological, case series/report
- diagnostic-accuracy
- prognostic-factor or prediction-model development/validation
- systematic review, scoping review, meta-analysis, narrative review, bibliometric analysis
- qualitative or mixed-methods
- animal/in vitro/laboratory
- medical education, survey, implementation, economic, guideline, protocol, or other

If design is ambiguous, explain why and review against the most defensible interpretation.

### 3. Select current standards

Use the appropriate current reporting guideline and, when needed, appraisal tool. Examples include:

- CONSORT and extensions for randomized trials
- SPIRIT for trial protocols
- STROBE for observational studies
- STARD for diagnostic accuracy
- TRIPOD and current extensions for prediction models
- PRISMA and extensions for systematic reviews
- PRISMA-ScR for scoping reviews
- CARE for case reports
- COREQ or SRQR for qualitative studies
- ARRIVE for animal research
- CHEERS for economic evaluations
- SQUIRE for quality improvement
- TIDieR for intervention description
- CHERRIES where appropriate for web surveys

Verify current versions and relevant extensions. Reporting guidelines assess completeness, not automatically risk of bias.

### 4. Reconstruct the research question

Extract:

- problem and rationale
- population/unit
- intervention/exposure/test/model
- comparator/reference
- primary outcome and time point
- design and intended estimand/association
- main claim

Check alignment across title, abstract, introduction, methods, results, tables, and conclusion.

### 5. Assess novelty and significance without hype

Determine whether the manuscript states a genuine evidence gap and adds useful data, methods, synthesis, replication, or context. Novelty is not limited to first-ever findings, but incremental work must be framed honestly.

Do not require dramatic claims for publication value.

### 6. Audit study design and population

Check:

- eligibility and recruitment
- setting and study dates
- sampling strategy and representativeness
- comparison-group construction
- temporality
- exposure/intervention allocation
- follow-up and attrition
- clustering, repeated measures, matched design, or multiple centers
- selection and immortal-time risks where relevant
- external validity and equity-relevant exclusions

Distinguish design limitations from incomplete reporting.

### 7. Audit interventions, exposures, tests, and comparators

Assess operational definitions, measurement validity, timing, dose/intensity, adherence, fidelity, co-interventions, contamination, reference standards, and comparator content.

For complex interventions, use TIDieR-relevant detail. For diagnostic studies, examine patient flow, index-test thresholds, reference standard, blinding, and timing.

### 8. Audit outcomes and estimands

Check:

- prespecified primary/secondary outcomes
- validated instruments and units
- outcome assessors and blinding
- time-point selection
- changes from registration/protocol
- composite outcomes and competing events
- multiplicity
- clinically meaningful difference versus statistical significance
- analysis population, such as intention-to-treat, per-protocol, or complete case

Do not accept outcome switching hidden by retrospective language.

### 9. Audit sample size and power

Check whether calculation inputs match the primary analysis: effect size, variance/event rate, alpha, power, allocation, attrition, clustering/design effect, and multiplicity where relevant.

For exploratory or descriptive studies, assess precision and feasibility rather than demanding ritual power calculations. A post hoc power calculation based on observed effect is generally uninformative; focus on confidence intervals and design assumptions.

### 10. Audit statistical methods

Check:

- descriptive statistics match distributions and scale
- model matches outcome type, design, repeated measures, clustering, censoring, and matching
- assumptions and diagnostics
- covariate-selection rationale and overadjustment
- confounding, mediation, interaction, and collider issues
- missing-data mechanism and handling
- multiple comparisons
- effect estimates with uncertainty
- transformations, categorization, and cut-point selection
- model calibration, discrimination, internal/external validation where relevant
- sensitivity and robustness analyses
- software, packages, versions, and code availability

Do not focus only on p values. Request statistical review when the central inference exceeds available expertise.

### 11. Reconcile numerical results

Cross-check:

- abstract against main text
- participant-flow counts
- table totals, percentages, denominators, and missing data
- effect estimates, confidence intervals, p values, and direction
- figure values and legends
- subgroup and adjusted analyses
- sample size across methods/results/supplements
- rounding and impossible values

Calculate simple consistency checks only when inputs are available, label them as reviewer calculations, and do not invent missing numbers.

### 12. Assess bias and internal validity

Use design-appropriate domains rather than a generic checklist. Consider selection, deviations from intended intervention, exposure misclassification, outcome measurement, missing data, confounding, selective reporting, and analysis choices.

For reviews, assess protocol, search completeness, screening/extraction, study-level bias, synthesis, publication bias, and certainty.

Separate the risk that results are biased from reporting completeness.

### 13. Assess results presentation

Results should follow prespecified objectives and distinguish primary, secondary, subgroup, sensitivity, and exploratory analyses. Tables and figures should be interpretable without duplicating all text.

Flag spin:

- emphasizing within-group significance instead of between-group contrast
- claiming equivalence from nonsignificance
- highlighting favorable secondary outcomes while minimizing the primary outcome
- causal language from noncausal designs
- surrogate outcomes presented as patient benefit
- relative effects without absolute risks when needed

### 14. Assess discussion and conclusions

Check whether the discussion:

- begins with an accurate main finding
- compares relevant evidence fairly
- explains plausible mechanisms without presenting speculation as fact
- addresses limitations and bias consequences
- discusses generalizability, harms, equity, and clinical relevance
- avoids recommendation strength beyond evidence

Conclusions must match design, effect magnitude, uncertainty, and evidence certainty.

### 15. Audit references and claims

Use `reference-verifier` for questionable citations. Check whether references support the exact claim, are current where needed, include contrary evidence, and are not fabricated, retracted, duplicated, or irrelevant.

Do not demand extra citations merely to lengthen the bibliography.

### 16. Audit ethics and research integrity

Check as applicable:

- ethics approval/exemption and consent
- trial/review registration and timing
- data privacy and vulnerable populations
- animal welfare
- funding and conflicts
- author contributions
- data/code/material availability
- plagiarism, duplicate publication, image manipulation, implausible data, or undisclosed overlap signals

If misconduct is suspected, describe objective evidence confidentially to the editor; do not accuse authors publicly or infer intent.

### 17. Audit AI and automation disclosure

Assess whether AI or automated tools affected search, screening, extraction, analysis, figures, writing, translation, or code. Require disclosure appropriate to journal policy and human accountability. Do not assume AI use solely from writing style.

### 18. Review title, abstract, tables, and figures

Check:

- design is named accurately
- abstract contains consistent numerical results and limitations
- tables have denominators, units, footnotes, and missingness
- figures have readable axes, legends, uncertainty, and no visual distortion
- flow diagrams reconcile
- image resolution/manipulation concerns are reported appropriately

Language issues should be listed only when they impede scientific understanding or change meaning.

### 19. Prioritize comments

Each major comment should contain:

1. location
2. observed problem
3. why it matters
4. evidence from the manuscript
5. requested action
6. acceptable alternatives when more than one solution exists

Do not combine unrelated concerns into one vague paragraph.

### 20. Draft the review

Recommended structure:

1. brief neutral summary of the question/design
2. overall assessment of validity and reporting
3. major comments in priority order
4. minor comments by section
5. confidential comments to editor when needed
6. recommendation only if requested by the journal

Keep tone direct, professional, and specific. Do not praise excessively or use hostility as a substitute for rigor.

### 21. Check internal consistency of the review

Before finalizing:

- remove duplicate or contradictory comments
- verify cited line/table references
- distinguish required corrections from optional suggestions
- ensure requests are feasible with the existing data
- avoid asking authors to perform a different study
- confirm that severity matches consequence
- disclose reviewer uncertainty or need for specialist review

### 22. Review revisions and response letters

For each prior comment classify:

- fully addressed
- partially addressed
- not addressed
- rebutted with adequate justification
- new issue introduced

Verify changes in the manuscript, not only the response letter. Do not insist on the original request when the authors provide a valid alternative.

### 23. Produce deliverables

Return:

1. design/reporting-guideline identification
2. overall validity summary
3. prioritized major/minor comments
4. numerical-consistency table
5. reporting-guideline gap table
6. ethics/transparency queries
7. confidential editor comments, if requested
8. revision-response audit, if applicable
9. recommendation with calibrated rationale, only if requested

## Design-specific routing

### Randomized trials

Prioritize sequence generation, allocation concealment, blinding, deviations, attrition, outcome switching, estimand/analysis population, trial registration, harms, and CONSORT.

### Observational studies

Prioritize selection, temporality, exposure/outcome measurement, confounding, missing data, model specification, causal language, sensitivity analyses, and STROBE.

### Diagnostic accuracy

Prioritize participant spectrum, index test, prespecified threshold, reference standard, blinding, flow/timing, 2×2 data, sensitivity/specificity uncertainty, and STARD.

### Prediction models

Prioritize outcome/predictor definitions, sample size/events, missing data, overfitting, internal/external validation, calibration, discrimination, optimism correction, clinical utility, and TRIPOD/current appraisal tools.

### Systematic reviews/meta-analyses

Prioritize protocol, comprehensive search, duplicate processes, study linkage, RoB, synthesis compatibility, heterogeneity, reporting bias, certainty, and PRISMA.

### Scoping reviews

Prioritize PCC, evidence-type boundaries, search breadth, charting, mapping, appraisal rationale, gap claims, consultation, and PRISMA-ScR.

### Bibliometric studies

Prioritize database/index scope, reproducible search, deduplication/normalization, software/parameters, sensitivity, indicator interpretation, source-record verification, and corpus-bounded claims.

### Qualitative studies

Prioritize sampling, reflexivity, researcher–participant relationship, data sufficiency, analytic process, audit trail, evidence supporting themes, ethics, transferability, and COREQ/SRQR.

### Surveys/medical education

Prioritize sampling frame, response/nonresponse, instrument development/validation, common-method bias, clustering, prespecified outcomes, missing data, educational theory, comparison validity, and appropriate reporting guidance.

## Safeguards

- Never fabricate manuscript content, analyses, references, guidelines, or reviewer actions.
- Never claim a flaw is fatal without explaining its consequence and repairability.
- Do not infer misconduct from disagreement, negative results, or writing style.
- Preserve confidentiality and minimize reproduction of unpublished text.
- Distinguish observed facts, reviewer calculations, methodological inference, and preference.
- Do not ask for unnecessary analyses that increase false-positive risk.
- Do not use journal impact, author institution, country, or citation count as a proxy for quality.
- Verify current guideline and tool versions when recommendations depend on them.

## Common failure modes

| Failure | Correction |
|---|---|
| Reviewing language before validity | Triage design, data, and inference first |
| Authors' design label accepted uncritically | Classify actual methods |
| Reporting checklist treated as RoB tool | Assess reporting and bias separately |
| Every omission labeled major | Calibrate to impact and repairability |
| Vague “statistics are inappropriate” | Identify model/design mismatch and requested action |
| P-value-only review | Examine estimates, intervals, assumptions, and clinical meaning |
| Nonsignificance called equivalence | Require appropriate equivalence/noninferiority design |
| Causal claims from association | Align language and methods with design |
| Reviewer demands preferred method | Allow valid alternatives |
| Authors asked to collect impossible new data | State limitation or feasible reanalysis |
| Misconduct accusation without evidence | Report objective concern confidentially |
| Response letter accepted without checking manuscript | Verify actual revisions |
| Excessive minor edits obscure major issues | Prioritize consequential comments |

## Reproducibility record

Record:

- documents and versions reviewed
- journal/article type and instructions
- identified study design
- reporting guidelines/tools and versions
- review date and reviewer-scope limitations
- numerical checks and calculations
- major/minor severity rationale
- references verified
- conflicts, confidentiality, and specialist-review needs
- revision-response mapping
- final recommendation basis, if applicable

## Completion criteria

The review is complete only when:

- manuscript type and actual design are identified
- current appropriate standards are selected
- question, methods, results, and conclusions are reconciled
- numerical and flow inconsistencies are checked
- internal validity, statistics, ethics, and transparency are assessed
- conclusions are calibrated to design and uncertainty
- comments are prioritized, evidenced, actionable, and nonduplicative
- required changes are distinguished from preferences
- confidential concerns are separated from author comments
- reviewer limitations and unresolved specialist needs are explicit
