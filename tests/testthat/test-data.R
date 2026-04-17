describe("yeo7 atlas", {
  it("is a ggseg_atlas", {
    expect_s3_class(yeo7(), "ggseg_atlas")
    expect_s3_class(yeo7(), "cortical_atlas")
  })

  it("is valid", {
    expect_true(ggseg.formats::is_ggseg_atlas(yeo7()))
  })

  it("renders with ggseg", {
    p <- ggplot2::ggplot() +
      ggseg::geom_brain(
        atlas = yeo7(),
        mapping = ggplot2::aes(fill = label),
        position = ggseg::position_brain(hemi ~ view),
        show.legend = FALSE
      ) +
      ggplot2::scale_fill_manual(values = yeo7()$palette, na.value = "grey") +
      ggplot2::theme_void()
    vdiffr::expect_doppelganger("yeo7-2d", p)
  })
})

describe("yeo17 atlas", {
  it("is a ggseg_atlas", {
    expect_s3_class(yeo17(), "ggseg_atlas")
    expect_s3_class(yeo17(), "cortical_atlas")
  })

  it("is valid", {
    expect_true(ggseg.formats::is_ggseg_atlas(yeo17()))
  })

  it("renders with ggseg", {
    p <- ggplot2::ggplot() +
      ggseg::geom_brain(
        atlas = yeo17(),
        mapping = ggplot2::aes(fill = label),
        position = ggseg::position_brain(hemi ~ view),
        show.legend = FALSE
      ) +
      ggplot2::scale_fill_manual(values = yeo17()$palette, na.value = "grey") +
      ggplot2::theme_void()
    vdiffr::expect_doppelganger("yeo17-2d", p)
  })
})
