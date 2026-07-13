# Scopus 检索语法

以下语法应在实际使用时核对当前 Scopus 官方帮助和界面版本。

## 常用字段

- `TITLE-ABS-KEY(...)`：题名、摘要和关键词组合字段。
- `TITLE(...)`、`ABS(...)`、`KEY(...)`：单独字段。
- `AUTHKEY(...)`：作者关键词；`INDEXTERMS(...)`：索引词。
- `DOCTYPE(...)`：文献类型；`SRCTYPE(...)`：来源类型。
- `PUBYEAR AFT/BEF/IS 年份`：出版年条件；注意 AFT/BEF 是否包含边界年。
- `LANGUAGE(...)`、`AFFILCOUNTRY(...)`、`SRCTITLE(...)` 等仅在问题需要时使用。

字段存在缺失；字段越窄越可能漏检。未加字段代码通常相当于较宽的 `ALL(...)`，不宜用于需要可控主题范围的系统检索。

## 布尔与括号

- 同义词用 `OR`；必要概念用 `AND`；排除用 `AND NOT`。
- Scopus 有自己的优先级规则；始终用括号明确预期逻辑。
- 示例结构：

```text
TITLE-ABS-KEY(
  (term_a1 OR term_a2 OR (term_a3 W/2 term_a4))
  AND
  (term_b1 OR term_b2*)
)
```

## 短语、精确匹配与通配符

- 双引号 `"..."`：宽松短语检索，具体处理以当前帮助为准。
- 花括号 `{...}`：精确匹配，可能造成漏检。
- `*`：零个或多个字符；`?`：单个字符。先用测试记录确认词干不会产生大量非相关词。

## 邻近

- `W/n`：指定距离内，词序不限。
- `PRE/n`：前一词在后一词之前，指定距离内。
- 邻接表达可用短语或 `PRE/0`，但复杂式中优先选择易读且实测稳定的表达。
- 邻近算符只连接术语/短语，不能将含 `AND` 或 `AND NOT` 的复杂表达直接塞入邻近关系。
- 同一邻近链不要混用不同算符类型或不同距离；复杂表达拆成括号块。

## 限制示例

```text
TITLE-ABS-KEY((concept_a_terms) AND (concept_b_terms))
AND PUBYEAR AFT 2014
AND PUBYEAR BEF 2026
AND (DOCTYPE(ar) OR DOCTYPE(re))
```

边界年份、文献类型代码和当前允许语法必须实测。限制应与方案一致，并报告其潜在漏检。
