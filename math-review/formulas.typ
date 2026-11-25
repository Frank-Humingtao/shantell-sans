#let algebra = (
  ("A01", "求根公式", $ upright(x = frac(-b ± sqrt(b^2 - 4 a c), 2 a)) $),
  ("A02", "嵌套分数", $ upright(frac(1 + frac(1, 1 + x), 1 - frac(1, 1 - x))) $),
  ("A03", "根指数与嵌套根号", $ upright(root(3, x^2 + y^2) + sqrt(1 + sqrt(x))) $),
  ("A04", "希腊字母与三角函数", $ upright(sin^2 theta + cos^2 theta = 1) $),
  ("A05", "二项式与阶乘", $ upright(binom(n, k) = frac(n!, k! (n - k)!)) $),
  ("A06", "分段函数", $ upright(abs(x) = cases(x & quad x ≥ 0, -x & quad x < 0)) $),
  ("A07", "复指数与多层上标", $ upright(e^(i theta) = cos theta + i sin theta) $),
  ("A08", "对数的上下标", $ upright(log_a (x^b) = b log_a x) $),
)

#let calculus = (
  ("C01", "定积分", $ upright(integral_0^1 x^2 dif x = 1/3) $),
  ("C02", "极限与趋近箭头", $ upright(lim_(x → 0) frac(sin x, x) = 1) $),
  ("C03", "无穷求和", $ upright(sum_(k=1)^infinity 1/k^2 = pi^2/6) $),
  ("C04", "二重积分与极坐标", $ upright(integral_0^(2 pi) integral_0^1 r dif r dif theta = pi) $),
  ("C05", "偏导数与希腊字母", $ upright(frac(partial^2 phi, partial x partial y) = frac(partial^2 phi, partial y partial x)) $),
  ("C06", "环路积分", $ upright(integral.cont_C bold(F) dot dif bold(r) = 0) $),
  ("C07", "连乘边界", $ upright(product_(k=1)^n frac(k + 1, k) = n + 1) $),
  ("C08", "幂级数与阶乘", $ upright(e^x = sum_(n=0)^infinity frac(x^n, n!)) $),
)

#let structures = (
  ("M01", "旋转矩阵", $ upright(R(theta) = mat(cos theta, -sin theta; sin theta, cos theta)) $),
  ("M02", "三阶矩阵与方括号", $ upright(A = mat(delim: "[", a_11, a_12, a_13; a_21, a_22, a_23; a_31, a_32, a_33)) $),
  ("M03", "行列式与竖线", $ upright(mat(delim: "|", a, b; c, d) = a d - b c) $),
  ("M04", "列向量与范数", $ upright(norm(vec(x, y, z)) = sqrt(x^2 + y^2 + z^2)) $),
  ("M05", "箭头与帽子重音", $ upright(accent(v, arrow) = v_x hat(i) + v_y hat(j)) $),
  ("M06", "分步等号对齐", $ upright(
    (x + 1)^2 & = x^2 + 2 x + 1 \
    & ≥ 0
  ) $),
  ("M07", "集合与双线体", $ upright({ x in RR | x^2 ≤ 1 } = [-1, 1]) $),
  ("M08", "量词与蕴含", $ upright(forall x in RR \, quad x > 1 ⇒ x^2 > x) $),
)
