# Changelog

## ggsegYeo2011 2.0.0

### Breaking changes

- `yeo7` and `yeo17` are now `ggseg_atlas` objects (from ggseg.formats)
  containing both 2D and 3D data. The separate `yeo7_3d` and `yeo17_3d`
  objects have been removed.

- Use `ggplot() + ggseg::geom_brain(atlas = yeo7)` for 2D plots and
  `ggseg3d::ggseg3d(atlas = yeo7)` for 3D plots — both from the same
  object.

- `ggseg.formats` is now a hard dependency (in Depends).

- Package URLs updated from `LCBC-UiO` to `ggseg` GitHub organisation.

## ggsegYeo2011 1.0.2

- fixed atlas names for yeo17 to have region names rather than network
  counts

## ggsegYeo2011 1.0.01

- made atlases compatible with ggseg 1.6.0
- Added a `NEWS.md` file to track changes to the package.
