# Mythic GME Adventure Crafter Plot Points
#' @export
gme_plot_point <- function(theme = sample(c("tension", "mystery", "personal", "action", "social"), 1)){
  roll <- sample(1:100, 1)
  if(roll >95){
    roll <- sample(1:100,1)
    return(paste("(Meta)",plot_points$meta[roll]))
  }else{
    return(as.character(plot_points$df[[theme]][roll]))
  }
}
#' @export
gme_turning_point <- function(themes = c("tension", "mystery", "personal", "action", "social")){
  result <- data.frame(matrix(data = NA, nrow = 5, ncol = 2))
  special <- rep(themes[4:5], 4)
  themes <- c(rep(themes[1], 4), rep(themes[2], 3), rep(themes[3], 2))
  names(result) <- c("theme", "point")
  specialCounter <- 1
  for(i in 1:5){
    roll <- sample(1:10, 1)
    theme <- themes[roll]
    if(roll == 10){
      theme <- special[specialCounter]
      specialCounter <- specialCounter + 1
    }else{
      theme <- themes[roll]
    }
    result[i,1] <- theme
    result[i,2] <- gme_plot_point(theme = theme)
  }
  return(result)
}
