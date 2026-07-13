---
name: bibliometrix-expert
description: Use when planning, running, auditing, reproducing, interpreting, or reporting bibliometric and science-mapping analyses with the R bibliometrix package or Biblioshiny, including descriptive indicators, networks, conceptual structure, thematic maps, thematic evolution, and three-fields plots.
---

# Bibliometrix Expert

## 核心原则

优先形成可执行、可审计的 R 工作流。Biblioshiny 可用于探索，但正式结果必须记录输入数据、软件版本、界面参数，并尽可能用脚本复现。任何产量、引用或网络指标都不自动代表研究质量、因果关系或临床价值。

## 启动检查

先取得或标记缺失项：研究问题；数据库、检索式、检索日期和导出格式；原始/去重记录数；R 与 bibliometrix 版本；字段完整性；清洗和合并规则；计划分析及期望输出。

函数接口会随版本变化。运行前执行 `packageVersion("bibliometrix")` 并核对该版本帮助页；不得凭旧教程补写参数或声称代码已运行。

## 工作流程

### 1. 建立项目与数据溯源

原始导出只读保存。为脚本、派生数据、图表、表格和日志建立独立目录。记录数据库覆盖、批次、编码、去重、字段缺失与名称消歧。

### 2. 选择分析

按问题选择描述性分析、合作/共现/共被引/耦合网络、概念结构、主题图、主题演化或三字段图。读取 [references/analysis-and-interpretation.md](references/analysis-and-interpretation.md)，不得将不同网络关系混用。

### 3. 编写可复现脚本

从 [assets/reproducible-workflow.R](assets/reproducible-workflow.R) 复制并修改。每个脚本必须：固定路径策略；记录版本与会话；显式写出数据源、格式、分隔符和关键参数；检查字段；设置随机种子（若步骤涉及随机性）；保存机器可读结果和图；保留错误/警告。

### 4. 清洗与审计

清洗操作须在代码或 [assets/cleaning-log.csv](assets/cleaning-log.csv) 中留痕。作者、机构、国家、关键词和被引参考文献的合并应有证据；不可为了得到理想结果随意删词或合并同名作者。

### 5. 主分析与敏感性分析

主参数依据研究问题和数据规模预先说明。至少改变一个关键参数或数据处理决定，如关键词字段、最低频次、节点数量、归一化、聚类数量、时间切点或同义词表，判断核心结论是否稳定。

### 6. Biblioshiny 对照

使用 Biblioshiny 时填写 [assets/biblioshiny-run-log.md](assets/biblioshiny-run-log.md)，逐页记录版本、菜单、筛选和参数，并导出表格/图。不能仅用截图作为复现材料；若界面结果无法通过代码或导出对象复核，标记为“界面生成、待复现”。

### 7. 报告

使用 [assets/report-template.md](assets/report-template.md)。逐项区分：直接输出、研究者解释、替代解释和不可推断事项。关键记录与自动标签需返回题名/摘要/原文核验。

## 强制边界

- 不把年增长、发文量、h 指数或引用次数直接解释为质量。
- 不把国家/机构地址字段等同于作者国籍或真实贡献。
- 不把共现、共被引、耦合或合作网络互相替代。
- 不把主题图象限机械命名为“成熟/衰退/未来热点”而不结合时间、规模和原文。
- 不把主题演化的词项连接解释为因果演进。
- 不把三字段图的流宽解释为效应量或知识传播方向。
- 不伪造代码运行、版本、输出、参数、文献、DOI 或 PMID。
- 不以 bibliometrix 图表替代系统综述、偏倚评价、Meta 分析或因果推断。

## 输出结构

1. 问题与数据边界
2. 数据质量和清洗日志
3. 软件环境与可复现代码
4. 主分析结果
5. 网络/概念/主题结果解释
6. 敏感性分析
7. 原始记录核验
8. 限制与不可推断事项
9. 复现文件清单

结论标记：`可支持`、`需谨慎`、`不支持`、`待核验`。代码未实际执行时必须写明“代码模板，未经本地运行验证”。
