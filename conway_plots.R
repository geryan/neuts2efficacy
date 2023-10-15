waning_plot_delta_conway <- plot_waning(
    ve_predictions_delta,
    # neut_model$ve_data_modelling %>%
    #   filter(variant == "delta"),
    immunity_levels = c(
      "mRNA booster",
      "Pfizer vaccine dose 2",
      "Pfizer vaccine dose 1",
      "AZ vaccine dose 1",
      "AZ vaccine dose 2"
    ),
    ndays = 365
  ) +
    ggtitle("Predicted waning in vaccine efficacy",
            "against the Delta variant")

waning_plot_delta_conway

ggsave("figures/ve_waning_delta_conway.png",
         plot = waning_plot_delta_conway,
         width = 9,
         height = 6,
         bg = "white")


waning_plot_omicron_conway <- plot_waning(
  ve_predictions_omicron,
  # neut_model$ve_data_modelling %>%
  #   filter(variant == "delta"),
  immunity_levels = c(
    "mRNA booster",
    "Pfizer vaccine dose 2",
    "Pfizer vaccine dose 1",
    "AZ vaccine dose 1",
    "AZ vaccine dose 2"
  ),
  ndays = 365
) +
  ggtitle("Predicted waning in vaccine efficacy",
          "against the Omicron variant")

waning_plot_omicron_conway

ggsave("figures/ve_waning_omicron_conway.png",
       plot = waning_plot_omicron_conway,
       width = 9,
       height = 6,
       bg = "white")
