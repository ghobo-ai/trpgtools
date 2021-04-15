#' @export
rt <- function(fun, ...){
  f <- fun
  set.seed(seed_counter)
  r <- f(...)
  seed_counter <<- seed_counter + 1
  return(r)
}

#' @export
roll <- function(number = 1, dice = 6, bonus = 0, type = "normal"){
  if(type =="fate"){
    rolls <- sample(x = c(1,0,-1), size = 4, replace = T)
    return(sum(rolls)+bonus)
  }
  rolls <- sample(x = 1:dice, size = number, replace = T)
  if(type == "normal"){
    return(sum(rolls)+bonus)
  }
  if(type == "drop_min"){
    return(sum(rolls[rolls > min(rolls)])+bonus)
  }
  if(type == "advantage"){
    return(max(rolls)+bonus)
  }
  if(type == "disadvantage"){
    return(min(rolls)+bonus)
  }
}

#' Roll a nroll dice with nsides sides and nmod modifier
#' @param nroll An integer for number of dice to roll
#' @param nsides An integer for number of sides to of the dice
#' @param nmod An integer for a modifier to added to the result
#' @return A string indicating all the dice rolled in xdy+z notation and the result
#' @export
#'

rl<- function(nroll, nsides, nmod=0){

  temp<- c()

  temp<- sample(1:nsides, nroll, replace = TRUE)

  result<- temp + nmod

  dieNum <- as.character(nroll)

  dieSides <- as.character(nsides)

  dieMod <- as.character(nmod)

  msg<- paste(dieNum,"d", dieSides, "[",temp,"]" ," ", "+"," ", dieMod," ","="," ", result, sep="")

  return(msg)
  print(msg)

}
