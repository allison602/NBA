get_oldest <- function(year) {
  x <- select(dNBA, Year, Player, Age) %>%
    filter(Year==year) %>%
    arrange(desc(Age), Player) %>%
    select(Player)
  result <- as.list(x$Player) %>% pluck(1)
  return(result)
}

#' An Old Player Function
#'
#' This function retrieves the oldest NBA player in a particular year
#' @param year Outputs the oldest NBA for any given year
#' @keywords NBA player age
#' @export
#' @examples
#' get_oldest()
