# Stuff from CDD4 Old School Essentials Reference
# TODO: Encounter tables + Creature/Treasure generator

# Scroll Generator

# Potion Generator

# Delving Deeper Misc Magic Weapons
#' @export
dd_misc_weapon <- function (){
  item <- ""
  roll = sample(1:100,1)
  if (roll <= 13){item <- "Arrows or bolts +1"}
  else if (roll >= 14 && roll <= 20){item <- "Arrows or bolts +2"}
  else if (roll >= 21 && roll <= 30){item <- "Axe +1"}
  else if (roll >= 31 && roll <= 35){item <- "Axe +2"}
  else if (roll >= 36 && roll <= 42){item <- "Bow +1"}
  else if (roll >= 43 && roll <= 47){item <- "Dagger +1, +2 VS (hob)goblins"}
  else if (roll >= 48 && roll <= 52){item <- "Dagger +1, +2 VS kobolds & reptile"}
  else if (roll >= 53 && roll <= 57){item <- "Dagger +1, +2 VS orcs & gnolls"}
  else if (roll >= 58 && roll <= 62){item <- "Dagger +1, +2 VS men"}
  else if (roll >= 63 && roll <= 67){item <- "Flail +1"}
  else if (roll >= 68 && roll <= 70){item <- "Mace +1"}
  else if (roll >= 71 && roll <= 72){item <- "Mace +2"}
  else if (roll >= 73 && roll <= 77){item <- "Morning Star +1"}
  else if (roll >= 78 && roll <= 82){item <- "Shortsword +1"}
  else if (roll >= 83 && roll <= 84){item <- "Shortsword +1, +3 vs humanoid"}
  else if (roll >= 85 && roll <= 89){item <- "Spear +1"}
  else if (roll >= 90 && roll <= 91){item <- "Spear +2"}
  else if (roll == 92){item <- "Spear +3"}
  else if (roll >= 93 && roll <= 97){item <- "War hammer +1"}
  else if (roll >= 98 && roll <= 99){item <- "War hammer +2"}
  else if (roll == 100){item <- "War hammer +3"}
  else {item <- "None"}

  if(item == "Arrows or bolts +1"){
    rolle = sample(5:30,1)
    item <- paste(item, " " ,"[",rolle,"]", sep = "")
  }
  if(item == "Arrows or bolts +2"){
    rolle = sample(4:24,1)
    item <- paste(item, " " ,"[",rolle,"]", sep = "")
  }

  return (item)
}

# Delving Deeper Misc Magic Items
#' @export
dd_magic_misc <- function (){
  item <- ""
  roll = sample(1:100,1)
  if (roll <= 4){item <- "Amulet of Proof Against Detection"}
  else if (roll >= 5 && roll <= 8){item <- "Bag of Holding"}
  else if (roll >= 9 && roll <= 14){item <- "Boots of Elvenkind"}
  else if (roll >= 15 && roll <= 18){item <- "Boots of Levitation"}
  else if (roll >= 19 && roll <= 22){item <- "Boots of Speed"}
  else if (roll >= 23 && roll <= 26){item <- "Boots of Striding and Springing"}
  else if (roll >= 27 && roll <= 30){item <- "Cloak of Displacement"}
  else if (roll >= 31 && roll <= 36){item <- "Cloak of Elvenkind"}
  else if (roll >= 37 && roll <= 42){item <- "Crystal Ball"}
  else if (roll >= 45 && roll <= 48){item <- "Efreeti Bottle"}
  else if (roll >= 49 && roll <= 52){item <- "Flying Broomstick"}
  else if (roll >= 53 && roll <= 54){item <- "Flying Carpet"}
  else if (roll >= 55 && roll <= 61){item <- "Gauntlets of Ogre Power"}
  else if (roll >= 62 && roll <= 65){item <- "Girdle of Giant's Might"}
  else if (roll >= 66 && roll <= 72){item <- "Helm of Alignment Change"}
  else if (roll >= 73 && roll <= 76){item <- "Helm of Language and Magic Comprehension"}
  else if (roll >= 77 && roll <= 80){item <- "Helm of Telepathy"}
  else if (roll >= 81 && roll <= 82){item <- "Helm of Teleportation"}
  else if (roll >= 83 && roll <= 84){item <- "Horn of Blasting"}
  else if (roll >= 85 && roll <= 90){item <- "Medallion of Thoughts"}
  else if (roll >= 91 && roll <= 92){item <- "Mirror of Life Trapping"}
  else if (roll >= 93 && roll <= 96){item <- "Object of Commanding Elementals"}
  else if (roll >= 97 && roll <= 100){item <- "Scarab of Protection"}
  else {item <- "None"}

  if(item == "Object of Commanding Elementals"){
    rolle = sample(1:4,1)
    if(rolle == 1){ item <- "Stone of Controlling Earth Elementals"}
    else if (rolle == 2){item <- "Brazier of Controlling Fire Elementals"}
    else if (rolle == 3){item <- "Censer of Controlling Air Elementals"}
    else if (rolle == 4){item <- "Bowl of Commanding Water Elementals"}
  }

  if(item == "Scarab of Protection"){
    rolle = sample(1:6,1)+ sample(1:6,1)
    item <- paste(item, rolle, "uses")
  }

  return (item)
}

