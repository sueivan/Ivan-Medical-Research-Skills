---
name: ad-biomarker
description: Use when planning, searching, extracting, validating, comparing, auditing, or communicating Alzheimer disease biomarkers across fluid, imaging, digital, genetic, electrophysiological, and other modalities, with explicit intended use, disease stage, assay performance, clinical validation, utility, regulatory status, and implementation readiness.
---

# Alzheimer Disease Biomarker

## Overview

Evaluate Alzheimer disease (AD) biomarkers as measurement tools for a defined population, disease stage, and clinical or research use. Separate biological association, assay validity, diagnostic/prognostic performance, clinical utility, regulatory or guideline status, and real-world implementation.

A biomarker is not automatically a diagnostic test, treatment target, surrogate endpoint, or clinically available service.

## Operational dependencies

| Task | IMRS skill |
|---|---|
| AD disease-stage and evidence routing | `ad-research` |
| MeSH and terminology mapping | `mesh-expert` |
| PubMed search | `pubmed-search-builder` |
| WoS bibliometric corpus | `wos-search-builder` |
| Citation/status verification | `reference-verifier` |
| Study and outcome extraction | `evidence-matrix` |
| Systematic review | `systematic-review` |
| Scoping review | `scoping-review` |
| Methodological audit | `medical-reviewer` |
| Public communication | `medical-popular-science` |

## When to use

Use this skill to:

- refine an AD biomarker research question
- classify biomarkers by biology, modality, intended use, and maturity
- build searches and evidence matrices
- review diagnostic, prognostic, monitoring, eligibility, or treatment-response biomarkers
- compare blood, CSF, imaging, digital, genetic, electrophysiological, retinal, salivary, or other modalities
- assess assay platforms, thresholds, reference standards, validation, utility, and implementation
- audit biomarker claims in papers, grants, protocols, patents, teaching, or popular science

## When not to use

Do not use this skill to:

- diagnose an individual or interpret personal test results
- call a biological correlate a validated biomarker without measurement evidence
- infer clinical utility from statistical significance or AUC alone
- infer disease modification from biomarker change alone
- treat genetic risk as diagnosis or destiny
- treat amyloid, tau, neurodegeneration, inflammation, vascular, synaptic, or another biomarker class as interchangeable
- fabricate thresholds, accuracy estimates, approvals, guideline recommendations, availability, units, or assay characteristics

## Required inputs

Obtain or mark unresolved:

1. target condition and disease stage
2. intended use and clinical context
3. target population and setting
4. biomarker modality and analyte/feature
5. specimen, acquisition, and platform
6. reference standard and comparison test
7. study design and evidence level
8. outcome, time horizon, and decision consequence
9. threshold status: prespecified, derived, validated, or unknown
10. current guideline, regulatory, reimbursement, or availability question
11. intended research product

Without an intended use, a biomarker-performance question is incomplete.

## Biomarker classification

### Intended use

Assign one primary use:

- susceptibility/risk enrichment
- screening or case finding
- diagnostic confirmation
- differential diagnosis
- biological classification
- disease staging
- prognosis/progression
- treatment eligibility
- target engagement
- pharmacodynamic response
- treatment-response prediction
- safety monitoring
- surrogate endpoint candidate
- trial enrichment or stratification

Do not combine uses automatically; performance and evidence requirements differ.

### Biological domain

Use the current authoritative framework appropriate to the task and record its version. Possible domains include:

- amyloid pathology
- tau pathology
- neurodegeneration/injury
- inflammation and glial activation
- synaptic dysfunction
- vascular/endothelial or blood–brain barrier dysfunction
- metabolic/mitochondrial dysfunction
- proteostasis and lysosomal/autophagic pathways
- oxidative stress or ferroptosis-related processes
- infection/immune response
- genetics and epigenetics
- other emerging domains

Do not force an emerging biomarker into a framework category when the mapping is uncertain.

### Modality

