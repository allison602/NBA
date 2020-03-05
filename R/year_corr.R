year_corr <- function(year) {
  x <- select_if(dNBA, is_numeric) %>%
    filter(Year==year) %>%
    select(-Year) %>%
    drop_na()
  y <- cor(x)
  result <- round(y, digits = 2)
  return(result)
}

#' An NBA matrix function
#'
#' This function that outputs a correlation matrix among all numeric variables in the Seasons_Stats_NBA dataset
#' @param year Outputs a correlation matrix among numeric variables in any particular year
#' @keywords NBA player age
#' @export
#' @examples
#' year_corr()