# Delving Deeper Magic Armor and Shields
#' @export
dd_magic_armor <- function (){
  item <- ""
  roll = sample(1:100,1)
  if (roll <= 30){item <- "Shield +1"}
  else if (roll >= 31 && roll <= 45){item <- "Shield +2"}
  else if (roll >= 46 && roll <= 50){item <- "Shield +3"}
  else if (roll >= 51 && roll <= 75){item <- "Plate armor +1"}
  else if (roll >= 76 && roll <= 85){item <- "Plate armor +2"}
  else if (roll >= 86 && roll <= 95){item <- "Plate armor & shield +1"}
  else if (roll >= 96 && roll <= 100){item <- "Plate armor & shield +2"}
  else {item <- "None"}
  return (item)
}

# Delving Deeper Magic Item Generator
#' @export
dd_magic_item <- function (noweapon = FALSE){
  item <- ""
  if(noweapon == FALSE){
    roll = sample(1:100,1)
    if (roll <= 15){item <- "Armor"}
    else if (roll >= 16 && roll <= 25){item <- "Misc Magic Item"}
    else if (roll >= 26 && roll <= 35){item <- "Misc Weapon"}
    else if (roll >= 36 && roll <= 50){item <- "Potion"}
    else if (roll >= 56 && roll <= 70){item <- "Ring"}
    else if (roll >= 71 && roll <= 80){item <- "Spellbook or Scroll"}
    else if (roll >= 81 && roll <= 100){item <- "Sword"}
    else {item <- "None"}
  }
  else{
    roll = sample(1:100,1)
    if (roll <= 15){item <- "Armor"}
    else if (roll >= 16 && roll <= 25){item <- "Misc Magic Item"}
    else if (roll >= 26 && roll <= 35){item <- "Potion"}
    else if (roll >= 36 && roll <= 50){item <- "Potion"}
    else if (roll >= 56 && roll <= 70){item <- "Ring"}
    else if (roll >= 71 && roll <= 80){item <- "Spellbook or Scroll"}
    else if (roll >= 81 && roll <= 100){item <- "Misc Magic Item"}
    else {item <- "None"}

  }
  print(paste("Delving Depper Magic Item:", item))
}

