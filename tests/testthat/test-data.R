describe("yeo7 atlas", {
  it("is a ggseg_atlas", {
    expect_s3_class(yeo7(), "ggseg_atlas")
    expect_s3_class(yeo7(), "cortical_atlas")
  })

  it("is valid", {
    expect_true(ggseg.formats::is_ggseg_atlas(yeo7()))
  })

  it("renders with ggseg", {
    vdiffr::expect_doppelganger(
      "yeo7-2d",
      ggseg::brain_test_plot(yeo7())
    )
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
    vdiffr::expect_doppelganger(
      "yeo17-2d",
      ggseg::brain_test_plot(yeo17())
    )
  })
})
