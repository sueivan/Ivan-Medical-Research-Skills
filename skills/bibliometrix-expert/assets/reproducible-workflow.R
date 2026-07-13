# bibliometrix 可复现工作流模板
# 使用前：阅读当前安装版本的 ?convert2df、?biblioAnalysis、?biblioNetwork 等帮助页。

options(stringsAsFactors = FALSE)
set.seed(20260712)

required <- "bibliometrix"
if (!requireNamespace(required, quietly = TRUE)) {
  stop("未安装 bibliometrix。请先在受控环境中安装并记录来源与版本。")
}

dir.create("output", showWarnings = FALSE, recursive = TRUE)
dir.create("output/tables", showWarnings = FALSE, recursive = TRUE)
dir.create("output/objects", showWarnings = FALSE, recursive = TRUE)

writeLines(capture.output(sessionInfo()), "output/sessionInfo.txt")
writeLines(as.character(utils::packageVersion("bibliometrix")),
           "output/bibliometrix-version.txt")

# ---- 用户必须修改 ----
input_file <- "data/raw/exported-file.txt"
db_source <- "wos"       # 按当前版本帮助页核对允许值
file_format <- "plaintext" # 按实际导出和帮助页修改
field_sep <- ";"

if (!file.exists(input_file)) stop("输入文件不存在：", input_file)

M <- bibliometrix::convert2df(
  file = input_file,
  dbsource = db_source,
  format = file_format
)

if (!is.data.frame(M) || nrow(M) == 0L) stop("转换结果为空或不是 data.frame。")
write.csv(data.frame(field = names(M)), "output/tables/imported-fields.csv", row.names = FALSE)
saveRDS(M, "output/objects/bibliographic-data-raw.rds")

required_fields <- c("AU", "TI", "PY", "SO")
missing_fields <- setdiff(required_fields, names(M))
if (length(missing_fields)) {
  warning("缺少计划描述性分析字段：", paste(missing_fields, collapse = ", "))
}

# ---- 在此处进行可追溯清洗；不要覆盖原始 M ----
M_clean <- M
saveRDS(M_clean, "output/objects/bibliographic-data-clean.rds")

results <- bibliometrix::biblioAnalysis(M_clean, sep = field_sep)
summary_results <- summary(object = results, k = 20, pause = FALSE)
saveRDS(results, "output/objects/biblioAnalysis.rds")
capture.output(summary_results, file = "output/tables/biblio-summary.txt")

# ---- 示例：关键词共现网络；先确认字段和当前版本参数 ----
if ("DE" %in% names(M_clean)) {
  keyword_net <- bibliometrix::biblioNetwork(
    M_clean,
    analysis = "co-occurrences",
    network = "author_keywords",
    sep = field_sep
  )
  saveRDS(keyword_net, "output/objects/author-keyword-network.rds")
  write.csv(as.matrix(keyword_net),
            "output/tables/author-keyword-network.csv",
            row.names = TRUE)
}

# ---- 可选绘图：显式记录所有参数，避免依赖默认值 ----
# grDevices::png("output/keyword-network.png", width = 2400, height = 1800, res = 300)
# network_plot <- bibliometrix::networkPlot(
#   keyword_net, normalize = "association", weighted = TRUE, n = 50,
#   Title = "Author keyword co-occurrence", type = "fruchterman",
#   size = TRUE, remove.multiple = FALSE, labelsize = 0.7, edgesize = 3
# )
# grDevices::dev.off()
# saveRDS(network_plot, "output/objects/keyword-network-plot.rds")

# 建议保存完整环境锁文件（如 renv.lock）；不要自动更新依赖后覆盖旧结果。
