#' Profit analysis
#'
#' @param data input data frame specifying price and acreage of each comparable lot.
#' @param size a numerical vector specifying the acreage of lot of interest.
#'
#' @return list
#' @export
#'
#' @examples
#' df <- dplyr::tribble(
#' ~price, ~acres,
#' 6969, 6,
#' 6996, 9,
#' 9669, 6,
#' 9696, 9
#' )
#' profit_analysis(df)
profit_analysis <- function(data, size = 1){
  data %>%
    dplyr::mutate(per_acre = price/acres) %>%
    dplyr::summarise("retail" = round(mean(per_acre, na.rm = TRUE), digits = 2),
              "high offer" = round(mean(per_acre, na.rm = TRUE), digits = 2)*.40,
              "middle offer" = round(mean(per_acre, na.rm = TRUE), digits = 2)*.35,
              "low offer" = round(mean(per_acre, na.rm = TRUE), digits = 2)*.30) %>%
    tidyr::pivot_longer(retail:"low offer",
                 names_to = "guideline") %>%
    dplyr::mutate(!!glue::glue("{size}-acre lot") := value*size) %>%
    dplyr::select(!value)
}
