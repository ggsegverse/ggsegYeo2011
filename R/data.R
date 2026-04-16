#' Yeo 7-Network Cortical Atlas
#'
#' Brain atlas for the Yeo et al. (2011) 7-network resting-state cortical
#' parcellation. Contains 2D polygon geometry for [ggseg::geom_brain()].
#'
#' @family ggseg_atlases
#' @family cortical_atlases
#'
#' @references Yeo BTT, Krienen FM, Sepulcre J, et al. (2011).
#'   The organization of the human cerebral cortex estimated by intrinsic
#'   functional connectivity. *Journal of Neurophysiology*, 106(3):1125-1165.
#'   \doi{10.1152/jn.00338.2011}
#'
#' @return A [ggseg.formats::ggseg_atlas] object (cortical).
#' @import ggseg.formats
#' @export
#' @examples
#' yeo7()
#' plot(yeo7())
yeo7 <- function() .yeo7 # nolint: object_usage_linter.

#' Yeo 17-Network Cortical Atlas
#'
#' Brain atlas for the Yeo et al. (2011) 17-network resting-state cortical
#' parcellation. Contains 2D polygon geometry for [ggseg::geom_brain()].
#'
#' @family ggseg_atlases
#' @family cortical_atlases
#'
#' @references Yeo BTT, Krienen FM, Sepulcre J, et al. (2011).
#'   The organization of the human cerebral cortex estimated by intrinsic
#'   functional connectivity. *Journal of Neurophysiology*, 106(3):1125-1165.
#'   \doi{10.1152/jn.00338.2011}
#'
#' @return A [ggseg.formats::ggseg_atlas] object (cortical).
#' @export
#' @examples
#' yeo17()
#' plot(yeo17())
yeo17 <- function() .yeo17 # nolint: object_usage_linter.
