McCall Lab Theme
================
Zachary Brehm

## Installation

This package can be installed using devtools.

``` r
devtools::install_github("zachbrehm/ggmccalllab")
```

## Introduction

This package is currently in development. This package is intended to
provide an easily deployable color palette and theme for ggplot2 for use
by students in the McCall Lab in the Department of Biostatistics at
University of Rochester. The palettes in this package are all intended
to be color blindy friendly.

As of right now only one color palette is available, supporting up to 8
colors. This palette was adapted by Martin Krzywinski from [Points of
view: Color Blindness](https://www.nature.com/articles/nmeth.1618) by
Bang Wong. Further updates to this package will include the remaining
palettes displayed on [Martin’s own
website](http://mkweb.bcgsc.ca/colorblind/palettes.mhtml#page-container).

``` r
library(ggmccalllab)
#> Loading required package: ggplot2
#> Loading required package: scales
library(palmerpenguins)
```

## Example plots

![](man/figures/gg_tsne.png)<!-- -->

As another example, we recreate the **Bill length vs. depth** example
from the `palmerpenguins` article:
<https://allisonhorst.github.io/palmerpenguins/articles/examples.html>

``` r
ggplot(
  penguins,
  aes(x = bill_length_mm, y = bill_depth_mm, color = species, group = species)
) +
  geom_point(
    shape = 19
    ) +
  geom_smooth(method = "lm", se = FALSE) +
  scale_color_mccall_lab() +
  labs(
    title = "Penguin bill dimensions",
    subtitle = "Bill length and depth for Adelie, Chinstrap, 
                and Gentoo Penguins at Palmer Station LTER",
    x = "Bill length (mm)",
    y = "Bill depth (mm)",
    color = "Species"
  ) + 
  theme_mccall_lab()
```

![](man/figures/penguins.png)<!-- -->
