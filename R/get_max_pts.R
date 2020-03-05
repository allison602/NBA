get_max_pts <- function(year) {
  result <- select(dNBA, Year, Player, PTS) %>%
    filter(Year==year) %>%
    select(PTS) %>%
    summarize(max(PTS))
  return(result)
}

#' A Max Points Function
#'
#' This function retrieves the max value of points made by any NBA player in a particular year
#' @param year Outputs to greatest number of points per player in particular year
#' @keywords NBA points maximum
#' @export
#' @examples
#' get_max_pts()



