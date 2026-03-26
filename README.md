# ggsegYeo2011

Yeo 2011 Atlas for the ggsegverse Ecosystem.

## Installation

``` r
# install.packages("remotes")
remotes::install_github("ggsegverse/ggsegYeo2011")
```

## Usage

``` r
library(ggsegYeo2011)
library(ggseg)

plot(yeo7()) +
  theme_brain()
```

## Atlases

### yeo7

Yeo 2011 7-network resting-state parcellation (Yeo et al., 2011).

![yeo7](man/figures/yeo7_snapshot.png)

### yeo17

Yeo 2011 17-network resting-state parcellation (Yeo et al., 2011).

![yeo17](man/figures/yeo17_snapshot.png)