#Treasure Types
#' @export
ose_treasure <- function (taip = ""){
  msg <- ""
  if (taip == ""){
    taips <- c("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V")
    taip <- sample(taips, 1)
  }
  if (taip == "A"){
    #Pre-generate potential loot
    cp <- sample(1:6, 1)#CP
    cp <- cp * 1000
    sp <- sample(1:6, 1)#SP
    sp <- sp * 1000
    ep <- sample(1:4, 1)#EP
    ep <- ep * 1000
    gp <- sample(1:6, 1)+sample(1:6, 1)#GP
    gp <- gp *1000
    pp <- sample (1:2,1)
    pp <- pp*1000
    gem <- sample(1:6, 1)+sample(1:6, 1)+sample(1:6, 1)+sample(1:6, 1)+sample(1:6, 1)+sample(1:6, 1)#Gems
    jewel <- sample(1:6, 1)+sample(1:6, 1)+sample(1:6, 1)+sample(1:6, 1)+sample(1:6, 1)+sample(1:6, 1)#Jewellery
    mitem <- 3 #Magic Item

    #Determine if loot found
    msg <- paste("Treasure", taip, ":")
    roll <- sample(1:100, 1)
    if(roll <= 25){msg <- paste(msg, as.character(cp), "cp,")}
    roll <- sample(1:100, 1)
    if(roll <= 30){msg <- paste(msg, as.character(sp), "sp,")}
    roll <- sample(1:100, 1)
    if(roll <= 20){msg <- paste(msg, as.character(ep), "ep,")}
    roll <- sample(1:100, 1)
    if(roll <= 35){msg <- paste(msg, as.character(gp), "gp,")}
    roll <- sample(1:100, 1)
    if(roll <= 25){msg <- paste(msg, as.character(pp), "pp,")}
    roll <- sample(1:100, 1)
    if(roll <= 50){msg <- paste(msg, as.character(gem), "gems,")}
    roll <- sample(1:100, 1)
    if(roll <= 50){msg <- paste(msg, as.character(jewel), "jewellery,")}
    roll <- sample(1:100, 1)
    if(roll <= 30){msg <- paste(msg, as.character(mitem), "magic items")}

  }
  else if (taip == "B"){
    #Pre-generate potential loot
    cp <- sample(1:8, 1)#CP
    cp <- cp * 1000
    sp <- sample(1:6, 1)#SP
    sp <- sp * 1000
    ep <- sample(1:4, 1)#EP
    ep <- ep * 1000
    gp <- sample(1:3, 1)+sample(1:6, 1)#GP
    gp <- gp *1000
    gem <- sample(1:6, 1)#Gemsos
    jewel <- sample(1:6, 1)#Jewelry
    mitem <- 1 #Magic Item

    #Determine if loot found
    msg <- paste("Treasure", taip, ":")
    roll <- sample(1:100, 1)
    if(roll <= 50){msg <- paste(msg, as.character(cp), "cp,")}
    roll <- sample(1:100, 1)
    if(roll <= 25){msg <- paste(msg, as.character(sp), "sp,")}
    roll <- sample(1:100, 1)
    if(roll <= 25){msg <- paste(msg, as.character(ep), "ep,")}
    roll <- sample(1:100, 1)
    if(roll <= 25){msg <- paste(msg, as.character(gp), "gp,")}
    roll <- sample(1:100, 1)
    if(roll <= 25){msg <- paste(msg, as.character(gem), "gems,")}
    roll <- sample(1:100, 1)
    if(roll <= 25){msg <- paste(msg, as.character(jewel), "jewellery,")}
    roll <- sample(1:100, 1)
    if(roll <= 10){msg <- paste(msg, as.character(mitem), "magic weapon or armour suit")}

  }
  else if (taip == "C"){
    #Pre-generate potential loot
    cp <- sample(1:12, 1)#CP
    cp <- cp * 1000
    sp <- sample(1:4, 1)#SP
    sp <- sp * 1000
    ep <- sample(1:4, 1)#EP
    ep <- ep * 1000
    gem <- sample(1:4, 1)#Gems
    jewel <- sample(1:4, 1)#Jewellery
    mitem <- 2 #Magic Item

    #Determine if loot found
    msg <- paste("Treasure", taip, ":")
    roll <- sample(1:100, 1)
    if(roll <= 20){msg <- paste(msg, as.character(cp), "cp,")}
    roll <- sample(1:100, 1)
    if(roll <= 30){msg <- paste(msg, as.character(sp), "sp,")}
    roll <- sample(1:100, 1)
    if(roll <= 10){msg <- paste(msg, as.character(ep), "ep,")}
    roll <- sample(1:100, 1)
    if(roll <= 25){msg <- paste(msg, as.character(gem), "gems,")}
    roll <- sample(1:100, 1)
    if(roll <= 25){msg <- paste(msg, as.character(jewel), "jewellery,")}
    roll <- sample(1:100, 1)
    if(roll <= 10){msg <- paste(msg, as.character(mitem), "magic items")}

  }
  else if (taip == "D"){
    #Pre-generate potential loot
    cp <- sample(1:8, 1)#CP
    cp <- cp * 1000
    sp <- sample(1:12, 1)#SP
    sp <- sp * 1000
    gp <- sample(1:6, 1)#GP
    gp <- gp * 1000
    gem <- sample(1:8, 1)#Gems
    jewel <- sample(1:8, 1)#Jewellery
    mitem <- 2 #Magic Item

    #Determine if loot found
    msg <- paste("Treasure", taip, ":")
    roll <- sample(1:100, 1)
    if(roll <= 10){msg <- paste(msg, as.character(cp), "cp,")}
    roll <- sample(1:100, 1)
    if(roll <= 15){msg <- paste(msg, as.character(sp), "sp,")}
    roll <- sample(1:100, 1)
    if(roll <= 60){msg <- paste(msg, as.character(gp), "gp,")}
    roll <- sample(1:100, 1)
    if(roll <= 30){msg <- paste(msg, as.character(gem), "gems,")}
    roll <- sample(1:100, 1)
    if(roll <= 30){msg <- paste(msg, as.character(jewel), "jewellery,")}
    roll <- sample(1:100, 1)
    if(roll <= 15){msg <- paste(msg, as.character(mitem), "magic items + 1 potion")}

  }
  else if (taip == "E"){
    #Pre-generate potential loot
    cp <- sample(1:10, 1)#CP
    cp <- cp * 1000
    sp <- sample(1:12, 1)#SP
    sp <- sp * 1000
    ep <- sample(1:4, 1)#EP
    ep <- ep * 1000
    gp <- sample(1:8, 1)#EP
    gp <- gp * 1000
    gem <- sample(1:10, 1)#Gems
    jewel <- sample(1:10, 1)#Jewellery
    mitem <- 3 #Magic Item

    #Determine if loot found
    msg <- paste("Treasure", taip, ":")
    roll <- sample(1:100, 1)
    if(roll <= 5){msg <- paste(msg, as.character(cp), "cp,")}
    roll <- sample(1:100, 1)
    if(roll <= 30){msg <- paste(msg, as.character(sp), "sp,")}
    roll <- sample(1:100, 1)
    if(roll <= 25){msg <- paste(msg, as.character(ep), "ep,")}
    roll <- sample(1:100, 1)
    if(roll <= 25){msg <- paste(msg, as.character(gp), "gp,")}
    roll <- sample(1:100, 1)
    if(roll <= 10){msg <- paste(msg, as.character(gem), "gems,")}
    roll <- sample(1:100, 1)
    if(roll <= 10){msg <- paste(msg, as.character(jewel), "jewellery,")}
    roll <- sample(1:100, 1)
    if(roll <= 25){msg <- paste(msg, as.character(mitem), "magic items + 1 scroll")}

  }
  else if (taip == "F"){
    #Pre-generate potential loot
    sp <- sample(1:10, 1)+sample(1:10, 1)#SP
    sp <- sp * 1000
    ep <- sample(1:8, 1)#EP
    ep <- ep * 1000
    gp <- sample(1:12, 1)#GP
    gp <- gp * 1000
    pp <- sample(1:3, 1)#PP
    pp <- pp * 1000
    gem <- sample(1:12, 1)+sample(1:12, 1)#Gems
    jewel <- sample(1:12, 1)#Jewellery
    mitem <- 3 #Magic Item

    #Determine if loot found
    msg <- paste("Treasure", taip, ":")
    roll <- sample(1:100, 1)
    if(roll <= 10){msg <- paste(msg, as.character(sp), "sp,")}
    roll <- sample(1:100, 1)
    if(roll <= 20){msg <- paste(msg, as.character(ep), "ep,")}
    roll <- sample(1:100, 1)
    if(roll <= 45){msg <- paste(msg, as.character(gp), "gp,")}
    roll <- sample(1:100, 1)
    if(roll <= 30){msg <- paste(msg, as.character(pp), "pp,")}
    roll <- sample(1:100, 1)
    if(roll <= 20){msg <- paste(msg, as.character(gem), "gems,")}
    roll <- sample(1:100, 1)
    if(roll <= 10){msg <- paste(msg, as.character(jewel), "jewellery,")}
    roll <- sample(1:100, 1)
    if(roll <= 30){msg <- paste(msg, as.character(mitem), "non-weapon magic items + 1 scroll")}


  }
  else if (taip == "G"){
    #Pre-generate potential loot
    gp <- sample(1:4, 1)#GP
    gp <- gp * 10000
    pp <- sample(1:6, 1)#PP
    pp <- pp * 1000
    gem <- sample(1:6, 1)+sample(1:6, 1)+sample(1:6, 1)#Gems
    jewel <- sample(1:10, 1)#Jewellery
    mitem <- 4 #Magic Item

    #Determine if loot found
    msg <- paste("Treasure", taip, ":")
    roll <- sample(1:100, 1)
    if(roll <= 50){msg <- paste(msg, as.character(gp), "gp,")}
    roll <- sample(1:100, 1)
    if(roll <= 50){msg <- paste(msg, as.character(pp), "pp,")}
    roll <- sample(1:100, 1)
    if(roll <= 25){msg <- paste(msg, as.character(gem), "gems,")}
    roll <- sample(1:100, 1)
    if(roll <= 25){msg <- paste(msg, as.character(jewel), "jewellery,")}
    roll <- sample(1:100, 1)
    if(roll <= 35){msg <- paste(msg, as.character(mitem), "magic items + 1 scroll")}

  }
  else if (taip == "H"){
    #Pre-generate potential loot
    cp <- sample(1:8, 1)+sample(1:8, 1)+sample(1:8, 1)#CP
    cp <- cp * 1000
    sp <- sample(1:100, 1)#SP
    sp <- sp * 1000
    ep <- sample(1:4, 1)#EP
    ep <- ep * 1000
    gp <- sample(1:6, 1)#GP
    gp <- gp *10000
    pp <- sample (1:4,1)+sample (1:4,1)+sample (1:4,1)+sample (1:4,1)+sample (1:4,1)
    pp <- pp*1000
    gem <- sample(1:100, 1)#Gems
    jewel <- sample(1:4, 1)*10#Jewellery
    mitem <- 4 #Magic Item

    #Determine if loot found
    msg <- paste("Treasure", taip, ":")
    roll <- sample(1:100, 1)
    if(roll <= 25){msg <- paste(msg, as.character(cp), "cp,")}
    roll <- sample(1:100, 1)
    if(roll <= 30){msg <- paste(msg, as.character(sp), "sp,")}
    roll <- sample(1:100, 1)
    if(roll <= 20){msg <- paste(msg, as.character(ep), "ep,")}
    roll <- sample(1:100, 1)
    if(roll <= 35){msg <- paste(msg, as.character(gp), "gp,")}
    roll <- sample(1:100, 1)
    if(roll <= 25){msg <- paste(msg, as.character(pp), "pp,")}
    roll <- sample(1:100, 1)
    if(roll <= 50){msg <- paste(msg, as.character(gem), "gems,")}
    roll <- sample(1:100, 1)
    if(roll <= 50){msg <- paste(msg, as.character(jewel), "jewellery,")}
    roll <- sample(1:100, 1)
    if(roll <= 30){msg <- paste(msg, as.character(mitem), "magic items + 1 potion & scroll")}

  }
  else if (taip == "I"){
    #Pre-generate potential loot
    pp <- sample(1:8, 1)#PP
    pp <- pp * 1000
    gem <- sample(1:6, 1)+sample(1:6, 1)#Gems
    jewel <- sample(1:6, 1)#Jewellery
    mitem <- 1 #Magic Item

    #Determine if loot found
    msg <- paste("Treasure", taip, ":")
    roll <- sample(1:100, 1)
    if(roll <= 30){msg <- paste(msg, as.character(pp), "pp,")}
    roll <- sample(1:100, 1)
    if(roll <= 50){msg <- paste(msg, as.character(gem), "gems,")}
    roll <- sample(1:100, 1)
    if(roll <= 50){msg <- paste(msg, as.character(jewel), "jewellery,")}
    roll <- sample(1:100, 1)
    if(roll <= 15){msg <- paste(msg, as.character(mitem), "magic items + 1 scroll")}


  }
  else if (taip == "J"){
    #Pre-generate potential loot
    cp <- sample(1:4, 1)#PP
    cp <- cp * 1000
    sp <- sample(1:3, 1)#PP
    sp <- sp * 1000

    #Determine if loot found
    msg <- paste("Treasure", taip, ":")
    roll <- sample(1:100, 1)
    if(roll <= 25){msg <- paste(msg, as.character(cp), "cp,")}
    roll <- sample(1:100, 1)
    if(roll <= 10){msg <- paste(msg, as.character(sp), "sp,")}
  }
  else if (taip == "K"){
    #Pre-generate potential loot
    sp <- sample(1:6, 1)#SP
    sp <- sp * 1000
    ep <- sample(1:2, 1)#EP
    ep <- ep * 1000

    #Determine if loot found
    msg <- paste("Treasure", taip, ":")
    roll <- sample(1:100, 1)
    if(roll <= 30){msg <- paste(msg, as.character(sp), "sp,")}
    roll <- sample(1:100, 1)
    if(roll <= 2){msg <- paste(msg, as.character(ep), "ep,")}

  }
  else if (taip == "L"){
    #Pre-generate potential loot
    gems <- sample(1:4, 1)#gems

    #Determine if loot found
    msg <- paste("Treasure", taip, ":")
    roll <- sample(1:100, 1)
    if(roll <= 50){msg <- paste(msg, as.character(gems), "gems")}

  }
  else if (taip == "M"){
    #Pre-generate potential loot
    gp <- sample(1:4, 1)+sample(1:4, 1)#GP
    gp <- gp * 1000
    pp <- sample(1:6, 1)+sample(1:6, 1)+sample(1:6, 1)+sample(1:6, 1)+sample(1:6, 1)#PP
    pp <- pp * 1000
    gem <- sample(1:4, 1)+sample(1:4, 1)+sample(1:4, 1)+sample(1:4, 1)+sample(1:4, 1)#Gems
    jewel <- sample(1:6, 1)+sample(1:6, 1)#Jewellery

    #Determine if loot found
    msg <- paste("Treasure", taip, ":")
    roll <- sample(1:100, 1)
    if(roll <= 40){msg <- paste(msg, as.character(gp), "gp,")}
    roll <- sample(1:100, 1)
    if(roll <= 50){msg <- paste(msg, as.character(pp), "pp,")}
    roll <- sample(1:100, 1)
    if(roll <= 55){msg <- paste(msg, as.character(gem), "gems,")}
    roll <- sample(1:100, 1)
    if(roll <= 45){msg <- paste(msg, as.character(jewel), "jewellery,")}
  }
  else if (taip == "N"){
    #Pre-generate potential loot
    gems <- sample(1:4, 1)+sample(1:4, 1)

    #Determine if loot found
    msg <- paste("Treasure", taip, ":")
    roll <- sample(1:100, 1)
    if(roll <= 40){msg <- paste(msg, as.character(gems), "potions.")}

  }
  else if (taip == "O"){
    #Pre-generate potential loot
    gems <- sample(1:4, 1)

    #Determine if loot found
    msg <- paste("Treasure", taip, ":")
    roll <- sample(1:100, 1)
    if(roll <= 50){msg <- paste(msg, as.character(gems), "scrolls.")}


  }
  else if (taip == "P"){
    #Pre-generate potential loot
    gems <- sample(1:8, 1)+sample(1:8, 1)+sample(1:8, 1)

    #Determine if loot found
    msg <- paste("Treasure", taip, ":")
    msg <- paste(msg, as.character(gems), "cp")

  }
  else if (taip == "Q"){
    #Pre-generate potential loot
    gems <- sample(1:6, 1)+sample(1:6, 1)+sample(1:6, 1)

    #Determine if loot found
    msg <- paste("Treasure", taip, ":")
    msg <- paste(msg, as.character(gems), "sp")

  }
  else if (taip == "R"){
    #Pre-generate potential loot
    gems <- sample(1:6, 1)+sample(1:6, 1)

    #Determine if loot found
    msg <- paste("Treasure", taip, ":")
    msg <- paste(msg, as.character(gems), "ep")
  }
  else if (taip == "S"){
    #Pre-generate potential loot
    gems <- sample(1:4, 1)+sample(1:4, 1)

    #Determine if loot found
    msg <- paste("Treasure", taip, ":")
    msg <- paste(msg, as.character(gems), "gp")
  }
  else if (taip == "T"){
    #Pre-generate potential loot
    gems <- sample(1:6, 1)

    #Determine if loot found
    msg <- paste("Treasure", taip, ":")
    msg <- paste(msg, as.character(gems), "pp")
  }
  else if (taip == "U"){
    #Pre-generate potential loot
    cp <- sample(1:100, 1)#CP
    sp <- sample(1:100, 1)#SP
    gp <- sample(1:100, 1)#GP
    gem <- sample(1:4, 1)#Gems
    jewel <- sample(1:4, 1)#Jewellery
    mitem <- 1 #Magic Item

    #Determine if loot found
    msg <- paste("Treasure", taip, ":")
    roll <- sample(1:100, 1)
    if(roll <= 10){msg <- paste(msg, as.character(cp), "cp,")}
    roll <- sample(1:100, 1)
    if(roll <= 10){msg <- paste(msg, as.character(sp), "sp,")}
    roll <- sample(1:100, 1)
    if(roll <= 5){msg <- paste(msg, as.character(gp), "gp,")}
    roll <- sample(1:100, 1)
    if(roll <= 5){msg <- paste(msg, as.character(gem), "gems,")}
    roll <- sample(1:100, 1)
    if(roll <= 5){msg <- paste(msg, as.character(jewel), "jewellery,")}
    roll <- sample(1:100, 1)
    if(roll <= 2){msg <- paste(msg, as.character(mitem), "magic item")}

  }
  else if (taip == "V"){
    #Pre-generate potential loot
    sp <- sample(1:100, 1)#SP
    ep <- sample(1:100, 1)#EP
    gp <- sample(1:100, 1)#GP
    pp <- sample(1:100, 1)#PP
    gem <- sample(1:4, 1)#Gems
    jewel <- sample(1:4, 1)#Jewellery
    mitem <- 1 #Magic Item

    #Determine if loot found
    msg <- paste("Treasure", taip, ":")
    roll <- sample(1:100, 1)
    if(roll <= 10){msg <- paste(msg, as.character(sp), "sp,")}
    roll <- sample(1:100, 1)
    if(roll <= 5){msg <- paste(msg, as.character(ep), "ep,")}
    roll <- sample(1:100, 1)
    if(roll <= 10){msg <- paste(msg, as.character(gp), "gp,")}
    roll <- sample(1:100, 1)
    if(roll <= 5){msg <- paste(msg, as.character(pp), "pp,")}
    roll <- sample(1:100, 1)
    if(roll <= 10){msg <- paste(msg, as.character(gem), "gems,")}
    roll <- sample(1:100, 1)
    if(roll <= 10){msg <- paste(msg, as.character(jewel), "jewellery,")}
    roll <- sample(1:100, 1)
    if(roll <= 5){msg <- paste(msg, as.character(mitem), "magic item")}
  }
  else{}
  print(msg)
}

