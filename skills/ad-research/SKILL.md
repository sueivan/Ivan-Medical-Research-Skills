---
name: ad-research
description: Use when planning, searching, synthesizing, auditing, or communicating Alzheimer disease and related dementia research, including mechanisms, biomarkers, risk and prevention, diagnosis, prognosis, interventions, care, implementation, bibliometrics, translational maturity, and stage-specific evidence routing.
---

# Alzheimer Disease Research

## Overview

Structure Alzheimer disease (AD) and related dementia research around a precise question, disease stage, population, evidence type, and intended use. Route tasks through operational IMRS skills, verify current terminology and clinical/regulatory facts, and prevent mechanistic, biomarker, preclinical, and bibliometric findings from being overstated as patient benefit.

AD is heterogeneous and multifactorial. Do not present amyloid, tau, inflammation, vascular dysfunction, metabolism, infection, proteostasis, or another pathway as a complete explanation unless the evidence and wording justify that scope.

## Operational dependencies

| Task | IMRS skill |
|---|---|
| MeSH and concept mapping | `mesh-expert` |
| PubMed searching | `pubmed-search-builder` |
| WoS bibliometric corpus | `wos-search-builder` |
| Citation and publication-status verification | `reference-verifier` |
| Study/outcome extraction | `evidence-matrix` |
| Systematic review | `systematic-review` |
| Scoping review | `scoping-review` |
| Methodological audit | `medical-reviewer` |
| Public communication | `medical-popular-science` |
| Multi-skill routing | `imrs-master` |

Use `ad-biomarker` when the dedicated module becomes operational; until then, apply the biomarker workflow in this skill transparently.

## When to use

Use this skill to:

- refine an AD or dementia research question
- plan literature searches, reviews, bibliometric studies, protocols, grants, or manuscripts
- compare mechanisms, biomarkers, risk factors, treatments, nonpharmacological interventions, care models, or policies
- assess translational maturity from model systems to clinical implementation
- separate disease-modifying, symptomatic, preventive, diagnostic, prognostic, and care outcomes
- audit causal, clinical, or novelty claims
- prepare evidence-based AD popular science

## When not to use

Do not use this skill to:

- diagnose an individual or recommend personal treatment
- treat normal aging, subjective cognitive decline, mild cognitive impairment, AD, and all-cause dementia as interchangeable
- assume all dementia is AD
- infer disease modification from short-term cognitive change alone
- infer clinical effectiveness from biomarkers, mechanisms, animal models, network pharmacology, molecular docking, or bibliometric prominence
- fabricate PMID, DOI, prevalence, trial results, approvals, guidelines, or biomarker thresholds
- present a single pathway or publication as overturning the entire field

## Required inputs

Obtain or state unresolved:

1. target condition: AD, AD-related dementia, all-cause dementia, MCI, subjective decline, preclinical AD, or another construct
2. population, age, setting, diagnostic framework, and disease stage
3. research domain and primary question
4. outcome and intended use
5. human, animal, in vitro, computational, or mixed evidence
6. review/study type
7. databases, dates, languages, and geographic scope
8. biomarkers, interventions, exposures, comparators, or care models
9. requirement for current guideline, regulatory, trial, or clinical-availability information
10. intended output: protocol, search, review, bibliometric paper, grant, manuscript, teaching, or public communication

If the user says only “Alzheimer research,” ask which domain and product would materially change the route.

## Core classification

### Disease continuum

Classify the target explicitly using the source's own definitions and current authoritative frameworks where required:

- cognitively unimpaired/at risk
- subjective cognitive decline
- mild cognitive impairment
- mild, moderate, or severe dementia
- biologically defined AD versus clinical syndrome
- mixed or non-AD dementia
- familial/autosomal-dominant versus sporadic disease

Do not retroactively impose one framework on studies using another without documenting mapping assumptions.

### Research domains

Assign one primary and optional secondary domain:

