# Stuff from Yoon Suin the Purple Land

#
#' @export

ys_geoOrigin <- function(){
  origins <- c(rep("Mountains of the Moon", times=3), rep("The Yellow City", times=2),
               rep("Lamarakh", times=2), rep("Sughd", times=2), rep("The Hundred Kingdoms", times=2),
               "Seaborne Nomad")
  msg <- sample(origins, 1)
  return(msg)

}

#
#' @export
ys_bg <- function(){
  bg <- c(rep("Slave (50% chance of being eunuch if male)", times=3),
          rep("Very Low Caste (born of a prostitute, vagrant, criminal, roach breeder)", times=4),
          rep("Low Caste (born of a rice farmer, worm breeder, waged labourer, servant)", times=5),
          rep("Merchant caste (born of a trader, salesman", times=2),
          rep("Warrior caste (born of a soldier, guard, assassin; if male, 60% chance of being a eunuch)", times=2),
          rep("Artisan caste (born of a jeweller, weaver, dyer, refiner, tea brewer)", times=2),
          "Landowning caste (born of a platation owner or landed aristocracy",
          "Nobility (born of a ruler)")

  msg <- sample(bg,1)
  return(msg)
}

# Yellow City Human
#' @export
ys_bg_yc <- function(){
  bg <- c(rep("Slave (50% chance of being eunuch if male)", times=3),
          rep("Very Low Caste (born of a prostitute, vagrant, criminal, roach breeder)", times=4),
          rep("Low Caste (born of a rice farmer, worm breeder, waged labourer, servant)", times=6),
          rep("Commercial caste (born of a trader, salesman", times=3),
          rep("Warrior caste (born of a soldier, guard, assassin; if male, 60% chance of being a eunuch)", times=3),
          "Artisan caste (born of a jeweller, weaver, dyer, refiner, tea brewer)")

  msg <- sample(bg,1)
  return(msg)
}

# Lamarakh or Seaborne Nomad Human
#' @export
ys_bg_yc <- function(){
  bg <- c("slave (reroll on geo origin for parentage)",
          rep("Ordinary parents", times=3),
          rep("Born of a skilled hunter or fisher", times=3),
          rep("Born of a powerful warrior", times=2),
          "Born of a shaman or summoner")

  msg <- sample(bg,1)
  return(msg)
}

# Slug-men
#' @export
ys_bg_slug <- function(){
  bg <- c("Criminal family (smugglers)",
          rep("Oligopolist family (opium, tea, or slave traders)", times=2),
          rep("Brahmin family (sages, tax collectors, archivists, poets, bureaucrats)", times=3)
          )

  msg <- sample(bg,1)
  return(msg)
}

# Lamarakh or Seaborne Nomad Human
#' @export
ys_bg_dwarf <- function(){
  bg <- c("Swordsman family - guards, mercenaries, assassins",
          "Remnant aristocracy - the family believe they claim decent from nobility",
          "Jewellers - a family of expert appraisers"
  )

  ruin <- c("Plague or famine caused by angry gods", "Haunting by ghosts of the ancestors driven wild",
            "Civil War between rival leaders", "Demons from the roots of the mountains", "The golem servants created by the dwarves themselves",
            "A great mystery")

  msg <- paste(sample(bg,1), "Reason for Ruination:",sample(ruin,1))
  return(msg)
}