#Random Event - 12 Rows
#' @export
ose_randevent <- function(terrain = 'plains'){
  msg = ''
  msg2 = ''
  # Rolls ----
  rolls <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)

  badlands <- c('Storm','Fortress','Town','Camp','Village','Thorpe','Sickness',
                'Wildfire','Ruins','Standing Stone', 'Lair','Accident','Hamlet',
                'Lost',rep('ENCOUNTER', times = 6))

  plains <- c('Storm','Fortress','Town','Camp','Village','Thorpe','Sickness',
                'Wildfire','Ruins','Standing Stone', 'Lair','Accident','Hamlet',
                'Lost',rep('ENCOUNTER', times = 6))

  lake <- c('Storm','Fortress','Town','Camp','Village','Thorpe','Sickness',
              'Wildfire','Ruins','Standing Stone', 'Lair','Accident','Hamlet',
              'Lost',rep('ENCOUNTER', times = 6))

  scrub <- c('Storm','Fortress','Town','Camp','Village','Thorpe','Sickness',
                'Wildfire','Ruins','Standing Stone', 'Lair','Accident','Hamlet',
                'Lost',rep('ENCOUNTER', times = 6))

  desert <- c('Sandstorm','Ruins','Town','Fortress','Camp','Thorpe','Quicksand',
              'Village', 'Oasis','Lair','Accident','Lost','Hamlet','Oasis','Lost',
              rep('ENCOUNTER', times = 5))

  swamp <- c('Storm','Ruins','Disease','Village','Accident','Quicksand','Lost',
              'Flood', 'Swamp Lights','Thorpe','Lair','Disease','Camp','Quicksand',
             'Accident', 'Hamlet','Disease',rep('ENCOUNTER', times = 3))

  forest <- c('Storm','Thorpe','Village','Ruins','Disease','Forest Fire','Fortress',
             'Town', 'Rain/Snow','Sacred Grove','Lair','Accident','Hamlet','Lost',
             rep('ENCOUNTER', times = 6))

  forested_hills <- c('Storm','Thorpe','Rock/Mudslide','Ruins','Disease','Forest Fire','Fortress',
              'Town', 'Rain/Snow','Sacred Grove','Lair','Accident','Mine/Cavern','Lost',
              rep('ENCOUNTER', times = 6))

  hills <- c('Rain/Snow','Village','Town','Fortress','Thorpe','Ruins','Sickness/Disease',
              'Rock/Mudslide', 'Mine/Cavern','Earthquake','Lair','Hamlet','Accident','Lost','Camp',
              rep('ENCOUNTER', times = 5))

  valley <- c('Rain/Snow','Village','Town','Fortress','Thorpe','Ruins','Sickness/Disease',
             'Rock/Mudslide', 'Mine/Cavern','Earthquake','Lair','Hamlet','Accident','Lost','Camp',
             rep('ENCOUNTER', times = 5))

  mountains <- c('Storm','Rain/Snow','Village','Ruins','Rock/Mudslide','Sickness/Disease','Fortress',
             'Earthquake', 'Camp','Mine/Cavern','Lair','Thorpe','Hamlet','Accident','Lost', 'Lost',
             rep('ENCOUNTER', times = 4))

  # Final result ----
  res <- data.frame(rolls,plains,scrub,badlands,lake,desert,mountains, valley, hills, forested_hills, forest, swamp)
  roll <- sample(1:20, 1)

  msg <- paste0(as.character(res[which(res$rolls >= roll)[1],
                                 which(names(res) == terrain)]))
  # Rolls ----
  rolls2 <- c(1,2,3,4,5,6,7,8,9,10,11,12)

  ebadlands <- c('Human','Flyer','Giant','Lycanthrope','Animal','Demihuman',
                'Animal','Dragon','Vermin','Giant','Humanoid','Undead')

  eplains <- c('Human','Flyer','Giant','Lycanthrope','Animal','Demihuman',
              'Animal','Dragon','Vermin','Giant','Humanoid','Human')

  elake <- c('Human','Flyer','Giant','Fey','Animal','Swimmer',
             'Swimmer','Dragon','Demihuman','Vermin','Humanoid','Swimmer')

  escrub <- c('Human','Flyer','Giant','Lycanthrope','Animal','Demihuman',
             'Animal','Dragon','Vermin','Giant','Humanoid','Human')

  edesert <- c('Vermin','Flyer','Giant','Lycanthrope','Animal','Human',
              'Animal','Dragon','Humanoid','Dragon','Human','Enchanted')

  eswamp <- c('Human','Flyer','Giant','Lycanthrope','Animal','Swimmer',
              'Swimmer','Dragon','Undead','Vermin','Humanoid','Swimmer')

  eforest <- c('Human','Flyer','Giant','Lycanthrope','Animal','Human',
               'Animal','Dragon','Vermin','Fey','Humanoid','Demihuman')

  eforested_hills <- c('Human','Flyer','Giant','Lycanthrope','Animal','Lycanthrope',
                       'Animal','Dragon','Vermin','Fey','Humanoid','Demihuman')

  ehills <- c('Human','Flyer','Giant','Lycanthrope','Animal','Demihuman',
              'Animal','Dragon','Vermin','Enchanted','Giant','Undead')

  evalley <- c('Human','Flyer','Giant','Lycanthrope','Animal','Undead',
               'Animal','Dragon','Vermin','Enchanted','Giant','Undead')

  emountains <- c('Human','Flyer','Giant','Lycanthrope','Animal','Demihuman',
                  'Animal','Dragon','Vermin','Giant','Humanoid','Flyer')

  res2 <- data.frame(rolls2,eplains,escrub,ebadlands,elake,edesert,emountains, evalley, ehills, eforested_hills, eforest, eswamp)
  roll2 <- sample(1:12, 1)
  msg2 <- paste0(as.character(res2[which(res2$rolls2 >= roll2)[1],
                                 which(names(res2) == paste('e',terrain,sep=''))]))

  paste(terrain, msg, msg2)


}