- epidemiology and risk
- prevention
- genetics and omics
- molecular/cellular mechanisms
- neuropathology
- biomarkers and diagnosis
- prognosis and progression
- pharmacological treatment
- nonpharmacological intervention
- neuromodulation
- traditional/complementary medicine
- behavioral and psychological symptoms
- caregiving and service delivery
- implementation, equity, ethics, policy, and economics
- medical education or public communication
- bibliometrics/science mapping

### Evidence level

- cell/in vitro
- animal model
- computational/in silico
- human cross-sectional
- case-control
- longitudinal cohort
- diagnostic/prognostic accuracy
- early-phase clinical trial
- confirmatory randomized trial
- systematic review/meta-analysis
- guideline/consensus/regulatory assessment
- implementation/real-world evidence

Evidence level is not automatically evidence quality.

## Workflow

### 1. Define the exact AD question

Use a design-appropriate framework. Record:

- condition and stage
- population and setting
- exposure/intervention/index test
- comparator/reference standard
- outcome and time point
- study design
- intended decision

Avoid combining prevention, early detection, disease modification, symptom control, and long-term care in one primary question.

### 2. Separate phenotype, pathology, and biomarker definitions

Distinguish:

- clinical symptoms and functional impairment
- etiological diagnosis
- neuropathology
- biomarker positivity
- genetic risk
- comorbid vascular, Lewy body, TDP-43, or other pathologies

Record how each study defines AD. Do not assume a clinically diagnosed cohort is biomarker confirmed, or that biomarker positivity equals dementia.

### 3. Define the disease stage and time axis

Map whether the research concerns risk years before symptoms, biological change, early cognitive decline, MCI, dementia progression, end-stage disease, or caregiving trajectory.

Interpret exposures, tests, and interventions within this time axis. Reverse causation is especially important in late-life observational risk-factor studies.

### 4. Build a concept map

Use `mesh-expert` for controlled vocabulary and synonyms. Include relevant historical terminology, diagnostic labels, abbreviations, intervention names, genes/proteins, biomarker modalities, care terms, and outcome instruments.

Keep overlapping but non-equivalent concepts separate, such as:

- AD versus dementia
- cognitive impairment versus diagnosed disease
- amyloid pathology versus clinical progression
- microglial activation versus neuroinflammation broadly
- blood biomarker concentration versus validated clinical test
- caregiver burden versus patient quality of life

### 5. Choose the evidence workflow

Route according to product:

- focused PubMed search: `mesh-expert` → `pubmed-search-builder`
- bibliometric study: `wos-search-builder` → `medical-bibliometric-research`
- systematic review: search skills → `reference-verifier` → `evidence-matrix` → `systematic-review`
- scoping review: search skills → `reference-verifier` → charting → `scoping-review`
- manuscript audit: `medical-reviewer`
- public explanation: evidence workflow → `medical-popular-science`

Do not use bibliometrics to answer treatment effectiveness or causality.

### 6. Search comprehensively and stage sensitively

Search terms should reflect disease stage, diagnostic framework, intervention/exposure, and outcomes. For evolving biomarkers or therapies, include current free text to address indexing lag.

When a study question crosses dementia etiologies, decide whether AD-specific and all-dementia records will be analyzed separately.

### 7. Verify every key source and status

Use `reference-verifier` for PMID, DOI, metadata, duplicates, corrections, retractions, preprints, and multiple reports. For trials link protocols, registrations, primary reports, follow-ups, secondary analyses, safety reports, and regulatory documents.

Verify current approvals, labels, guidelines, contraindications, and availability from authoritative sources at the time of writing. Do not rely on memory for unstable facts.

### 8. Build an AD-specific evidence matrix

In addition to general study fields, consider:

- AD definition and diagnostic criteria
- biomarker confirmation
- disease stage and baseline severity
- APOE/genetic context when relevant
- mixed pathology/comorbidity
- intervention target and intended mechanism
- dose, duration, adherence, and co-interventions
- cognitive, functional, global, behavioral, biomarker, imaging, quality-of-life, caregiver, institutionalization, mortality, and harm outcomes
- time point and minimal clinically important difference when established
- subgroup and equity variables

