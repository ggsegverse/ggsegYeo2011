# Yeo 17-Network Cortical Atlas

Brain atlas for the Yeo et al. (2011) 17-network resting-state cortical
parcellation. Contains 2D polygon geometry for
[`ggseg::geom_brain()`](https://ggsegverse.github.io/ggseg/reference/ggbrain.html).

## Usage

``` r
yeo17()
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
[`yeo7()`](https://ggsegverse.github.io/ggsegYeo2011/reference/yeo7.md)

Other cortical_atlases:
[`yeo7()`](https://ggsegverse.github.io/ggsegYeo2011/reference/yeo7.md)

## Examples

``` r
yeo17()
#> 
#> ── yeo17 ggseg atlas ───────────────────────────────────────────────────────────
#> Type: cortical
#> Regions: 17
#> Hemispheres: left, right
#> Views: inferior, lateral, medial, superior
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (vertices)
#> ────────────────────────────────────────────────────────────────────────────────
#> # A tibble: 34 × 3
#>    hemi  region        label           
#>    <chr> <chr>         <chr>           
#>  1 left  17Networks_1  lh_17Networks_1 
#>  2 left  17Networks_2  lh_17Networks_2 
#>  3 left  17Networks_3  lh_17Networks_3 
#>  4 left  17Networks_4  lh_17Networks_4 
#>  5 left  17Networks_5  lh_17Networks_5 
#>  6 left  17Networks_6  lh_17Networks_6 
#>  7 left  17Networks_7  lh_17Networks_7 
#>  8 left  17Networks_8  lh_17Networks_8 
#>  9 left  17Networks_9  lh_17Networks_9 
#> 10 left  17Networks_10 lh_17Networks_10
#> 11 left  17Networks_11 lh_17Networks_11
#> 12 left  17Networks_12 lh_17Networks_12
#> 13 left  17Networks_13 lh_17Networks_13
#> 14 left  17Networks_14 lh_17Networks_14
#> 15 left  17Networks_15 lh_17Networks_15
#> 16 left  17Networks_16 lh_17Networks_16
#> 17 left  17Networks_17 lh_17Networks_17
#> 18 right 17Networks_1  rh_17Networks_1 
#> 19 right 17Networks_2  rh_17Networks_2 
#> 20 right 17Networks_3  rh_17Networks_3 
#> 21 right 17Networks_4  rh_17Networks_4 
#> 22 right 17Networks_5  rh_17Networks_5 
#> 23 right 17Networks_6  rh_17Networks_6 
#> 24 right 17Networks_7  rh_17Networks_7 
#> 25 right 17Networks_8  rh_17Networks_8 
#> 26 right 17Networks_9  rh_17Networks_9 
#> 27 right 17Networks_10 rh_17Networks_10
#> 28 right 17Networks_11 rh_17Networks_11
#> 29 right 17Networks_12 rh_17Networks_12
#> 30 right 17Networks_13 rh_17Networks_13
#> 31 right 17Networks_14 rh_17Networks_14
#> 32 right 17Networks_15 rh_17Networks_15
#> 33 right 17Networks_16 rh_17Networks_16
#> 34 right 17Networks_17 rh_17Networks_17
plot(yeo17())
```
