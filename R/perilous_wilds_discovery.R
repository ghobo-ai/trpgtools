# Main tables

perilous_unnatural_feature <- function(){
  res <- sample(1:12, 1)
  if(res < 10) return(paste("Arcane:",
                            sample(c("Residue",
                                     "Blight",
                                     "Alteration/Mutation",
                                     "Enchantment",
                                     "Source/Repository"), 1),
                            ",",
                            perilous_alignment(),
                            ",",
                            rand_magic_tradition()))
  if(res < 12) return(paste("Planar:",
                            sample(c(rep("Distortion/Warp", 4),
                                     rep("Portal/Gate", 4),
                                     rep("Rift/Tear", 2),
                                     rep("Outpost", 2)), 1),
                            ",",
                            perilous_alignment(),
                            ",",
                            perilous_element()))
  if(res < 13) return(paste("Divine:",
                            sample(c(rep("Mark/Sign", 3),
                                     rep("Cursed place", 3),
                                     rep("Hallowed place", 3),
                                     "Watched place",
                                     "Presence"), 1),
                            ",",
                            perilous_alignment(),
                            ",",
                            perilous_aspect()))
}

perilous_natural_feature <- function(){
  res <- sample(1:12, 1)
  # Lair ----
  if(res < 3) return(paste("Lair:",
                           sample(c(rep("Burrow", 3),
                                    rep("Cave/Tunnels",4),
                                    rep("Nest/Aerie", 2),
                                    "Hive",
                                    rep("Ruins", 2)),1),
                           ",",
                           perilous_visibility(),
                           ",",
                           "roll for creature"))

  # Obstacle ----
  if(res < 5) return(paste("Obstacle:",
                           sample(c(rep("Difficult Terrain", 5),
                                    rep("Cliff/Crevasse/Chasm",3),
                                    rep("Ravine/Gorge", 2),
                                    rep(perilous_oddity(), 2)),1)))
  # Terrain change ----
  if(res < 8) return(paste("Terrain change:",
                           sample(c(rep(paste("Limited area of",
                                              perilous_terrain()), 4),
                                    rep("Crevice/Hole/Pit/Cave",2),
                                    rep("Altitude change", 2),
                                    rep("Canyon/Valley", 2),
                                    rep("Rise/Peak in distance", 2)),1)))
  #
  # Water Feature ----
  if(res < 10) return(paste("Water feature:",
                            sample(c("Spring/Hotspring",
                                     "Waterfall/Geyser",
                                     rep("Creek/Stream/Brook", 4),
                                     rep("Pond/Lake",2),
                                     rep("River", 2),
                                     rep("Sea/Ocean",2)),1)))
  # Landmark ----
  if(res < 12) return(paste("Landmark:",
                            sample(c(rep("Water-based (waterfall / geyser)",3),
                                     rep("Plant-based (ancient trees / giant flowers)",3),
                                     rep("Earth-based (peak / formation / crater)", 4),
                                     rep(perilous_oddity(), 2)), 1)))
  # Resource ----
  tab <- c(rep("Game/Fruit/Vegetable", 4),
           rep("Herb/Spice/Dye source", 2),
           rep("Timber/Stone", 3),
           rep("Ore (copper/ iron /...)", 2),
           "Precious metal/gems")
  return(paste0("Resource: ",
                sample(tab,1),
                ", ",
                perilous_size(),
                ", ",
                perilous_visibility()))
}

perilous_evidence <- function(){
  res <- sample(1:12, 1)
  # Tracks / Spoor ----
  if(res < 7){
    tab <- c(rep("Faint/Unclear",3),
             rep("Definite/Clear",3),
             rep("Multiple",2),
             rep("Signs of Violence",2),
             rep("Trail of blood/other",2))
    return(paste0("Tracks/Spoor: ",
                  sample(tab,1),
                  ", ",
                  perilous_age(),
                  " and roll for creature."))
  }
  # Remains / Debris ----
  if(res < 11){
    tab <- c(rep("Bones",4),
             rep("Corpse/Carcass",3),
             rep("Site of violence",2),
             "Junk/Refuse",
             "Lost supplies/Cargo",
             "Tools/Weapons/Armor")
    return(paste0("Remains/debris: ",
                  sample(tab,1),
                  ", ",
                  perilous_age(),
                  ", ",
                  perilous_visibility()))
  }
  # Stash / Cache ----
  tab <- c(rep("Trinkets/Coin",3),
           rep("Tools/Weapons/Armor",2),
           rep("Map",2),
           rep("Food/Supplies",2),
           rep("Treasure",3))
  return(paste0("Stash/cache: ",
                sample(tab,1,)))
}