Do not combine cognitive scales without documenting construct, direction, and transformation.

### 9. Evaluate mechanistic evidence

For mechanism claims, map:

```text
Trigger/exposure → molecular target → cell type → pathway → tissue/network effect → phenotype → human validation
```

Assess whether evidence is perturbational or correlational, replicated, temporally coherent, dose responsive, cell-type specific, and demonstrated in human tissue or participants.

Separate mechanistic plausibility from therapeutic efficacy.

### 10. Evaluate animal and model-system evidence

Record species, sex, age, model, genetic construct, pathology represented, intervention timing, randomization, blinding, sample size, behavioral tasks, pathology outcomes, and replication.

Ask what the model does not represent. Transgenic amyloid models, tau models, induced inflammation, aging models, organoids, and cell cultures answer different questions.

Do not call improved maze performance “reversal of human AD.”

### 11. Evaluate biomarkers

Classify intended use:

- risk enrichment
- screening
- diagnosis/differential diagnosis
- staging
- prognosis
- treatment eligibility
- target engagement
- response monitoring
- safety monitoring

Classify maturity:

- discovery
- assay/analytical validation
- clinical association
- diagnostic/prognostic validation
- external validation
- clinical utility
- guideline/regulatory adoption
- real-world implementation

Assess reference standard, assay platform, preanalytics, threshold, calibration, discrimination, validation population, spectrum, prevalence, incremental value, and clinical consequences. Do not equate statistical association with clinical utility.

### 12. Evaluate prevention and risk factors

Distinguish risk marker, potentially modifiable exposure, causal factor, and intervention target. Assess life-course timing, confounding, reverse causation, competing risk, measurement, and whether randomized intervention evidence supports modification.

Do not promise prevention from observational associations. Frame multifactorial risk without blaming patients.

### 13. Evaluate pharmacological interventions

Record disease stage, diagnostic/biomarker eligibility, mechanism, comparator, trial phase, primary outcome, effect magnitude, absolute clinical meaning, follow-up, attrition, harms, monitoring, subgroup claims, and regulatory/guideline status.

Separate:

- biomarker change
- cognitive/functional change
- symptomatic benefit
- evidence consistent with disease modification
- proven long-term patient benefit

Do not treat statistical significance as automatically clinically meaningful.

### 14. Evaluate nonpharmacological and neuromodulation interventions

Record intervention components, provider, dose/intensity, frequency, duration, adherence, fidelity, comparator, blinding feasibility, contamination, clustering, outcome timing, and durability.

Distinguish cognitive training, exercise, multidomain prevention, psychosocial support, sleep interventions, sensory stimulation, brain stimulation, acupuncture, and other modalities. Do not merge them as one “non-drug therapy” effect.

### 15. Evaluate traditional/complementary medicine

Specify formulation, constituents, quality control, dose, route, syndrome differentiation when applicable, comparator, co-treatment, adverse events, interaction risk, and reproducibility.

Network pharmacology, docking, and target enrichment generate hypotheses; they do not establish efficacy, target engagement, bioavailability, or safety. Verify compounds and targets rather than copying database outputs uncritically.

### 16. Evaluate care, caregiver, and service evidence

Define person with dementia, caregiver type, relationship, setting, disease severity, service components, workforce, implementation context, cultural factors, equity, and outcomes for both patient and caregiver.

Separate knowledge, attitude, burden, quality of life, service utilization, institutionalization, costs, and clinical outcomes. Avoid treating caregiver outcomes as proxies for patient outcomes.

### 17. Evaluate heterogeneity

Plan heterogeneity across:

- diagnostic criteria and biomarker confirmation
- disease stage and severity
- age, sex/gender, genetics, ancestry, education, socioeconomic status
- comorbidity and mixed pathology
- setting and healthcare system
- intervention dose and duration
- outcome instrument and follow-up
- trial era and standard of care

Subgroups require biological or clinical rationale and appropriate interaction evidence.

### 18. Assess translation maturity

Use a transparent ladder:

