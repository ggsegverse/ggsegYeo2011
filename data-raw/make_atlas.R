# Create Yeo 2011 Resting-State Network Atlases
#
# Recreates yeo7 (7 networks) and yeo17 (17 networks) cortical atlases
# from FreeSurfer's Yeo2011 annotations on fsaverage5 using ggsegExtra.
#
# Requirements:
#   - FreeSurfer installed with fsaverage5 subject
#   - ggsegExtra package
#   - ggseg.formats package
#
# Run with: Rscript data-raw/make_atlas.R

library(dplyr)
library(ggsegExtra)
library(ggseg.formats)

Sys.setenv(
  FREESURFER_HOME = "/Applications/freesurfer/7.4.1",
  DISPLAY = "/private/tmp/com.apple.launchd.Vyo4YHAmWh/org.xquartz:0"
)

options(freesurfer.verbose = FALSE)
future::plan(future::sequential)
progressr::handlers("cli")
progressr::handlers(global = TRUE)

fs_dir <- freesurfer::fs_dir()
fsaverage5_dir <- file.path(fs_dir, "subjects", "fsaverage5")

if (!dir.exists(fsaverage5_dir)) {
  cli::cli_abort(c(
    "fsaverage5 not found",
    "i" = "Expected: {.path {fsaverage5_dir}}",
    "i" = "Ensure FreeSurfer is properly installed"
  ))
}

# ── Yeo 7 Networks ──────────────────────────────────────────────
cli::cli_h1("Creating yeo7 cortical atlas (7 networks)")

yeo7_annots <- file.path(
  fsaverage5_dir, "label",
  c("lh.Yeo2011_7Networks_N1000.annot", "rh.Yeo2011_7Networks_N1000.annot")
)

for (f in yeo7_annots) {
  if (!file.exists(f)) cli::cli_abort("Annotation not found: {.path {f}}")
}

yeo7 <- create_cortical_atlas(
  input_annot = yeo7_annots,
  atlas_name = "yeo7",
  output_dir = "data-raw",
  tolerance = 1,
  smoothness = 2,
  skip_existing = TRUE,
  cleanup = FALSE
)

yeo7 <- yeo7 |>
  atlas_region_contextual("7Networks_0", "label") |>
  atlas_view_gather()

cli::cli_alert_success("yeo7: {nrow(yeo7$core)} regions")
print(yeo7)

# ── Yeo 17 Networks ─────────────────────────────────────────────
cli::cli_h1("Creating yeo17 cortical atlas (17 networks)")

yeo17_annots <- file.path(
  fsaverage5_dir, "label",
  c("lh.Yeo2011_17Networks_N1000.annot", "rh.Yeo2011_17Networks_N1000.annot")
)

for (f in yeo17_annots) {
  if (!file.exists(f)) cli::cli_abort("Annotation not found: {.path {f}}")
}

yeo17 <- create_cortical_atlas(
  input_annot = yeo17_annots,
  atlas_name = "yeo17",
  output_dir = "data-raw",
  tolerance = 1,
  smoothness = 2,
  skip_existing = TRUE,
  cleanup = FALSE
)

yeo17 <- yeo17 |>
  atlas_region_contextual("17Networks_0", "label") |>
  atlas_view_gather()

cli::cli_alert_success("yeo17: {nrow(yeo17$core)} regions")
print(yeo17)

# ── Save atlas data ──────────────────────────────────────────────
usethis::use_data(yeo7, overwrite = TRUE, compress = "xz")
cli::cli_alert_success("Saved to data/yeo7.rda")

usethis::use_data(yeo17, overwrite = TRUE, compress = "xz")
cli::cli_alert_success("Saved to data/yeo17.rda")

# ── Generate sysdata.rda with palettes from BOTH atlases ────────
brain_pals <- list()
brain_pals[[yeo7$atlas]] <- yeo7$palette
brain_pals[[yeo17$atlas]] <- yeo17$palette

save(brain_pals, file = here::here("R/sysdata.rda"), compress = "xz")
cli::cli_alert_success("Saved palettes to R/sysdata.rda")
