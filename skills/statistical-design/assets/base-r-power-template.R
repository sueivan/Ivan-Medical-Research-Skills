# 基础 R 样本量情景模板：仅适用于简单设计，复杂设计需专门方法。
options(stringsAsFactors = FALSE)
dir.create("output", showWarnings = FALSE, recursive = TRUE)
writeLines(capture.output(sessionInfo()), "output/sessionInfo.txt")

# 两独立组均值示例：delta 和 sd 必须有可追溯来源。
mean_scenarios <- expand.grid(
  delta = c(2, 3, 4),
  sd = c(8, 10),
  power = c(0.80, 0.90)
)
mean_scenarios$n_per_group <- mapply(function(delta, sd, power) {
  ceiling(stats::power.t.test(delta = delta, sd = sd, sig.level = 0.05,
                              power = power, type = "two.sample",
                              alternative = "two.sided")$n)
}, mean_scenarios$delta, mean_scenarios$sd, mean_scenarios$power)

# 两独立比例示例。prop1/prop2 应对应预设的事件方向和时间点。
prop_scenarios <- expand.grid(
  prop1 = c(0.30),
  prop2 = c(0.20, 0.22),
  power = c(0.80, 0.90)
)
prop_scenarios$n_per_group <- mapply(function(p1, p2, power) {
  ceiling(stats::power.prop.test(p1 = p1, p2 = p2, sig.level = 0.05,
                                 power = power, alternative = "two.sided")$n)
}, prop_scenarios$prop1, prop_scenarios$prop2, prop_scenarios$power)

utils::write.csv(mean_scenarios, "output/mean-scenarios.csv", row.names = FALSE)
utils::write.csv(prop_scenarios, "output/proportion-scenarios.csv", row.names = FALSE)

# 招募膨胀应在独立步骤完成并记录失访/不可评价依据，避免重复膨胀。