```text
Hypothesis → model replication → human association → target/assay validation → early clinical feasibility → confirmatory benefit–harm evidence → guideline/regulatory adoption → equitable real-world implementation
```

Record the current rung and missing evidence. Avoid terms such as “breakthrough” unless the claim is defined and supported.

### 19. Interpret negative and null evidence

Do not equate nonsignificance with no effect. Examine estimates, intervals, sample size, adherence, outcome sensitivity, stage, timing, and whether the target was engaged.

A failed trial may challenge a compound, dose, population, stage, endpoint, or mechanism; it does not automatically falsify or validate an entire disease theory.

### 20. Communicate conclusions

State:

- population and disease stage
- evidence type and quality concerns
- magnitude and uncertainty
- replication and external validity
- clinical availability and required monitoring
- what remains unknown
- next study needed

For public communication route through `medical-popular-science` and audit risk of self-diagnosis, treatment change, supplement marketing, genetic determinism, and caregiver blame.

## Domain-specific output table

| Domain | Stage/population | Evidence type | Main finding | Effect/uncertainty | Bias/limitation | Translation rung | Clinical implication allowed | Unresolved question |
|---|---|---|---|---|---|---|---|---|

## Safeguards

- Never fabricate citations, study details, biomarkers, thresholds, approvals, prevalence, trial outcomes, or guidelines.
- Never equate all dementia with AD.
- Never equate biomarker positivity with clinical dementia.
- Never present one mechanism as the complete disease explanation without adequate qualification.
- Never infer human effectiveness from animal, cell, docking, network-pharmacology, or computational evidence.
- Never infer disease modification from a biomarker effect alone.
- Never infer clinical utility from diagnostic accuracy alone.
- Never use bibliometric prominence as biological or clinical proof.
- Never frame population risk as individual destiny or moral failure.
- Never advise an individual to start, stop, or change treatment.
- Verify unstable clinical, regulatory, guideline, and trial information live.

## Common failure modes

| Failure | Correction |
|---|---|
| AD and dementia used interchangeably | Define etiology and diagnostic criteria |
| Clinical syndrome assumed biomarker confirmed | Record diagnostic and biomarker basis separately |
| One pathway called “the real cause” | Present multifactorial evidence and scope |
| Animal behavior called cognitive recovery in patients | Keep model outcome and clinical outcome separate |
| Biomarker association called a clinical test | Assess validation, utility, adoption, and availability |
| Biomarker reduction called disease modification | Require clinical and longitudinal evidence |
| p<0.05 called meaningful benefit | Report magnitude, uncertainty, and clinical relevance |
| Risk factor called prevention | Separate association, causality, and intervention evidence |
| All nonpharmacological interventions pooled conceptually | Preserve components, dose, comparator, and stage |
| Network pharmacology called mechanism proof | Label hypothesis generation and require experimental validation |
| Citation cluster called biological pathway | Limit bibliometric inference to research patterns |
| Current approval/guideline recalled from memory | Verify authoritative live sources |

## Reproducibility record

Record:

- question, domain, disease definition, stage, and population
- diagnostic and biomarker framework/version
- route and IMRS skills used
- searches, dates, and database scope
- verified references and publication status
- study/report linkage
- outcome definitions and time points
- evidence level and bias assessment
- translation-rung judgment and basis
- regulatory/guideline sources and verification date
- assumptions, framework mappings, and protocol deviations
- unresolved questions and next-step recommendation

## Completion criteria

The task is complete only when:

- AD/dementia construct, disease stage, population, domain, and intended use are explicit
- phenotype, pathology, biomarkers, and genetic risk are distinguished
- the evidence workflow matches the research question
- references and unstable clinical facts are verified
- study design and evidence level are accurately represented
- outcomes, time points, effect magnitude, harms, and uncertainty are visible
- mechanistic and preclinical findings are separated from human clinical benefit
- biomarker maturity and intended use are explicit
- heterogeneity and mixed pathology are considered
- translation maturity is justified
- conclusions and communication remain within the evidence
