require(xlsx)
require(VennDiagram)

hdac1_up_table <- read.xlsx(file = "20221031_overlaps_HDAC12_ci/HDAC1_ci_up_KO_unchdown.xlsx", sheetName = "Sheet1")
hdac2_up_table <- read.xlsx("20221031_overlaps_HDAC12_ci/HDAC2_ci_up_KO_unchdown.xlsx", sheetName = "Sheet1")

hdac1_up <- as.vector(hdac1_up_table[[1:1]])
hdac2_up <- as.vector(hdac2_up_table[[1:1]])

# Write to File
venn.plot <- venn.diagram(
  list(
    "HDAC1_ci_up_KOunchdown" = hdac1_up,
    "HDAC2_ci_up_KOunchdown" = hdac2_up
  ),
  filename = "20221031_overlaps_HDAC12_ci/hdac1_hdac2_ci_up_KO_unchdown.tiff",
  height = 5000,
  width = 5000,
  margin = 0.05,
  main = "Upregulated only upon ci tg intro",
  main.cex = 4,
  fill = c("cornflowerblue", "aquamarine"),
  print.mode = c("raw", "percent"),
  sigdigs = 2,
  cex = 3,
  category.names = c("HDAC1 CI", "HDAC2 CI"),
  cat.cex = 3,
  cat.dist = c(0.05, 0.05),
  cat.pos = c(180, 180)
)