- CSF
- blood/plasma/serum
- PET
- structural/functional/diffusion MRI
- CT or other imaging
- EEG/MEG or electrophysiology
- digital/speech/gait/sleep/wearable/smartphone
- retinal/ocular
- saliva/urine/other biofluid
- genetics/polygenic risk
- tissue/pathology
- multimodal/composite

### Maturity

- discovery
- technical feasibility
- analytical validation
- clinical association
- internal clinical validation
- external validation
- comparison with standard care
- clinical utility/impact
- guideline or regulatory adoption
- reimbursement/access pathway
- real-world implementation and monitoring

## Workflow

### 1. Define the decision problem

Specify who is tested, where, why, at what disease stage, against which alternative, and what action follows the result.

Examples:

- triage symptomatic patients before confirmatory PET/CSF
- identify biological AD among MCI patients
- predict progression within a defined period
- determine eligibility for a treatment
- monitor target engagement in a trial

Avoid generic questions such as “Is biomarker X useful?”

### 2. Define disease and reference standards

Record clinical criteria, biomarker framework, neuropathology, PET/CSF criteria, expert adjudication, longitudinal outcome, or other reference standard.

Assess whether the reference standard matches intended use. A biomarker compared with amyloid PET predicts amyloid status, not automatically clinical AD or future dementia.

Check incorporation bias, differential verification, imperfect reference standards, and circular definitions.

### 3. Define population and spectrum

Record:

- cognitively unimpaired, subjective decline, MCI, or dementia stage
- clinic, community, screening, trial, or autopsy setting
- age, sex/gender, education, ancestry, socioeconomic context
- comorbid neurological, psychiatric, renal, hepatic, inflammatory, vascular, and systemic conditions
- APOE/genetic context when relevant
- prevalence/base rate
- exclusions and referral pathway

Performance in case-control samples with extreme phenotypes may not transport to consecutive clinical populations.

### 4. Build terminology and searches

Use `ad-research` and `mesh-expert` to separate disease, biomarker domain, modality, analyte/feature, intended use, and validation concepts. Use free text for emerging assays and digital markers.

Route database syntax to `pubmed-search-builder` or `wos-search-builder`. Do not require a “biomarker” term when relevant studies use assay-specific terminology and would be missed.

### 5. Verify and link evidence

Use `reference-verifier` for identifiers, publication status, corrections, and trial/report linkage. Link discovery, assay, validation, clinical-utility, regulatory, and implementation reports belonging to the same biomarker program.

### 6. Extract preanalytical information

For fluid biomarkers record:

- specimen type and collection tube
- fasting/time of day/posture when relevant
- processing delay and centrifugation
- aliquoting, storage temperature, freeze–thaw cycles
- hemolysis, blood contamination, and batch handling
- transport and site procedures

For imaging/digital/physiological biomarkers record acquisition hardware, protocol, calibration, preprocessing, quality control, and missing/invalid measurement handling.

Preanalytics can alter performance and transportability.

### 7. Assess analytical validity

Assess:

- assay/platform and version
- units and calibration
- limit of detection/quantification
- precision and repeatability
- reproducibility across runs, operators, sites, lots, and platforms
- linearity and reportable range
- interference and cross-reactivity
- reference materials and harmonization
- batch effects and drift
- failure/invalid rate
- quality-control thresholds

Do not compare concentrations across platforms as interchangeable without evidence.

### 8. Assess feature generation for digital/imaging/omics biomarkers

Record raw signal, preprocessing, segmentation, feature engineering, normalization, feature selection, missing data, software/model version, training/test separation, and reproducibility.

Check data leakage, site/scanner/device effects, overfitting, and whether the feature is available at the intended decision point.

### 9. Evaluate study design

Classify:

- cross-sectional diagnostic accuracy
- longitudinal prognostic study
- nested case-control or case-control
- cohort
- trial-based pharmacodynamic or predictive analysis
- model-development/internal-validation
- external-validation
- clinical-impact/utility study