# Stuff from CDD4 Old School Essentials Reference

#Weather - 24 Rows
#' @export
ose_weather <- function(season = 'Spring'){
  msg = ''
  msg2 = ''
  # Rolls ----
  rolls <- c(2, 5, 9, 13, 17, 22, 27, 32, 37, 42, 48, 54, 60, 64, 68, 72, 76, 80, 83, 86, 89, 93, 97, 100)
  # Spring ----
  Spring <- c(rep('Clear', times = 3),
              rep('Partly Cloudy', times = 4),
              rep('Cloudy', times = 5),
              rep('Sprinkles', times = 2),
              rep('Showers', times = 3),
              rep('Rain', times = 3),
              rep('Thunderstorms', times = 3),
              'Tornado'
  )

  # Summer ----
  Summer <- c(rep('Clear', times = 3),
              rep('Partly Cloudy', times = 4),
              rep('Cloudy', times = 5),
              rep('Sprinkles', times = 2),
              rep('Showers', times = 3),
              rep('Rain', times = 3),
              rep('Thunderstorms', times = 3),
              'Tornado'
  )

  # Autumn ----
  Autumn <- c(rep('Clear', times = 2),
              rep('Partly Cloudy', times = 3),
              rep('Cloudy', times = 5),
              rep('Sprinkles', times = 2),
              'Rain',
              'Black Ice',
              rep('Sleet', times = 2),
              rep('Flurries', times = 3),
              rep('Snow', times = 4),
              'Heavy Snow'
  )

  # Winter ----
  Winter <- c(rep('Clear', times = 2),
              rep('Partly Cloudy', times = 3),
              rep('Cloudy', times = 5),
              rep('Sprinkles', times = 2),
              'Rain',
              'Black Ice',
              rep('Sleet', times = 2),
              rep('Flurries', times = 3),
              rep('Snow', times = 4),
              'Heavy Snow'
  )

  # Final result ----
  res <- data.frame(rolls, Spring, Summer, Autumn, Winter)
  roll <- sample(1:100, 1)

  msg <- paste0(as.character(res[which(res$rolls >= roll)[1],
                                 which(names(res) == season)]))


  # Temperature
  Temperature <- c('Burning Hot',
                   'Really Hot',
                   rep('Hot', times = 2),
                   rep('Warm', times = 3),
                   rep('Mild', times = 4),
                   rep('Cool', times = 5),
                   rep('Cold', times = 4),
                   rep('Freezing', times = 2),
                   'Really Cold', 'Unbelievably Cold'
  )

  # Wind Speeds
  WindSpeeds <- c(rep('Calm', times = 3),
                  rep('1 mph', times = 2),
                  '2 mph',
                  rep('5 mph', times = 2),
                  '8 mph',
                  rep('10 mph', times = 2),
                  rep('12 mph', times = 2),
                  rep('15 mph', times = 2),
                  '18 mph',
                  '20 mph',
                  '22 mph',
                  '25 mph',
                  '30 mph',
                  '35 mph',
                  '40 mph',
                  '50 mph',
                  '60 mph'
  )

  res2 <- data.frame(rolls, Temperature, WindSpeeds)
  msg2 <- paste(as.character(res2[which(res2$rolls >= roll)[1],
                                  which(names(res2) == 'Temperature')]))
  msg3 <- paste(as.character(res2[which(res2$rolls >= roll)[1],
                                  which(names(res2) == 'WindSpeeds')]))


  paste(season, msg,', ',  'Temperature:', msg2, ', ', 'Wind Speed:', msg3)
}

