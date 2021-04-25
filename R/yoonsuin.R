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
          rep("Commercial caste (born of a trader, salesman)", times=3),
          rep("Warrior caste (born of a soldier, guard, assassin; if male, 60% chance of being a eunuch)", times=3),
          "Artisan caste (born of a jeweller, weaver, dyer, refiner, tea brewer)")

  msg <- sample(bg,1)
  return(msg)
}

# Lamarakh or Seaborne Nomad Human
#' @export
ys_bg_sea <- function(){
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


########
# Yellow City and Topaz Isles (ycti) Social Circle Generation
########

# To add link to ycti personages NPC generator
#'@export
ys_ycti_hooks <- function(grp){
  msg <- ""

  if(isNull(grp) == TRUE){

    grpType <- c("Cockroach clan", "Shrine", "Archive", "Crab-man fighting stable",
                 "Club-fighting troupe", "Noble House", "Tea shop/Opium Den", "Seekers of Secret Knowledge",
                 "Place of learning", "Criminal band", "Exploring guild", "Philosophical society")
    grp <- sample(grpType,1)

  }

  if(grp == "Cockroach clan"){

    npcs <- c("Headman", "Wise Elder", "Expert Breeder", "Strongman", "Prophet", "Butcher", "Headman's Spouse",
              "Headman's heir", "Headman's favourite daughter", "Tattooist", "Child cockroach herder", "Cockroach day guard", "Local outlaw taken in", "Orphan hanger-on",
              "Aged invalid member", "Former rival for headmanship, now disgraced", "Headman's concubine",
              "Skilled musician - clan entertainer", "Skilled dancer - clan entertainer", "Madman - clan idiot")

    hooks <- c("The clan is in danger of being destroyed by a more powerful rival", "The cockroaches have contracted an unknown disease",
               "The clan knows the locations of secret, ancient tunnel networks beneath the city", "The clan’s cockroaches secrete a special pheromone that can be used to make magic potions",
               "The clan harbours an exile or outcast from a noble house", "The clan have discovered a valuable heirloom that was lost by a powerful NPC in a rubbish heap",
               "The clan has bred a new type of cockroach that is aggressive and impossible to control",
               "The clan are engaged in procuring runaways for a magician to use in his experiments",
               "A young member of the clan has fallen in love with a member of a rival and the pair have run away together",
               "The clan can ink magical tattoos")

    msg <- paste(sample(npcs,1), sample(npcs,1), sample(hooks,1))

  }
  else if (grp == "Shrine"){



  }
  else if (grp == "Archive"){
  }
  else if (grp == "Crab-man fighting stable"){
  }
  else if (grp == "Club-fighting Troupe"){
  }
  else if (grp == "Noble House"){
  }
  else if (grp == "Tea shop/Opium Den"){
  }
  else if (grp == "Seekers of Secret Knowledge"){
  }
  else if (grp == "Place of learning"){
  }
  else if (grp == "Exploring guild"){
  }
  else if (grp == "Philosophical society"){
  }

  return(msg)

  }


#'@export
ys_ycti <- function(){

  grpType <- c("Cockroach clan", "Shrine", "Archive", "Crab-man fighting stable",
               "Club-fighting troupe", "Noble House", "Tea shop/Opium Den", "Seekers of Secret Knowledge",
               "Place of learning", "Criminal band", "Exploring guild", "Philosophical society")
  grp <- sample(grpType,1)

  confSource <- c("Treachery", "Adultery", "Fraud or Theft", "Addiction", "Ambition", "Madness", "Love", "Folly",
                  "Paranoia", "Rivalry")

  conf <- sample(confSource, 1)
  theRival <- "None"

  if(conf == "Rivalry"){

    rivals <- c(rep("Same type", times=4), rep("Different type", times = 2))
    rival <- sample(rivals, 1)

    if(rival == "Different type"){

      theRival <- sample(grpType, 1)

    } else {

      theRival <- grp

    }

  }

  msg <- paste(grp , conf , "Rival:" , theRival)
  print(msg)
  return(grp)

}

