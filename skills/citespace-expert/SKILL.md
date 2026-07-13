---
name: citespace-expert
description: Use when planning, executing, auditing, interpreting, or reporting CiteSpace analyses, including co-citation, co-occurrence, clustering, timeline, centrality, burst detection, and bibliometric knowledge maps.
---

# CiteSpace Expert

## 核心原则

把 CiteSpace 图谱视为“数据—参数—算法”共同生成的探索性证据，不把节点大小、中心性、聚类或突现直接解释为质量、因果关系或临床重要性。

## 启动条件

先取得或明确标记缺失项：

- 研究问题、数据库、检索式、检索日期与时间跨度；
- 完整记录与被引参考文献是否导出，文件格式与记录数；
- CiteSpace 版本、操作系统与项目文件；
- 节点类型、时间切片、选择标准、剪枝、聚类与标签设置；
- 目标输出：作者/机构/国家合作、关键词、共被引、聚类、时间线或突现。

若软件版本、菜单名称或算法默认值影响结论，要求核对当前安装版本或官方文档，不凭记忆声称默认值。

## 工作流程

### 1. 定义问题与分析单元

为每张图只声明一个主要分析问题。区分合作网络、共现网络、共被引网络和直接引文网络；不要把不同边的含义混用。需要设计分析方案时读取 [references/analysis-design.md](references/analysis-design.md)。

### 2. 审计数据

记录数据库、检索边界、导出方式、去重规则、缺失字段、作者/机构名称变体及纳入记录数。数据库覆盖偏倚、语言偏倚和引文时滞必须进入限制部分。

### 3. 建立参数账本

每次运行填写 [assets/run-ledger.md](assets/run-ledger.md)。不得只报告“使用 CiteSpace 分析”。至少记录版本、时间跨度、切片、节点类型、选择标准、剪枝方式、网络规模与输出文件。

### 4. 先主分析，后敏感性分析

主参数应由研究问题和数据规模决定。参数不得仅因为图更漂亮而选择。至少改变一个关键参数（如时间切片、节点选择或剪枝）检查主要聚类、枢纽和突现结果是否稳定。

### 5. 质量控制与解释

按 [references/interpretation-rules.md](references/interpretation-rules.md) 判读网络、聚类、中心性、轮廓值、模块度、时间线与突现。输出“观察结果—允许解释—替代解释—所需验证”的证据链。

### 6. 报告与复现

使用 [assets/report-template.md](assets/report-template.md) 和 [assets/figure-audit.csv](assets/figure-audit.csv)。保存原始导出、清洗记录、项目配置、图表、表格及软件版本信息；任何人工合并或标签修改均要留痕。

## 强制边界

- 不把高被引等同于高质量或最新证据。
- 不把中介中心性自动称为“关键转折点”；需结合网络定义、时间与原文验证。
- 不把关键词共现称为作者合作或知识传播。
- 不以 Q、S 或“聚类清晰”单独证明聚类有效。
- 不把突现强度解释为效应量、风险或临床获益。
- 不根据图谱生成不存在的文献、DOI、PMID、数值、聚类标签或参数。
- 不以图谱替代系统综述、风险偏倚评价、Meta 分析或因果推断。

## 输出结构

1. 任务与数据边界
2. 可复现参数表
3. 数据质量问题
4. 主分析结果
5. 敏感性分析
6. 图谱逐图解释
7. 原文核验状态
8. 限制与不可推断事项
9. 文件与复现清单

结论分为：`可支持`、`需谨慎`、`不支持`、`待核验`。无法访问原始数据、项目文件或文献全文时，不声称已复现或已核验。
