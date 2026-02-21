## Summary

- Re-save `yeo7` (16 regions) and `yeo17` (36 regions) cortical atlases as
  unified `ggseg_atlas` objects using `ggseg.formats` (2D polygon geometry)
- Add `ggseg.formats` as hard dependency
- Simplify package to data-only with roxygen2 docs
- Bump version to 2.0.0

## Breaking changes

- `ggseg.formats` now required (in Depends)
- Old `plot()` method replaced by `ggplot() + geom_brain()`

## Test plan

- [x] R CMD check passes (0/0/0)
- [x] 2D rendering works: `ggplot() + geom_brain(atlas = yeo7)`
- [x] 2D rendering works: `ggplot() + geom_brain(atlas = yeo17)`
- [ ] Visually inspect atlas regions and colour mappings

Generated with [Claude Code](https://claude.com/claude-code)