Use design-appropriate reporting and bias standards. Diagnostic accuracy and prediction models require different appraisal.

### 10. Evaluate thresholds

Record whether the cutoff was:

- analytically defined
- prespecified from prior evidence
- selected in the same dataset
- selected by Youden index or other optimization
- adjusted for covariates
- externally validated
- platform specific
- single, dual-cutoff, or indeterminate-zone strategy

A data-derived optimal threshold is not a universal clinical cutoff. Preserve units, assay, population, and reference standard.

### 11. Evaluate discrimination and calibration

For classification report appropriate measures such as sensitivity, specificity, predictive values, likelihood ratios, ROC/AUC, and uncertainty.

For prognosis/prediction assess calibration-in-the-large, calibration slope/plots, discrimination, overall performance, and time-to-event methods as appropriate.

AUC alone is insufficient. Predictive values depend on prevalence. High discrimination with poor calibration can mislead decisions.

### 12. Evaluate incremental value

Compare against a clinically relevant baseline model or existing pathway, not against no information. Assess whether the biomarker improves decisions beyond age, symptoms, cognitive testing, genetics, imaging, or standard laboratory/clinical variables as appropriate.

Use reclassification or decision-curve methods cautiously and with full assumptions. Statistical incremental value is not automatically clinical utility.

### 13. Evaluate external validity and heterogeneity

Assess validation across:

- independent cohorts
- clinical versus research settings
- stages and diagnostic spectra
- ancestry and geography
- age and sex/gender
- comorbidities and organ function
- assay lots/platforms/sites
- sample handling
- scanners/devices/software versions
- prevalence and referral pathways

Report subgroup performance with adequate interaction or heterogeneity evidence rather than separate significance claims.

### 14. Evaluate clinical utility

Ask whether using the biomarker improves a patient-relevant process or outcome:

- reduces unnecessary invasive or expensive testing
- shortens time to accurate diagnosis
- changes treatment or trial eligibility appropriately
- improves counseling or care planning
- prevents harm
- improves patient/caregiver outcomes
- produces acceptable false-positive/false-negative consequences

Utility requires a defined pathway and comparator. Accuracy is not utility.

### 15. Evaluate treatment-related biomarkers

For eligibility or monitoring, verify:

- exact target population and disease stage
- biomarker criterion and assay/platform
- threshold or qualitative rule
- regulatory label and guideline status
- monitoring frequency
- safety biomarkers and imaging
- contraindications and implementation requirements
- evidence that biomarker-guided decisions improve benefit–harm balance

Current facts must be verified live from authoritative sources.

### 16. Evaluate surrogate endpoint claims

Distinguish target engagement, pharmacodynamic change, association with outcome, individual-level correlation, trial-level surrogacy, and validated surrogate status.

Biomarker change does not prove clinical benefit or disease modification. Require evidence that treatment effects on the biomarker reliably predict treatment effects on patient outcomes.

### 17. Evaluate multimodal and AI models

Record model purpose, input availability, development cohort, event/sample size, preprocessing, missing data, leakage prevention, validation, calibration, comparator, interpretability, fairness, and model/assay version locking.

Assess whether performance gain justifies complexity, cost, and implementation burden. Do not call an internal split-sample result external validation.

### 18. Evaluate clinical, ethical, and equity consequences

Assess:

- false reassurance and anxiety
- disclosure of risk in asymptomatic individuals
- genetic implications for relatives
- stigma, insurance/employment concerns by jurisdiction
- access, cost, infrastructure, and digital exclusion
- consent and data governance
- incidental findings
- clinician training and counseling capacity

Do not frame implementation as purely technical.

### 19. Verify guideline, regulatory, and availability status

Use current primary sources. Distinguish:

- research-use-only assay
- laboratory-developed or locally offered test
- regulatory authorization/approval/clearance and exact indication
- guideline recommendation
- reimbursement/coverage
- routine availability in the relevant country/setting

