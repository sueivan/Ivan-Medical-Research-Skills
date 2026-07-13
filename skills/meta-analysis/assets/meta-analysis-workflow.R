# Pairwise meta-analysis reproducible template using metafor
# 使用前核对当前 metafor 版本的 ?escalc、?rma.uni、?forest、?regtest、?influence。

options(stringsAsFactors = FALSE)
set.seed(20260712)

if (!requireNamespace("metafor", quietly = TRUE)) {
  stop("未安装 metafor。请在受控环境安装并记录来源与版本。")
}

dir.create("output", showWarnings = FALSE, recursive = TRUE)
dir.create("output/tables", showWarnings = FALSE, recursive = TRUE)
dir.create("output/objects", showWarnings = FALSE, recursive = TRUE)
dir.create("output/figures", showWarnings = FALSE, recursive = TRUE)
writeLines(capture.output(sessionInfo()), "output/sessionInfo.txt")
writeLines(as.character(utils::packageVersion("metafor")), "output/metafor-version.txt")

dat <- read.csv("data/meta-analysis-data.csv", check.names = FALSE)
required <- c("study_id", "yi", "vi")
missing <- setdiff(required, names(dat))
if (length(missing)) stop("缺少字段：", paste(missing, collapse = ", "))
if (anyDuplicated(dat$study_id)) warning("study_id 重复：请检查多效应/多臂依赖结构。")
if (any(!is.finite(dat$yi)) || any(!is.finite(dat$vi)) || any(dat$vi <= 0)) {
  stop("yi/vi 含无效值或非正方差。")
}

# yi 与 vi 应由经过审计的效应量脚本生成；比率效应通常在 log 尺度建模。
# 主模型示例。method 与 test 必须由方案论证，不应无条件照搬。
fit <- metafor::rma.uni(yi = yi, vi = vi, data = dat,
                        method = "REML", test = "knha")
saveRDS(fit, "output/objects/main-model.rds")
capture.output(summary(fit), file = "output/tables/main-model.txt")

pred <- predict(fit)
capture.output(pred, file = "output/tables/prediction.txt")

grDevices::png("output/figures/forest.png", width = 2400, height = 1800, res = 300)
metafor::forest(fit, slab = dat$study_id)
grDevices::dev.off()

# 诊断不等于自动排除。
infl <- metafor::influence(fit)
saveRDS(infl, "output/objects/influence.rds")
capture.output(print(infl), file = "output/tables/influence.txt")

# 仅在适用且研究数足够时启用，并解释为小样本效应线索而非偏倚证明。
# grDevices::png("output/figures/funnel.png", width = 1800, height = 1800, res = 300)
# metafor::funnel(fit)
# grDevices::dev.off()
# small_study_test <- metafor::regtest(fit)
# capture.output(small_study_test, file = "output/tables/small-study-test.txt")

# 替代模型示例：必须预设并解释差异。
# fit_alt <- update(fit, method = "DL", test = "z")
# saveRDS(fit_alt, "output/objects/sensitivity-alt-model.rds")
