# Create Yeo 2011 Resting-State Network Atlases
#
# Recreates yeo7 (7 networks) and yeo17 (17 networks) cortical atlases
# from FreeSurfer's Yeo2011 annotations on fsaverage5 using ggseg.extra
# vertex projection pipeline.
#
# Requirements:
#   - FreeSurfer installed with fsaverage5 subject
#   - ggseg.extra (>= 2.0.0.9000)
#   - ggseg.formats
#
# Run with: Rscript data-raw/make_atlas.R

library(ggseg.extra)
library(ggseg.formats)

Sys.setenv(FREESURFER_HOME = "/Applications/freesurfer/7.4.1")

fs_dir <- freesurfer::fs_dir()
fsaverage5_dir <- file.path(fs_dir, "subjects", "fsaverage5")

# ── Yeo 7 Networks ──────────────────────────────────────────────
yeo7_annots <- file.path(
  fsaverage5_dir, "label",
  c("lh.Yeo2011_7Networks_N1000.annot", "rh.Yeo2011_7Networks_N1000.annot")
)

yeo7 <- create_cortical_from_annotation(
  input_annot = yeo7_annots,
  atlas_name = "yeo7",
  output_dir = "data-raw",
  tolerance = 0,
  skip_existing = TRUE,
  cleanup = FALSE
) |>
  atlas_region_contextual("7Networks_0|Medial_Wall", "label")

print(yeo7)
plot(yeo7)

# ── Yeo 17 Networks ─────────────────────────────────────────────
yeo17_annots <- file.path(
  fsaverage5_dir, "label",
  c("lh.Yeo2011_17Networks_N1000.annot", "rh.Yeo2011_17Networks_N1000.annot")
)

yeo17 <- create_cortical_from_annotation(
  input_annot = yeo17_annots,
  atlas_name = "yeo17",
  output_dir = "data-raw",
  tolerance = 0,
  skip_existing = TRUE,
  cleanup = FALSE
) |>
  atlas_region_contextual("17Networks_0|Medial_Wall", "label")

print(yeo17)
plot(yeo17)

# ── Save atlas data ──────────────────────────────────────────────
.yeo7 <- yeo7
.yeo17 <- yeo17
usethis::use_data(
  .yeo7, .yeo17,
  overwrite = TRUE, compress = "xz", internal = TRUE
)
