---
name: medical-popular-science
description: Use when planning, writing, editing, auditing, or adapting evidence-based medical popular-science content for the public, patients, caregivers, students, social media, books, articles, scripts, or visual explainers, with source verification, risk communication, uncertainty, health-literacy adaptation, and separation of research findings from medical advice.
---

# Medical Popular Science

## Overview

Turn verified medical evidence into accurate, readable public communication without exaggerating novelty, causality, clinical readiness, or personal relevance. Analyze the audience and evidence before drafting. Preserve uncertainty and practical meaning while avoiding both jargon dumping and false simplification.

Medical popular science explains evidence; it is not individualized diagnosis or treatment.

## Operational dependencies

Use completed IMRS skills when applicable:

| Task | Skill |
|---|---|
| Topic and terminology search | `mesh-expert`, `pubmed-search-builder` |
| Citation, PMID, DOI, retraction, and metadata checks | `reference-verifier` |
| Multi-study comparison | `evidence-matrix` |
| Review-level evidence workflow | `systematic-review`, `scoping-review` |
| Scientific and reporting audit | `medical-reviewer` |
| Multi-skill routing | `imrs-master` |

## When to use

Use this skill to:

- write evidence-based medical popular-science articles
- explain a new paper, biomarker, mechanism, intervention, guideline, or health controversy
- adapt scientific content for patients, caregivers, older adults, students, or the general public
- create book sections, newsletters, social posts, video scripts, podcast scripts, or visual-explainer copy
- audit sensational claims and misleading health communication
- translate technical findings while retaining scientific meaning
- produce a source and claim-verification table

## When not to use

Do not use this skill to:

- provide individualized diagnosis, prescription, dosage, treatment change, or emergency triage beyond safe general guidance
- market unproven products or therapies as effective
- convert one study into a universal recommendation
- present animal, cell, computational, or surrogate-marker findings as proven human benefit
- fabricate papers, identifiers, quotations, cases, prevalence, effect sizes, or clinical guidance
- conceal conflicts, commercial interests, retractions, serious limitations, or contradictory evidence
- write a patient story as factual unless it is verified or clearly labeled composite/fictional

## Required inputs

Obtain or infer cautiously:

1. topic and intended message
2. target audience and health-literacy level
3. format, channel, length, language, and tone
4. source paper(s), guideline(s), or search scope
5. desired practical takeaway
6. whether the piece discusses prevention, diagnosis, treatment, prognosis, or mechanism
7. deadline and recency requirements
8. citation style and placement
9. whether images, diagrams, or scripts are needed
10. any personal or institutional disclosure requirements

If the user supplies only a headline or secondary-news summary, verify the primary evidence before treating claims as established.

## Evidence states

Label the evidentiary basis internally and expose it when relevant:

- `GUIDELINE_OR_CONSENSUS`
- `SYSTEMATIC_REVIEW`
- `RANDOMIZED_EVIDENCE`
- `OBSERVATIONAL_EVIDENCE`
- `DIAGNOSTIC_OR_PROGNOSTIC_EVIDENCE`
- `PRECLINICAL_ANIMAL`
- `IN_VITRO`
- `COMPUTATIONAL_OR_IN_SILICO`
- `MECHANISTIC_HYPOTHESIS`
- `EXPERT_OPINION`
- `PRESS_RELEASE_OR_SECONDARY_REPORT`
- `UNVERIFIED`

Evidence type is not the same as evidence quality. Assess limitations separately.

## Claim states

Use:

- `SUPPORTED`
- `SUPPORTED_WITH_QUALIFICATION`
- `PRELIMINARY`
- `CONFLICTED`
- `UNSUPPORTED`
- `UNVERIFIED`
- `NOT_APPLICABLE`

## Workflow

### 1. Analyze what the reader actually cares about

Before drafting, identify:

- the concrete question or worry
- what changes for the reader, if anything
- what the evidence does and does not show
- likely misunderstanding or harmful interpretation
- the minimum technical background required

Do not begin with a generic history lesson unless it helps answer the reader's question.

### 2. Define the communication goal

Choose one primary goal:

- explain a finding
- correct a misconception
- support an informed conversation with clinicians
- explain uncertainty or controversy
- improve prevention or health literacy
- describe a research frontier
- contextualize a news report

Avoid trying to educate, persuade, reassure, warn, and entertain equally in one short piece.

### 3. Verify sources

Use primary articles, current guidelines, systematic reviews, regulatory information, and authoritative public-health sources as appropriate. Route citations through `reference-verifier`.

Check:

