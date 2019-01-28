create_gauge_tabs <- function(tabset, gauges) {
  # funkcja tworzy tabset który ma gauge w nagłówkach
  # tabset- obiekt tabBox
  # gauges- lista gauge które mają być wyświetlane (długości muszą się zgadzać)
  
  
  for (i in seq_along(gauges)) {
    tabset$children[[1]]$children[[1]]$children[[1]][[i]]$children[[1]]$children[[3]] <-
      gauges[[i]]
  }
  return(tabset)
}
