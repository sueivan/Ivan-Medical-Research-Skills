---
name: journal-selector
description: Use when matching a medical or scientific manuscript to journals, building a submission shortlist, verifying scope and indexing, comparing open-access costs and policies, auditing journal legitimacy, estimating fit and rejection risks, or planning a sequential submission strategy.
---

# Journal Selector

## 核心原则

选刊是“稿件—受众—期刊范围—证据强度—文章类型—政策—资源”的匹配，不是影响因子排序。所有收录状态、费用、审稿时效、文章类型和投稿要求都具有时效性，必须以核验日期的期刊官网和权威目录为准。

## 启动检查

先取得或标记缺失项：题名/摘要/关键词；研究问题、设计和主要发现；样本/研究数量与证据强度；文章类型；目标读者；创新点及限制；全文字数、图表和补充材料；开放获取要求与预算；基金/机构政策；时效、地区、语言和职业评价需求；不可接受的出版商或模式。

若只有主题而没有摘要和研究设计，只能生成领域候选池，不能给出高置信度排序。

## 工作流程

### 1. 建立稿件画像

使用 [assets/manuscript-profile.md](assets/manuscript-profile.md)，提取学科、临床问题、设计、证据层级、主要读者、方法特色、地域性、开放科学状态和主要限制。区分论文“主题”与“贡献”：同主题不代表期刊真正匹配。

### 2. 生成候选池

候选来源优先：近期高度相关论文实际发表的期刊、领域学会期刊、权威数据库主题浏览、目标读者常用期刊和作者已知可信期刊。不得仅依据自动推荐器或邮件邀稿。

### 3. 实时核验期刊身份

对每个候选核对正式刊名、ISSN、出版社和官方域名，防止克隆/劫持网站。使用 [references/verification-sources.md](references/verification-sources.md) 依次核验期刊官网、Web of Science Master Journal List、NLM Catalog/PubMed/MEDLINE状态、Scopus Sources、DOAJ、ISSN Portal及机构认可清单（按用户需求）。记录查询日期和原始页面。

“PubMed 可检索”“被 MEDLINE 收录”“文章进入 PubMed Central”含义不同，不能混用；JCR、Web of Science、Scopus、DOAJ 也不能互相替代。

### 4. 核对范围和文章类型

阅读 Aims & Scope、作者指南和最近 12–24 个月相关文章。确认期刊是否真正发表该设计、疾病/人群、方法和文章类型；检查系统综述注册、Meta 分析、病例报告、教育研究、文献计量或 AI 研究的专门要求。

### 5. 核对政策与成本

从官网记录投稿费、APC、页费、彩色图费、税费、超长费、可选/强制 OA、许可证、豁免、预印本、数据/代码、AI 使用、伦理、作者资格和版权。费用必须写币种、税费状态和核验日期；未知时写“待确认”，不猜测。

### 6. 匹配与风险评分

使用 [assets/journal-comparison.csv](assets/journal-comparison.csv) 和 [references/fit-risk-framework.md](references/fit-risk-framework.md)。分别评价范围、读者、设计、文章类型、证据强度、格式、开放获取、成本、时效和诚信风险。评分用于结构化比较，不伪装成精确录用概率。

### 7. 诚信与可疑信号审计

使用 [assets/journal-risk-audit.md](assets/journal-risk-audit.md)。单一信号不自动定罪，但出现冒用指标/收录、官网身份不一致、隐藏费用、虚假编辑、异常保证录用或极端催投时暂停推荐并人工核验。DOAJ 未收录不等于期刊可疑；名单收录也不是质量保证。

### 8. 制定投稿梯队

提供 3–6 本期刊的分层方案：挑战、匹配和保守层；为每本写匹配理由、主要拒稿风险、必须修改事项、成本和核验状态。规划顺序时考虑返修成本和格式兼容，绝不建议同时一稿多投。

### 9. 投稿前复核

提交当天重新核对官网、指南、费用、专题截止日和收录状态。使用 [assets/pre-submission-checklist.md](assets/pre-submission-checklist.md)，并将稿件的题名、摘要、结构、字数、图表、报告指南和投稿信调整到目标期刊。

## 强制边界

- 不只按影响因子、分区或 CiteScore 选刊。
- 不声称“保证录用”“录用概率 X%”或“几天必接收”。
- 不把期刊官网宣称的指标/收录直接当真，需权威目录交叉核验。
- 不把 PubMed、MEDLINE、PMC、Web of Science、JCR、Scopus 和 DOAJ 混为一谈。
- 不使用不明第三方“影响因子”或伪指标。
- 不把 DOAJ 未收录自动判为掠夺性，也不把已收录自动判为高质量。
- 不虚构 APC、审稿周期、分区、影响因子、收录状态、接受率或编辑联系方式。
- 不推荐一稿多投、隐藏利益冲突、拆分发表、购买作者位次或代投承诺。
- 不因目标期刊高影响而建议夸大创新、因果或临床意义。

## 输出结构

1. 稿件画像与投稿约束
2. 候选期刊和生成依据
3. 权威来源核验表（含日期）
4. 匹配与风险比较
5. 挑战/匹配/保守梯队
6. 每本期刊的拒稿风险和修改建议
7. 成本、OA、版权和时效
8. 诚信风险及未核验事项
9. 顺序投稿策略和投稿前清单

候选状态标记：`推荐`、`有条件推荐`、`暂缓`、`排除`、`待核验`。
