profit_analysis <- function(data, size = 1){
  data %>%
    dplyr::mutate(per_acre = price/acres) %>%
    dplyr::summarise(retail = round(mean(per_acre, na.rm = TRUE), digits = 2),
              "high offer" = round(mean(per_acre, na.rm = TRUE), digits = 2)*.40,
              "middle offer" = round(mean(per_acre, na.rm = TRUE), digits = 2)*.35,
              "low offer" = round(mean(per_acre, na.rm = TRUE), digits = 2)*.30) %>%
    tidyr::pivot_longer(retail:"low offer",
                 names_to = "guideline") %>%
    dplyr::mutate(!!glue::glue("{size}-acre lot") := value*size) %>%
    dplyr::select(!value)
}
