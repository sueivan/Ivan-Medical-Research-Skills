---
name: bibliometric-reviewer
description: Use when peer-reviewing, critically appraising, auditing, or revising bibliometric, scientometric, science-mapping, citation-analysis, research-evaluation, or knowledge-map manuscripts using tools such as CiteSpace, VOSviewer, bibliometrix/Biblioshiny, or custom network analysis.
---

# Bibliometric Reviewer

## 核心原则

审查的是“研究问题—数据—检索—清洗—指标—算法—参数—验证—解释”整条证据链，而不是图是否漂亮或软件是否流行。数据库覆盖、检索边界和参数选择决定可见知识结构；引用和网络指标不自动表示研究质量、因果关系或临床重要性。

## 启动检查

先取得或标记缺失项：全文与补充材料；研究问题；数据库/平台；完整检索式与日期；原始和清洗后记录数；导出字段；去重、消歧和术语表；软件版本、代码和项目文件；全部参数；表图及其底层数据；适用报告指南；利益冲突和数据可用性。

若只有摘要或图，进行有限审查并列出无法判断项，不推测作者未报告的方法。

## 工作流程

### 1. 分类论文与主张

区分描述性绩效分析、科学知识图谱、主题演化、研究评价、方法比较或证据地图。逐项提取作者主张及其所需证据，使用 [assets/claim-method-crosswalk.csv](assets/claim-method-crosswalk.csv)。

### 2. 审查问题与设计匹配

判断研究问题是否明确、时间范围和分析单元是否适合、设计能否回答主张。文献计量可描述出版/引用/关系模式，但通常不能评价治疗效果、证据质量、机制真实性或未来发展。

### 3. 审查数据库与检索

按 [references/data-search-audit.md](references/data-search-audit.md) 检查数据库选择、覆盖偏倚、平台、检索日期、字段、完整检索式、限制、更新、验证和记录流程。单库不是自动错误，但必须与问题匹配并讨论遗漏；仅写“检索主题词”不可复现。

### 4. 审查数据处理

检查导出格式/字段、批次、重复、作者/机构/国家消歧、关键词合并、被引参考文献匹配、撤稿/更正处理和人工修改。清洗应有词表、规则、版本和前后记录数；不得为获得理想聚类而选择性删词。

### 5. 审查指标与方法

按 [references/method-indicator-audit.md](references/method-indicator-audit.md) 判断发文量、引用、h 指数、合作、共现、共被引、耦合、中心性、聚类、突现、主题图和演化方法是否适合。检查分母、时间、领域、文献年龄、数据库和计数方式。

### 6. 审查软件和参数

对 CiteSpace、VOSviewer、bibliometrix/Biblioshiny 或自定义代码分别记录版本和关键参数。缺少节点选择、时间切片、计数、归一化、剪枝、布局、聚类、标签或阈值时，评估其对复现和结论的影响，而不是只要求“补充软件名称”。

### 7. 审查稳健性与验证

检查参数敏感性、数据库/字段敏感性、清洗前后比较、异常节点、代表文献原文核验和聚类标签核验。没有敏感性分析不必机械拒稿，但对参数依赖的强结论应降级。自动标签和“热点”必须通过内容与时间核验。

### 8. 审查结果和图表

逐图使用 [assets/figure-audit.csv](assets/figure-audit.csv)：节点、边、大小、颜色、距离、密度、年份和权重的含义；图例、分辨率、可读性；数值与正文/表格一致；是否因标签遮挡或人工布局误导。网络视图、叠加视图和密度视图不可混读。

### 9. 审查解释、局限与贡献

按 [references/interpretation-boundaries.md](references/interpretation-boundaries.md) 检查因果化、质量化、未来化和临床化过度解释。局限必须说明数据库覆盖、语言、索引延迟、引文时滞、自引、名称消歧、参数依赖和二维布局近似对具体结论的影响。

### 10. 形成同行评审意见

使用 [assets/review-report-template.md](assets/review-report-template.md)，先给整体判断，再列主要和次要问题。每条意见写“位置—问题—影响—所需修正—可接受证据”。严重程度按 [references/review-severity.md](references/review-severity.md)，不以个人软件偏好要求作者重做。

## 强制边界

- 不把 Web of Science、Scopus、PubMed、Dimensions 等数据库结果视为同一总体。
- 不因使用单一数据库就自动否定论文，也不忽略其覆盖边界。
- 不把高被引、h 指数、中心性或总链接强度等同于质量。
- 不把共现、共被引、耦合和合作网络互相替代。
- 不把聚类质量指标单独当作语义有效性证明。
- 不把突现词或平均发表年份较新直接称为“未来热点”。
- 不把国家/机构地址当作作者国籍、真实贡献或研究质量。
- 不用 PRISMA 流程图替代检索质量、数据清洗或参数报告。
- 不虚构软件输出、参数、收录范围、研究、DOI、PMID 或报告指南要求。
- 不因自己偏好某软件、阈值或布局就提出无方法学依据的修改。

## 输出结构

1. 论文类型、问题与总体判断
2. 可复现性和致命信息缺口
3. 数据库与检索审查
4. 数据清洗与消歧审查
5. 指标、网络和参数审查
6. 稳健性、验证和图表审查
7. 解释、局限与结论审查
8. 主要问题（按严重程度）
9. 次要问题
10. 给编辑的保密意见（如用户要求）

结论状态：`方法基本可靠`、`需大修`、`核心结论暂不支持`、`无法复现`、`资料不足`。
