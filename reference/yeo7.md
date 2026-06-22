# Yeo 7-Network Cortical Atlas

Brain atlas for the Yeo et al. (2011) 7-network resting-state cortical
parcellation. Contains 2D polygon geometry for
[`ggseg::geom_brain()`](https://ggsegverse.github.io/ggseg/reference/ggbrain.html).

## Usage

``` r
yeo7()
```

## Value

A
[ggseg.formats::ggseg_atlas](https://ggsegverse.github.io/ggseg.formats/reference/ggseg_atlas.html)
object (cortical).

## References

Yeo BTT, Krienen FM, Sepulcre J, et al. (2011). The organization of the
human cerebral cortex estimated by intrinsic functional connectivity.
*Journal of Neurophysiology*, 106(3):1125-1165.
[doi:10.1152/jn.00338.2011](https://doi.org/10.1152/jn.00338.2011)

## See also

Other ggseg_atlases:
[`yeo17()`](https://ggsegverse.github.io/ggsegYeo2011/reference/yeo17.md)

Other cortical_atlases:
[`yeo17()`](https://ggsegverse.github.io/ggsegYeo2011/reference/yeo17.md)

## Examples

``` r
yeo7()
#> 
#> ── yeo7 ggseg atlas ────────────────────────────────────────────────────────────
#> Type: cortical
#> Regions: 7
#> Hemispheres: left, right
#> Views: inferior, lateral, medial, superior
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (vertices)
#> ────────────────────────────────────────────────────────────────────────────────
#>     hemi      region          label
#> 1   left 7Networks_1 lh_7Networks_1
#> 2   left 7Networks_2 lh_7Networks_2
#> 3   left 7Networks_3 lh_7Networks_3
#> 4   left 7Networks_4 lh_7Networks_4
#> 5   left 7Networks_5 lh_7Networks_5
#> 6   left 7Networks_6 lh_7Networks_6
#> 7   left 7Networks_7 lh_7Networks_7
#> 8  right 7Networks_1 rh_7Networks_1
#> 9  right 7Networks_2 rh_7Networks_2
#> 10 right 7Networks_3 rh_7Networks_3
#> ... with 4 more rows
plot(yeo7())
```