- PMID/DOI and bibliographic identity
- publication type and study design
- sample, comparator, outcomes, follow-up, and effect estimates
- correction, retraction, withdrawal, or concern status
- funding and conflicts
- whether the paper is preprint, abstract, press release, or peer-reviewed article
- whether a cited guideline/version is current

Do not cite a press release as though it were the study.

### 4. Build a claim–evidence ledger

For each intended claim record:

| Claim | Evidence source | Study type | Result supporting claim | Limitation | Claim state | Allowed wording |
|---|---|---|---|---|---|---|

Every numerical, causal, safety, diagnostic, treatment, and “first/new/breakthrough” claim requires traceable support.

### 5. Establish the evidence ladder and clinical distance

Ask how far the finding is from patient benefit:

```text
Cell/model → animal → early human association → diagnostic/prognostic validation → clinical trial → replication → guideline/regulatory adoption → real-world implementation
```

State the actual level. Do not collapse the ladder.

For biomarkers distinguish discovery, analytical validation, clinical validation, clinical utility, guideline status, and availability.

### 6. Calibrate causal language

Use language matched to design:

- randomized evidence may support causal inference within design limits
- cohort/case-control/cross-sectional evidence usually supports association, not proof of cause
- diagnostic studies estimate classification performance, not treatment benefit
- prediction models estimate risk, not necessarily mechanisms
- animal/cell studies support biological plausibility, not human effectiveness
- bibliometric patterns describe research activity, not biological truth or clinical efficacy

Replace “causes,” “prevents,” “reverses,” or “cures” when the design does not support them.

### 7. Interpret magnitude, not only significance

Communicate effect size, absolute risk, baseline risk, uncertainty, time horizon, and relevant harms when available. Prefer natural frequencies when they improve understanding.

Do not report relative changes without absolute context when this can mislead. Do not translate p values into practical importance. Do not invent absolute risk when only relative effects are reported.

### 8. Design the article logic

A robust structure is:

1. concrete reader question, scene, or verified case
2. what researchers asked and why it matters
3. how the study was done
4. what was actually found
5. what it does not prove
6. what the reader can reasonably do or watch next

Adapt structure to the format; do not force a template when it harms clarity.

Before drafting, identify sections most likely to become generic AI prose, such as broad openings, mechanical transitions, symmetrical lists, inflated conclusions, and empty calls for future research.

### 9. Use stories and cases ethically

Use a real case only when verified and appropriate for reuse. Protect privacy and obtain permission where required. Otherwise label it clearly as:

- composite scenario
- hypothetical example
- fictional teaching vignette

Do not add invented names, quotations, diagnoses, or outcomes and imply they are factual.

### 10. Translate terminology

At first use:

- give the plain-language term
- add the technical term in parentheses when useful
- explain its function with one accurate sentence

Use analogies only when mapping is explicit. State where the analogy breaks if misunderstanding is likely. Avoid replacing mechanisms with metaphors entirely.

### 11. Draft in natural language

Prefer short sentences, active voice, concrete verbs, and varied paragraph rhythm. Avoid formulaic transitions, mechanical parallelism, inflated four-character phrases, excessive headings, and strings of technical nouns.

Each major section should contain at least one concrete fact, scene, example, comparison, or authorial analysis. Do not manufacture detail to satisfy this rule.

### 12. Communicate uncertainty and disagreement

Explain the source of uncertainty:

- small sample
- wide confidence interval
- short follow-up
- selection or measurement bias
- residual confounding
- surrogate outcomes
- inconsistent studies
- lack of replication
- limited applicability
- missing harms

When experts disagree, describe the evidence and assumptions behind the disagreement rather than staging a false “two sides” debate.

### 13. Provide practical meaning safely

Separate:

- established general health guidance
- questions to discuss with a clinician
- warning signs requiring professional care
- research-only findings
- actions that should not be taken on the basis of the article

Do not advise readers to start, stop, or change medication or treatment without qualified clinical care. For high-risk or emergency topics, prioritize urgent-care guidance appropriate to the jurisdiction and current authoritative sources.

### 14. Handle prevention and risk responsibly

Avoid blame. Explain that population-level risk factors do not determine an individual's outcome. Distinguish modifiable risk, nonmodifiable risk, association, and absolute probability.

Do not promise prevention for diseases with multifactorial causes.

### 15. Handle emerging therapies and products

State:

- evidence stage
- studied population
- comparator
- meaningful benefits and harms
- approval or guideline status
- access and cost issues when verified
- uncertainties and ongoing trials

Do not use “natural,” “traditional,” “AI-powered,” “personalized,” or “biomarker-guided” as evidence of safety or effectiveness.

### 16. Add references without disrupting readability

