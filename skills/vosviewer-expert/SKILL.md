---
name: vosviewer-expert
description: Use when planning, running, auditing, interpreting, or reporting VOSviewer bibliometric maps, including network, overlay, and density visualizations; co-authorship, co-occurrence, citation, bibliographic coupling, and co-citation analyses; or thesaurus-based data cleaning.
---

# VOSviewer Expert

## 核心原则

把 VOSviewer 图谱视为数据、计数方式、阈值、归一化、布局和聚类共同生成的探索性结果。节点距离、颜色、大小和密度只按当前分析与图例解释，不自动代表质量、因果关系或临床重要性。

## 启动检查

先取得或标记缺失项：研究问题、数据库、完整检索式、检索日期、导出格式和记录数；VOSviewer 版本；分析类型、分析单元、计数方法、阈值、归一化、布局和聚类设置；清洗词表；目标视图及导出文件。

若菜单、功能或默认值依版本而变，要求核对当前软件版本或官方手册，不凭记忆补写参数。

## 工作流程

### 1. 匹配研究问题与网络

每次分析明确节点和边。合作、关键词共现、引用、文献耦合与共被引回答不同问题，不得互换。设计分析时读取 [references/analysis-design.md](references/analysis-design.md)。

### 2. 审计与清洗数据

记录数据库覆盖、导出字段、去重、作者/机构消歧、关键词合并和排除规则。使用 thesaurus 文件时保留原词、替换词、排除项及理由；不得为得到理想聚类而删除不利术语。使用 [assets/thesaurus-template.txt](assets/thesaurus-template.txt) 和 [assets/cleaning-log.csv](assets/cleaning-log.csv)。

### 3. 建立参数账本

每次运行填写 [assets/run-ledger.md](assets/run-ledger.md)。至少记录软件版本、数据文件、分析类型、分析单元、计数方法、阈值、纳入节点数、归一化、布局、聚类参数和视图设置。

### 4. 主分析与敏感性分析

参数应由问题、数据规模和可读性共同决定，不得只为“图更漂亮”选择。至少改变一项关键参数，例如全计数/分数计数、最低出现次数、纳入节点数、聚类分辨率或术语表，比较主要结构是否稳定。

### 5. 区分三类视图

按 [references/visualization-interpretation.md](references/visualization-interpretation.md) 逐图解释：

- 网络视图：关系结构、连接与聚类；
- 叠加视图：节点附加属性，如平均发表年份或引用影响；
- 密度视图：给定权重、邻域和配色下的局部集中程度。

解释顺序固定为：图例与参数 → 直接观察 → 允许解释 → 替代解释 → 所需核验。

### 6. 报告与复现

使用 [assets/report-template.md](assets/report-template.md) 和 [assets/figure-audit.csv](assets/figure-audit.csv)。保存原始数据、清洗词表、参数账本、地图/网络文件、坐标、聚类分配和导出图。人工移动节点、改色或改标签必须留痕。

## 强制边界

- 不把节点接近解释为因果关系或直接合作，除非边定义支持。
- 不把簇颜色解释为优劣或时间先后；网络视图颜色通常表示聚类。
- 不把叠加视图的黄色自动称为“热点”；先确认颜色所编码的属性。
- 不把密度视图高亮区域等同于高质量、高影响或研究空白。
- 不把总链接强度等同于研究质量、贡献度或临床价值。
- 不把高被引等同于高质量，也不忽略引文时滞和领域规模。
- 不虚构记录数、参数、标签、引用、DOI、PMID或软件输出。
- 不以图谱替代系统综述、风险偏倚评价、Meta分析或因果推断。

## 输出结构

1. 研究问题与数据边界
2. 数据清洗与消歧日志
3. 可复现参数表
4. 主网络结果
5. 网络/叠加/密度视图逐图解释
6. 敏感性分析
7. 代表记录核验
8. 限制与不可推断事项
9. 复现文件清单

结论标记为：`可支持`、`需谨慎`、`不支持`、`待核验`。缺少原始数据、参数或地图文件时，不声称已复现。
