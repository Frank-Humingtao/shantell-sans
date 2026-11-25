# Shantell Sans 数学审阅稿

这五页样张用于确认个人版本的字形、字号和排版。每个字形和公式都有固定编号，反馈时可以直接写 `G08 θ 的横线偏粗`、`M02 方括号希望再圆一些`。

| 页面 | 内容 |
| --- | --- |
| 01 | 24 个小写、24 个大写、7 个希腊字母变体，另有 6 组易混字形对照 |
| 02 | 49 个数学符号，含关系、运算、集合、箭头、逻辑和补充兼容符号 |
| 03 | 8 条代数和三角公式 |
| 04 | 8 条微积分和级数公式 |
| 05 | 8 条矩阵、向量与多行公式 |

## 构建

从仓库根目录运行以下命令。审阅稿使用 Typst 0.15 的 `variations` 参数，中文标签默认用 Microsoft YaHei。Linux 或 macOS 可以通过 `--input label-font="Noto Sans CJK SC"` 指定本机字体。

```sh
typst compile --font-path fonts/shantell_sans-for-googlefonts --font-path math-review/vendor math-review/review.typ shantell-math-review.pdf
```

- `math-style.typ` 设置字重 600、Informality 65 和字形优先级。
- `glyphs.typ` 和 `formulas.typ` 保存可继续扩充的编号样张和 Typst 语法。
- `coverage.tsv` 记录测试字形的码位、两个字体各自的字库覆盖和 PDF 中的实际字形来源。

## 字体来源

Shantell Sans 定义拉丁字母、数字及一组常见符号，Comic Math Relief 提供数学排版和大多数希腊字母。`S49` 的 `⊥` 通过 Typst 自带的 New Computer Modern Math 补用。`S11` 的 `⟂` 与 `S49` 是两个码位。

Shantell Sans 的许可证在仓库根目录。`vendor` 中的 Comic Math Relief 字体及许可证取自同一提交。 [ComicMath 源代码](https://github.com/q-artem/ComicMath/tree/630479bc4e2c0921e3f9061c7007d381a9d510ff)
