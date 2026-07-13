---
name: scopus-search-builder
description: Use when designing, translating, testing, documenting, peer-reviewing, or auditing reproducible Scopus document searches for systematic, scoping, bibliometric, clinical, or exploratory reviews, including field codes, Boolean logic, proximity, phrases, wildcards, limits, and search validation.
---

# Scopus Search Builder

## 核心原则

先建立概念与术语，再写 Scopus 语法；先保证召回，再通过可解释测试改进精确度。完整保留逐概念测试、最终检索式、运行日期、界面、结果数、限制条件和导出批次。Scopus 与 PubMed/WoS 语法不可直接复制。

## 启动检查

先取得或标记缺失项：研究问题和综述类型；PICO/PECO/PCC 或核心概念；纳入/排除标准；目标数据库界面；已知相关文献；日期、语言、文献类型和来源类型限制；是否用于系统综述、文献计量或快速检索；结果量和导出约束。

若无法实际访问 Scopus，输出标记为“候选检索式，未经 Scopus 实测”，不得虚构结果数。

## 工作流程

### 1. 拆分概念

使用 [assets/concept-table.csv](assets/concept-table.csv) 将问题拆成必要概念。系统评价通常不把结局、研究设计或不稳定限定作为默认概念，除非纳入标准要求且不会造成不可接受漏检。

### 2. 扩展术语

为每个概念收集规范术语、自由词、拼写变体、缩写、旧称、商品名和必要的英美拼写。来源包括已知相关文献、题名摘要词、作者关键词、索引词和领域专家。Scopus 没有 MeSH 爆破；MeSH 只能作为术语发现来源，不能假装在 Scopus 中按主题词层级检索。

### 3. 转换为 Scopus 语法

按 [references/scopus-syntax.md](references/scopus-syntax.md) 使用字段代码、引号、花括号、`*`、`?`、`W/n`、`PRE/n` 和括号。主题检索通常从 `TITLE-ABS-KEY(...)` 开始，但应根据问题评估字段覆盖和缺失字段风险。

Scopus 运算优先级并非简单从左到右；复杂式必须显式括号分组。`AND NOT` 尽量放在末尾，仅在验证排除不会误删相关文献后使用。

### 4. 逐块测试

先运行每个术语和概念块，再逐步组合。记录语法错误、结果数和新增/丢失的关键文献。使用 [assets/search-test-log.csv](assets/search-test-log.csv)。长式按行测试，避免只提交最终黑箱字符串。

### 5. 使用邻近和短语

对语义需要靠近但表达变化的概念使用 `W/n`（无序）或 `PRE/n`（有序）。双引号用于宽松短语，花括号用于精确匹配；精确匹配可能降低召回。邻近距离要通过已知文献和随机抽样验证，不根据结果量任意收紧。

### 6. 谨慎设置限制

日期、语言、文献类型、来源类型和学科限制可能排除相关记录。限制应来自方案并写在检索式/界面日志中。不要用 Scopus 学科分类代替研究主题，也不要默认排除会议论文、书章或非英语文献。

### 7. 验证检索式

按 [references/validation-audit.md](references/validation-audit.md)：

- 已知文献验证：能否检出预先确定的相关记录；
- 术语归因：每篇漏检文献是数据库未收录、字段缺失、术语缺失还是语法/限制导致；
- 精确度抽查：随机/分层检查结果，记录主要噪声来源；
- 增量测试：每次修改比较新增、丢失和关键文献；
- 独立同行评审：用 [assets/search-audit-checklist.md](assets/search-audit-checklist.md)。

已知文献集不能证明完整召回，只是最低验证。

### 8. 转换与去重准备

从 PubMed 或 WoS 转换时使用 [references/database-translation.md](references/database-translation.md)，逐项映射字段和语法，不做字符串替换。记录导出字段、日期、批次、总数、重复和数据库来源，为后续去重保留 EID、DOI、题名、作者、年份和来源信息。

### 9. 完整报告

使用 [assets/search-report.md](assets/search-report.md)，报告平台、完整逐字检索式、运行日期、覆盖日期、所有限制、结果数、测试日志、验证集表现、同行评审、导出与任何更新检索。

## 强制边界

- 不把 PubMed 的 MeSH、字段标签或短语规则直接复制到 Scopus。
- 不把 WoS 的 `TS=`、`NEAR/x` 直接复制为 Scopus 语法。
- 不省略括号依赖默认运算优先级。
- 不用 `AND NOT` 解决未经验证的噪声问题。
- 不根据想要的结果数量反向调窄检索式。
- 不默认加入语言、文献类型、来源类型或学科限制。
- 不把检索结果数当作检索质量指标。
- 不声称检索“全面”“穷尽”或“100%召回”。
- 不虚构 Scopus 结果数、字段覆盖、收录范围、导出上限或测试结果。

## 输出结构

1. 研究问题和纳入边界
2. 概念—术语表
3. Scopus 分块检索式
4. 完整高级检索式
5. 限制条件与理由
6. 逐块测试和已知文献验证
7. 精确度抽查和修改日志
8. 数据库转换说明
9. 导出、去重和复现记录
10. 未解决风险和待核验事项

状态标记：`已在 Scopus 验证`、`语法已审计但未实测`、`需修改`、`不可复现`。