One does not imply the others. Record jurisdiction and verification date.

### 20. Synthesize by intended use and maturity

Do not pool all biomarker studies together. Group by:

- intended use
- disease stage
- modality/analyte/platform
- reference standard
- setting and spectrum
- threshold strategy
- outcome/time horizon
- validation maturity

When meta-analysis is appropriate, apply diagnostic/prognostic methods suited to the data. Do not naively average AUCs or pool sensitivity/specificity across incompatible thresholds and designs.

### 21. Communicate conclusions

State:

- what the biomarker measures
- intended use and population
- specimen/platform
- comparator/reference standard
- performance with uncertainty
- validation stage
- utility evidence
- current clinical/regulatory status
- implementation and equity limits
- what remains research-only

For public communication use `medical-popular-science` and explicitly prevent self-testing or deterministic interpretation.

## Biomarker evidence table

| Biomarker | Domain/modality | Intended use | Population/stage | Platform/specimen | Reference standard | Performance/uncertainty | Threshold status | Validation maturity | Utility/status | Key limitation |
|---|---|---|---|---|---|---|---|---|---|---|

## Safeguards

- Never fabricate biomarker values, units, thresholds, performance, approvals, guidelines, reimbursement, or availability.
- Never equate association with validation.
- Never equate AUC with clinical utility.
- Never equate biomarker positivity with clinical dementia.
- Never equate biomarker change with disease modification or clinical benefit.
- Never compare platforms as interchangeable without harmonization evidence.
- Never call same-dataset cutoff optimization external validation.
- Never ignore prevalence when interpreting predictive values.
- Never use genetic or biomarker risk as individual destiny.
- Never recommend personal testing or treatment from research evidence.
- Verify unstable guideline, regulatory, and implementation facts live.

## Common failure modes

| Failure | Correction |
|---|---|
| “Biomarker X is useful” without use case | Define population, stage, decision, and comparator |
| Correlation with PET called diagnosis | Evaluate intended reference and clinical pathway |
| AUC alone presented as validation | Add calibration, threshold, prevalence, and external validation |
| Same cohort develops and validates cutoff | Label internal/optimistic performance |
| Predictive values generalized across settings | Recalculate/interpret for relevant prevalence |
| Platforms pooled without harmonization | Stratify by assay and units |
| Biomarker drop called disease modification | Require patient-outcome and surrogate evidence |
| Research-use assay called available test | Verify regulatory, guideline, and access status |
| Case-control extremes generalized to clinics | Assess spectrum and consecutive populations |
| Digital model ignores leakage/site effects | Audit preprocessing and external validation |
| Genetic risk called certainty | Communicate probability and context |
| Cost/access omitted | Include implementation and equity assessment |

## Reproducibility record

Record:

- question, intended use, disease stage, population, setting, and prevalence
- biomarker domain, analyte/feature, modality, specimen, platform, and version
- preanalytical and analytical procedures
- reference standard and blinding
- threshold derivation and units
- performance estimates and uncertainty
- development/internal/external validation
- calibration and incremental-value methods
- clinical-utility evidence
- subgroup and transportability assessment
- regulatory/guideline/access sources, jurisdiction, and dates
- implementation, ethical, equity, and cost considerations
- IMRS route, searches, and verified references

## Completion criteria

The task is complete only when:

- intended use, population, disease stage, setting, and decision consequence are explicit
- biomarker domain, modality, specimen, platform, and version are identified
- reference standard and study design are appropriate and transparent
- preanalytical and analytical validity are assessed
- threshold derivation and validation are documented
- performance includes uncertainty and prevalence-aware interpretation
- calibration, external validation, and incremental value are considered when applicable
- clinical utility is separated from accuracy
- surrogate and disease-modification claims are bounded
- guideline, regulatory, reimbursement, and availability states are distinguished and verified
- implementation, ethics, equity, and harms are addressed
- conclusions state what remains research-only