Use the citation system required by the product. For public-facing books or articles, end references may be preferable when inline identifiers disrupt reading; follow the project-specific rule rather than imposing one universal style.

Provide PMID/DOI only after verification. Keep a claim-to-source ledger even when visible citations are light.

### 17. Design visuals accurately

For diagrams and illustrations:

- define one communication objective
- limit concepts and labels
- preserve direction, sequence, and uncertainty
- distinguish established pathways from hypotheses
- avoid decorative icons that imply evidence or precision
- include a caption stating evidence level and simplifications

Do not use generated imagery for exact quantitative charts or anatomical claims without verification. Label conceptual diagrams as simplified.

### 18. Run a harm and misinterpretation audit

Ask:

- Could a reader self-diagnose incorrectly?
- Could they stop proven treatment?
- Could they buy an unproven product?
- Could relative risk create fear or false reassurance?
- Could a biomarker be mistaken for a clinical test?
- Could an animal result be mistaken for a human treatment?
- Could the title overstate the body text?
- Could stigma, blame, ageism, ableism, or deterministic language harm readers?

Revise the title and takeaway if either outruns the evidence.

### 19. Run an anti-template edit

Remove:

- generic openings that delay the reader's question
- unsupported “breakthrough,” “revolutionary,” “game-changing,” or “subversive” claims
- stock transitions and repetitive summaries
- false balance and empty optimism
- conclusions that merely repeat the introduction
- lists that look comprehensive but omit evidence hierarchy

Add an explicit authorial judgment only when it is clearly labeled and supported.

### 20. Produce deliverables

Return as requested:

1. audience and communication brief
2. evidence/claim ledger
3. risk-of-misinterpretation notes
4. outline and AI-template risk points
5. final article/script/copy
6. verified references
7. visual brief or caption
8. disclosure and limitations

## Headline rules

A headline may be engaging but must remain true after adding omitted context. Avoid:

- universal claims from narrow samples
- causal verbs from association studies
- “cure,” “reverse,” or “prevent” without adequate clinical evidence
- “first ever” without a defensible search
- claiming a biomarker is available clinically when it is research-only
- implying one mechanism replaces all prior disease models

Use a question headline when certainty is genuinely unresolved, not as a device to insinuate an unsupported claim.

## Safeguards

- Never fabricate citations, PMID, DOI, data, quotations, cases, expert opinions, regulatory status, or guideline recommendations.
- Never hide evidence level, major limitations, harms, or conflicts.
- Never present correlation as causation.
- Never present preclinical findings as demonstrated human benefit.
- Never present diagnostic accuracy as proof of improved patient outcomes.
- Never use bibliometric prominence as evidence quality.
- Never convert nonsignificance into proof of no effect.
- Never provide individualized medical instructions beyond safe scope.
- Never stigmatize patients or imply disease is a moral failure.
- Verify unstable medical, regulatory, and guideline information using current authoritative sources.

## Common failure modes

| Failure | Correction |
|---|---|
| Writing before defining audience | Create a communication brief first |
| Secondary news treated as evidence | Retrieve and verify primary sources |
| One paper called consensus | Place it within the evidence hierarchy |
| Animal result called a treatment | State preclinical level and clinical distance |
| Relative risk without baseline | Add verified absolute context or disclose absence |
| p value used as importance | Report magnitude and uncertainty |
| Biomarker discovery called clinical test | Separate validation, utility, and availability |
| Invented patient story | Use verified, composite, or hypothetical labels |
| Analogy replaces mechanism | Explain mapping and limitations |
| Sensational title, cautious body | Calibrate title to the same evidence |
| Generic AI-style prose | Analyze logic and template risks before drafting |
| Advice exceeds evidence | Separate research findings from established guidance |

## Reproducibility record

Record:

- topic, audience, format, version, and date
- search scope and sources
- source verification status and dates
- claim–evidence ledger
- evidence level and clinical-distance judgments
- calculations and risk formats
- regulatory/guideline versions
- conflicts and funding
- story/case provenance and permissions
- visual simplifications
- harm-audit changes
- reviewer and fact-checker

## Completion criteria

The piece is complete only when:

- audience, purpose, format, and practical takeaway are explicit
- every major medical claim has a verified source or visible unverified label
- study design and evidence level are represented accurately
- causality, magnitude, uncertainty, harms, and applicability are calibrated
- preclinical, biomarker, diagnostic, and clinical stages are distinguished
- title, visuals, and takeaway do not exceed the evidence
- cases and quotations have clear provenance
- practical guidance stays within safe general scope
- references and publication status are verified
- likely harms and misinterpretations have been audited
- the final language is readable without becoming scientifically false