perilous_structure <- function(){
  res <- sample(1:12, 1)
  # Enigmatic ----
  if(res < 2){
    tab <- c(rep("Earthworks", 4),
             rep("Megalith", 4),
             rep("Statue/Idol/Totem",2),
             perilous_oddity())
    return(paste0("Enigmatic: ",
                  sample(tab,1), ", ",
                  perilous_age(sample(1:8,1)+4), ", ",
                  perilous_size(sample(1:8,1)+4), ", ",
                  perilous_visibility()))
  }
  # Infrastructure ----
  if(res < 4){
    return(perilous_structure_infrastructure())
  }
  # Dwelling ----
  if(res == 4){
    return(perilous_structure_dwelling())
  }
  # Burial / Religious ----
  if(res < 7){
    return(perilous_structure_burial())
  }
  # Steading ----
  if(res < 9){
    return(perilous_steading())
  }
  # Ruin ----
  tab <- c(rep(perilous_structure_infrastructure(sample(1:6,1)+6), 2),
           rep(perilous_structure_dwelling(sample(1:8,1)+4),2),
           rep(perilous_structure_burial(sample(1:8,1)+4),2),
           rep(perilous_steading(sample(1:10,1)+2), 2),
           rep('Dungeon!', 3))
  return(paste0('Ruin: ',
                sample(tab, 1),
                ', ', perilous_age(),
                ', ', perilous_ruination(),
                ', ', perilous_visibility()))
}

# Aux tables

perilous_alignment <- function(){
  paste('Alignment:',
        sample(c(rep("Chaotic", 2),
                 rep("Evil", 2),
                 rep("Neutral", 3),
                 rep("Good", 2),
                 rep("Lawful", 2)), 1))
}

perilous_element <- function(){
  paste('Element:',
        sample(c("Air", "Earth", "Fire", "Water", "Life", "Death"), 1))
}

perilous_aspect <- function(){
  double <- rbinom(1, 1, 1/12)
  res <- c("Power/Strength",
           "Trickery/Dexterity",
           "Time/Constitution",
           "Knowledge/Intelligence",
           "Nature/Wisdom",
           "Culture/Charisma",
           "War/Lies/Discord",
           "Peace/Truth/Balance",
           "Hate/Envy",
           "Love/Admiration",
           perilous_element())
  paste('Aspect:',paste(sample(res, replace = F, size = 1 + double),
                        collapse = ' and '))
}

perilous_visibility <- function(){
  paste('Visibility:',
        sample(c(rep("Buried/Camouflaged/Nigh invisible",2),
                 rep("Partly covered/Overgrown/Hidden", 4),
                 rep("Obvious/In plain sight",3),
                 rep("Visible at near distance",2),
                 "Visible at great distance/Focal point"),1))
}

perilous_oddity <- function(){
  double <- rbinom(1,1,1/12)
  res <- c("weird color/smell/sound",
           "geometric",
           "web/network/system",
           "crystalline/glass-like",
           "fungal",
           "gaseous/smokey",
           "mirage/illusion",
           "volcanic/explosive",
           "magnetic/repellant",
           "devoid of life",
           "unexpectedly alive")
  paste('Oddity', paste(sample(res, size = 1 + double), collapse = ' and '))
}

perilous_terrain <- function(){
  paste('Terrain:',sample(c("Wasteland/Desert",
                            rep("Flatland/Plain", 2),
                            "Wetland/Marsh/Swamp",
                            rep("Woodland/Forest/Jungle",3),
                            rep("Highlands/Hills",2),
                            rep("Mountains",2),
                            perilous_oddity()),1))
}

perilous_ruination <- function(){
  tab <- c('Arcane disaster',
           'Damnation/Curse',
           rep('Earthquake/Fire/Flood',2),
           rep('Plague/Famine/Drought',2),
           rep('Overrun by monsters',2),
           rep('War/Invasion',2),
           'Depleted resources',
           'Better prospects elsewhere')
  paste('Ruination:',sample(tab,1))
}

perilous_size <- function(dice = sample(1:12,1)){
  tab <- c("Tiny",
           rep("Small", 2),
           rep("Medium-sized", 6),
           rep("Large", 2),
           "Huge")
  paste('Size:',tab[dice])
}

perilous_age <- function(dice = sample(1:12, 1)){
  tab <- c("Being born/built",
           rep("Young/Recent", 3),
           rep("Middle-aged", 3),
           rep("Old", 2),
           rep("Ancient", 2),
           "Pre-historic")
  paste('Age:',tab[dice])
}

perilous_structure_infrastructure <- function(dice = sample(1:12,1)){
  tab <- c(rep("Track/Path", 4),
           rep("Road", 4),
           rep("Bridge/Ford",2),
           "Mine/Quarry",
           "Aqueduct/Canal/Portal")
  return(paste0("Infrastructure: ",
                tab[dice]))
}

perilous_structure_dwelling <- function(dice = sample(1:12,1)){
  tab <- c(rep("Campsite", 3),
           rep("Hovel/Hut", 3),
           rep("Farm", 2),
           rep("Inn/Roadhouse",2),
           rep("Tower/Keep/Estate",2))
  return(paste0("Dwelling: ", tab[dice]))
}

perilous_structure_burial <- function(dice = sample(1:12,1)){
  tab <- c(rep("Grave marker/Barrow",2),
           rep("Graveyard/Necropolis", 2),
           rep("Tomb/Crypt", 2),
           rep("Shrine",3),
           rep("Temple/Retreat",2),
           "Great Temple")
  return(paste0("Burial/Religious: ",
                tab[dice],
                ", ", perilous_alignment(),
                ", ", perilous_aspect()))
}
