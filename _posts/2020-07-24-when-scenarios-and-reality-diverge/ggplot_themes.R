# primary palette 
primary_blue <- c("#1b324f"); primary_orange <- c("#ff9623"); primary_green <- "#00c082"; primary_grey <- "#d0d7e1"
color_primary_palette <- c(primary_blue, primary_green, primary_orange, primary_grey)

# secondary palette
secondary_red <- "#a63d57"; secondary_yellow <- "#f2e06e"; secondary_soft_blue <- "#78c4d6"; secondary_dark_purple <- "#574099"; secondary_moss_green <- "#4a5e54"
color_secondary_palette <- c(secondary_red, secondary_yellow, secondary_soft_blue, secondary_dark_purple, secondary_moss_green)

# blue palette 
background_blue <- "#8597a6"; background_light_blue <- "#d0d7e1"
blue_palette <- c(primary_blue, background_blue, background_light_blue)

# palette fill 
hybrid_green <- "#0E7969"; hybrid_blue <- "#50C3BA"; hybrid_orange <- "#FBAF3C"
fill_primary_palette <- c(primary_blue, hybrid_green, primary_green, hybrid_blue, secondary_yellow, hybrid_orange, secondary_red)

theme_2dii_ggplot <- function() {
  theme_classic() %+replace%
    ggplot2::theme(
      plot.title = ggplot2::element_text(face = "bold", family = "GT America", color = primary_blue, size = 16, margin = margin(25, 2, 8, 2)),
      plot.subtitle = ggplot2::element_text(family="GT America", color=primary_blue, size = 10, margin = margin(8, 2, 10, 2)),
      plot.caption = ggplot2::element_text(family="GT America", color=primary_blue, size = 10, margin = margin(5, 0, 0, 0)),
      legend.position="bottom",
      legend.title= ggplot2::element_blank(),
      axis.title = ggplot2::element_text(family="GT America", color=primary_blue, face = "bold", size = 12, margin = margin(5, 0, 5, 0)),
      axis.text = ggplot2::element_text(family="GT America", color=primary_blue, size = 10),
      axis.line = ggplot2::element_line(color=primary_blue), 
      legend.text = ggplot2::element_text(family="GT America", color=primary_blue, face = "bold", size = 10),
      panel.spacing = ggplot2::unit(0.5, "cm"),
      strip.text = ggplot2::element_text(family="GT America", color=primary_blue, size = 10, face = "bold"),
      strip.background = ggplot2::element_rect(color = "white", size = 1)
    )
}

theme_2dii_gt <- function(gt, group_col = TRUE) {
  gt <- gt %>% 
    gt::tab_options(
      table.width = pct(90),
      heading.background.color = "white",
      heading.align = "center",
      heading.title.font.size = 20,
      heading.subtitle.font.size = 14,
      heading.border.bottom.width = 2,
      heading.border.bottom.color = primary_blue,
      heading.border.lr.width = 2,
      heading.border.lr.color = "white",      
      row_group.font.size = 14,
      row_group.border.top.color = primary_blue, 
      row_group.border.top.width = 2,
      row_group.border.bottom.color = primary_blue,
      row_group.border.bottom.width = 3,
      column_labels.background.color = "white",
      column_labels.font.weight = "bold",
      column_labels.font.size = 15.5,
      column_labels.border.top.color = "white",
      column_labels.border.lr.color = "white",
      column_labels.border.top.width = 2,
      column_labels.border.bottom.width = 5,
      column_labels.border.lr.width = 2,
      column_labels.border.bottom.color = primary_blue,
      table.border.top.color = "white",
      table.font.color = primary_blue,
      table.font.size = 12,
      table.background.color = "white", 
      table.align = "center",
      table_body.hlines.color = primary_blue,
      table_body.hlines.width = 2,
      table_body.vlines.color = primary_blue,
      table_body.vlines.width = 2,
      table_body.border.top.color = "white",
      table_body.border.bottom.color = primary_blue
    ) %>% 
    gt::tab_style(style = cell_text(weight = "bold"), locations = cells_title())
  if (group_col == TRUE) {
    gt <- gt %>% 
      gt::tab_style(style = cell_text(style = "italic", weight = "bold"), locations = cells_row_groups())
  }
  return(gt)
}