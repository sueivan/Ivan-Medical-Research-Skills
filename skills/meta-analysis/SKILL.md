---
name: meta-analysis
description: Use when planning, conducting, auditing, reproducing, interpreting, or reporting pairwise meta-analyses, including effect-size computation, heterogeneity, fixed/common-effect and random-effects models, subgroup analysis, meta-regression, sensitivity analysis, small-study effects, and reporting-bias assessment.
---

# Meta-analysis

## 核心原则

先判断研究在临床、方法和统计上是否适合合并，再计算汇总效应。模型由目标估计量与合理假设决定，不由 `I²` 或异质性检验的单一阈值决定。

## 启动检查

先取得或标记缺失项：方案与纳入标准；PICO/PECO；研究设计；结局定义、时间点和效应方向；每项研究的原始数据或效应量与标准误；多臂、重复测量、聚类、交叉及多结局结构；风险偏倚；预设模型、亚组和敏感性分析；软件及版本。

若只有论文汇总表而无可核验数据，先建立数据问题日志，不猜测标准差、相关系数、样本量或零事件处理。

## 工作流程

### 1. 判断能否合并

比较人群、干预/暴露、对照、结局、时间点、设计和估计目标。统计模型不能修复临床不可比。不能合理合并时，使用结构化叙述综合，不强制生成菱形。

### 2. 选择并统一效应量

按 [references/effect-size-guide.md](references/effect-size-guide.md) 选择 RR、OR、RD、HR、MD、SMD、相关系数或率比等。预先确定“正值/大于1”代表获益还是伤害；核对量表方向、单位、终点与变化值。禁止直接混合不同效应量或未经处理的重复效应。

### 3. 审计依赖性和设计

识别多臂研究、同一队列多篇报告、多个结局/时间点、聚类随机、交叉及配对数据。采用合并组、选择预设时间点、多层/多变量模型、稳健方差或其他适当方法；不得把相关效应当独立研究重复计权。

### 4. 指定模型与异质性

按 [references/models-heterogeneity.md](references/models-heterogeneity.md) 说明估计目标、共同/固定效应或随机效应假设、`tau²` 估计、区间方法及预测区间。报告研究数、Q、`tau²`、`I²` 和不确定性，但不机械套阈值。

### 5. 主分析与解释

输出每项研究效应、权重、汇总效应、置信区间和森林图。随机效应下在信息充分且方法适用时报告预测区间。把统计显著性、效应大小、精确性、临床意义和证据确定性分开。

### 6. 异质性探索

亚组与 Meta 回归应预设、有生物学/方法学依据，并使用组间差异或交互检验；不以“一个亚组显著、另一个不显著”证明差异。研究数少或协变量相关时限制模型复杂度并标记探索性。

### 7. 敏感性与影响分析

按 [references/sensitivity-bias.md](references/sensitivity-bias.md) 检查风险偏倚、效应量选择、模型/`tau²` 方法、区间方法、缺失数据、零事件、异常/高影响研究、依赖性处理和资格边界。删一法不能作为自动删除研究的依据。

### 8. 缺失结果与报告偏倚

先比较注册、方案、方法、结果和报告；再考虑漏斗图及小样本效应检验。漏斗不对称可能由异质性、选择性报告、方法差异或偶然造成；检验功效受研究数限制。不得用“不显著”证明没有偏倚。

### 9. 复现与报告

使用 [assets/meta-analysis-workflow.R](assets/meta-analysis-workflow.R)、[assets/extraction-template.csv](assets/extraction-template.csv)、[assets/decision-log.csv](assets/decision-log.csv) 和 [assets/report-template.md](assets/report-template.md)。记录软件版本、完整代码、数据变换、随机种子、警告和全部预设/事后分析。

## 强制边界

- 不按 `I² > 50%` 自动选随机效应，也不因 `I²` 低就假设同质。
- 不把随机效应称为异质性的“解决方案”。
- 不把 OR 当作 RR，不直接把 HR 解释为风险比或绝对风险。
- 不默认用 SMD 解决概念不同的量表。
- 不用组内前后显著性比较代替组间效应。
- 不重复计入共享对照、多时间点或同一队列。
- 不将漏斗图、Egger 检验或 trim-and-fill 当作发表偏倚的确定证明或修复。
- 不以 P 值代替临床意义、风险偏倚或证据确定性。
- 不虚构数据、相关系数、SD、效应量、研究、DOI、PMID 或分析运行结果。

## 输出结构

1. 合并适宜性判断
2. 数据与效应量审计
3. 依赖结构和设计处理
4. 主模型与假设
5. 汇总效应与异质性
6. 亚组/Meta 回归
7. 敏感性和影响分析
8. 缺失结果与报告偏倚
9. 临床解释、限制与确定性边界
10. 复现文件

结论标记：`可支持`、`需谨慎`、`不支持`、`待核验`。代码未执行时写明“代码模板，未经本地运行验证”。
