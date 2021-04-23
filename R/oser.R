# Stuff from CDD4 Old School Essentials Reference
# TODO: Encounter tables + Creature/Treasure generator
# Powers generator

# Delving Deeper Magic (Sword) Weapon
#' @export
dd_magic_weapon <- function (){
  item <- ""
  roll = sample(1:100,1)
  if (roll <= 7){item <- "-2 atk, Cursed"}
  else if (roll >= 8 && roll <= 30){item <- "+1"}
  else if (roll >= 31 && roll <= 35){item <- "+2 vs Humanoid"}
  else if (roll >= 36 && roll <= 40){item <- "+2 vs Lycanthropes"}
  else if (roll >= 41 && roll <= 45){item <- "+2 vs Magical"}
  else if (roll >= 46 && roll <= 50){item <- "+3 vs Giants"}
  else if (roll >= 51 && roll <= 55){item <- "+3 vs Golems"}
  else if (roll >= 56 && roll <= 60){item <- "+3 vs Regenerating"}
  else if (roll >= 61 && roll <= 65){item <- "+3 vs Dragons"}
  else if (roll >= 66 && roll <= 70){item <- "+1, Flametongue"}
  else if (roll >= 71 && roll <= 75){item <- "+1, Frostbrand"}
  else if (roll >= 76 && roll <= 80){item <- "+2"}
  else if (roll >= 81 && roll <= 85){item <- "+3"}
  else if (roll >= 86 && roll <= 90){item <- "+2, Holy"}
  else if (roll >= 91 && roll <= 95){item <- "+2, Unholy"}
  else if (roll >= 96 && roll <= 100){item <- "+2, Vorpal"}
  else {item <- "None"}

  #Weapon Intelligence
  nPow = 0
  ePow = 1
  intel = ""

  rolle <- sample(2:12,1)
  if(rolle <= 6){
    intel<-"Unintelligent"
    nPow <- 0
  }
  if (rolle == 7){
    intel <- "Emphatic"
    nPow <- 1
  }
  if (rolle == 8){
    intel <- "Emphatic"
    nPow <- 2
  }
  if (rolle == 9){
    intel <- "Verbal"
    nPow <- 3
  }
  if (rolle == 10){
    intel <- "Verbal"
    nPow <- 3
  }
  if (rolle == 11){
    intel <- "Read Magic"
    nPow <- 3
  }
  if (rolle == 12){
    intel <- "Telepathic"
    nPow <- 3
    ePow <- 1
  }

  #Weapon Languages
  comms <- ""
  lNum <- 0
  pwrs <- ""
  ePwrs <- ""
  dominance <- 0
  purpose <- ""
  alignm <- ""

  if(rolle > 6){
      rolle1 <- sample(2:12,1)
      if(rolle1 <= 8){
        lNum <- 1
        comms <-"+1 Language"
      }
      if (rolle1 == 9){
        lNum <- 2
        comms <- "+2 Languages"
      }
      if (rolle1 == 10){
        lNum <- 3
        comms <- "+3 Languages"
      }
      if (rolle1 == 11){
        lNum <- 4
        comms <- "+4 Languages"
      }
      if (rolle1 == 12){
        lNum <- sample(1:20,1)
        comms <- paste("+",lNum," languages", sep = "")
      }

      # Weapon Alignment
      alignm <- ""

      aligs <- c("Chaotic","Neutral","Neutral", "Lawful", "Lawful")
      alignm <- sample(aligs,1)

      # Ego
      ego <- 1+ lNum + ePow + nPow

      # Powers
      pwrs <- ""
      ePwrs <- ""

      for(n in 1:nPow){
        rolle3 <- sample(2:12, 1)
        if(rolle3 == 2){nPow <- nPow +1}
        if(rolle3 == 3){pwrs <- paste(pwrs, "Detect gems/jewelry,")}
        if(rolle3 == 4){pwrs <-paste(pwrs, "Detect traps,")}
        if(rolle3 == 5){pwrs <-paste(pwrs, "Detect gold,")}
        if(rolle3 == 6){pwrs <-paste(pwrs, "Detect evil/good,")}
        if(rolle3 == 7){pwrs <-paste(pwrs, "Detect shifting stonework,")}
        if(rolle3 == 8){pwrs <-paste(pwrs, "Detect silver,")}
        if(rolle3 == 9){pwrs <-paste(pwrs, "Detect secret doors,")}
        if(rolle3 == 10){pwrs <-paste(pwrs, "Detect invisible objects,")}
        if(rolle3 == 11){pwrs <-paste(pwrs, "Detect magic,")}
        if(rolle3 == 12){ePow +1}
      }

      if (ePow >0){
        for(m in 1:ePow){
          rolle3 <- sample(3:18, 1)
          if(rolle3 == 3){ePow <- ePow +1}
          if(rolle3 == 4){ePow <- ePow +1}
          if(rolle3 == 5){ePwrs <- paste(ePwrs, "Teleport,")}
          if(rolle3 == 6){ePwrs <- paste(ePwrs, "Telekinesis,")}
          if(rolle3 == 7){ePwrs <- paste(ePwrs, "Regeneration (1 HP per turn, 6 per day),")}
          if(rolle3 == 8){ePwrs <- paste(ePwrs, "Charm Person,")}
          if(rolle3 == 9){ePwrs <- paste(ePwrs, "Knock,")}
          if(rolle3 == 10){ePwrs <- paste(ePwrs, "Sixth Sense,")}
          if(rolle3 == 11){ePwrs <- paste(ePwrs, "Levitate,")}
          if(rolle3 == 12){ePwrs <- paste(ePwrs, "Phantasm,")}
          if(rolle3 == 13){ePwrs <- paste(ePwrs, "X-ray Vision (ring),")}
          if(rolle3 == 14){ePwrs <- paste(ePwrs, "Fly,")}
          if(rolle3 == 15){ePwrs <- paste(ePwrs, "Giant's Strength (potion),")}
          if(rolle3 == 16){ePwrs <- paste(ePwrs, "Life Stealing,")}
          if(rolle3 == 17){ePwrs <- paste(ePwrs, "Wishes (ring),")}
          if(rolle3 == 18){ePwrs <- paste(ePwrs, "Wishes (ring),")}
        }
      }

      #Purpose
      purpose <- ""

      if (rolle >= 9 && ego >= 9){
        rolle <- 12
        ego <- 12

        rolle4 <- sample(2:12,1)
        if(rolle4 == 2){purpose <- "Slay golems"}
        if(rolle4 == 3){purpose <- "Slay elementals"}
        if(rolle4 == 4){purpose <- "Slay giants"}
        if(rolle4 == 5){purpose <- "Slay Magic Users"}
        if(rolle4 == 6){purpose <- "Slay Fighters"}
        if(rolle4 == 7){purpose <- "Defeat (Ig)Noble House members"}
        if(rolle4 == 8){purpose <- "Slay undead"}
        if(rolle4 == 9){purpose <- "Slay lycanthropes"}
        if(rolle4 == 10){purpose <- "Slay anti-clerics"}
        if(rolle4 == 11){purpose <- "Slay dragons"}
        if(rolle4 == 12){purpose <- "Slay gothrogs"}

        if (rolle4 == 10 && alignm == "Chaotic"){purpose <- "Slay clerics"}
        if (rolle4 == 10 && alignm == "Neutral"){purpose <- "Slay clerics & anti clerics"}

        if (alignm == "Lawful"){purpose <- paste(purpose, "- Paralyze purposed foe on fail VS petrification")}
        if (alignm == "Neutral"){purpose <- paste(purpose, "- Feeblemind purposed foe on fail VS spells, confuse if in combat")}
        if (alignm == "Chaotic"){purpose <- paste(purpose, "- Slays purposed foe on fail VS poison")}

      }

      dominance <- rolle + ego

  }


  item <- paste(item,":", "Intelligence:", intel, alignm ,comms,"Powers:", pwrs, ePwrs,"Purpose:", purpose, "Dominance:", dominance)
  return (item)

}

# Delving Deeper Staves & Wands
#' @export
dd_wand <- function (){
  item <- ""
  roll = sample(1:100,1)
  if (roll <= 5){item <- "Cleric's Serpent Staff"}
  else if (roll >= 6 && roll <= 10){item <- "Cleric's Staff of Healing"}
  else if (roll >= 11 && roll <= 15){item <- "Staff of Mastery"}
  else if (roll >= 16 && roll <= 20){item <- "Wizard's Staff of Power"}
  else if (roll >= 21 && roll <= 25){item <- "Staff of Smiting"}
  else if (roll >= 26 && roll <= 30){item <- "Wizard's of Sorcery"}
  else if (roll >= 31 && roll <= 35){item <- "Staff of Wasting"}
  else if (roll >= 36 && roll <= 40){item <- "Wand of Cancellation"}
  else if (roll >= 41 && roll <= 45){item <- "Wand of Detecting Enemies"}
  else if (roll >= 46 && roll <= 50){item <- "Wand of Detecting Magic"}
  else if (roll >= 51 && roll <= 55){item <- "Wand of Detecting Metal"}
  else if (roll >= 56 && roll <= 60){item <- "Wand of Detecting Secrets"}
  else if (roll >= 61 && roll <= 65){item <- "Wand of Detecting Traps"}
  else if (roll >= 66 && roll <= 70){item <- "Wand of Fear"}
  else if (roll >= 71 && roll <= 75){item <- "Wand of Fireball"}
  else if (roll >= 76 && roll <= 80){item <- "Wand of Ice"}
  else if (roll >= 81 && roll <= 85){item <- "Wand of Lightning Bolt"}
  else if (roll >= 86 && roll <= 90){item <- "Wand of Paralysis"}
  else if (roll >= 91 && roll <= 95){item <- "Wand of Phantasm"}
  else if (roll >= 96 && roll <= 100){item <- "Wand of Polymorph"}
  else {item <- "None"}
  return (item)
}

# Delving Deeper Spell books and Scrolls
#' @export
dd_scroll <- function (){
  item <- ""
  roll = sample(1:100,1)
  if (roll <= 8){item <- "Scroll, cursed (invoker & creatures in 15 ft)"}
  else if (roll >= 9 && roll <= 19){item <- "Scroll, 1 spell"}
  else if (roll >= 20 && roll <= 29){item <- "Scroll, 2 spells"}
  else if (roll >= 30 && roll <= 38){item <- "Scroll, 3 spells"}
  else if (roll >= 39 && roll <= 46){item <- "Spellbook, 1st-2nd"}
  else if (roll >= 47 && roll <= 53){item <- "Spellbook, 1st-4th"}
  else if (roll >= 54 && roll <= 60){item <- "Spellbook, 1st-6th"}
  else if (roll >= 61 && roll <= 68){item <- "Ward against Elementals"}
  else if (roll >= 69 && roll <= 76){item <- "Ward against Lycanthropes"}
  else if (roll >= 77 && roll <= 84){item <- "Ward against Golems"}
  else if (roll >= 85 && roll <= 92){item <- "Ward against Undead"}
  else if (roll >= 93 && roll <= 100){item <- "Ward against Magic"}
  else {item <- "None"}

  if(roll >8 && roll<=60){
    rolle <- sample(1:6,1)
    if(rolle <=4){item <- paste("Magic User's",item)}
    if(rolle == 5){item <- paste("Cleric's", item)}
    if(rolle == 6){item <- paste("Anti-cleric's", item)}
  }

  if (roll <=8){
    curses <- c(
      "Turned to Stone",
      "Feebleminded",
      "Powerful Monster Conjured to Stalk Reader",
      "Prime Requisite -3",
      "All gold touched or carried turns to lead",
      "All saving throws penalized by -2",
      "All monster reactions are hostile",
      "Blinded",
      "Disease contracted, fatal within 24 hrs",
      "Polymorphed into harmless creature",
      "Fall into permanent sleep"
    )
    theCurse <- sample(curses,1)
    item <- paste(item, ":", theCurse)
  }

  return (item)
}

# Delving Deeper Rings
#' @export
dd_ring <- function (){
  item <- ""
  roll = sample(1:100,1)
  if (roll <= 7){item <- "Animal Mastery"}
  else if (roll >= 8 && roll <= 14){item <- "Darkvision"}
  else if (roll >= 15 && roll <= 23){item <- "Deception"}
  else if (roll >= 24 && roll <= 30){item <- "Invisibility"}
  else if (roll >= 31 && roll <= 37){item <- "Mastery Over Men"}
  else if (roll >= 38 && roll <= 46){item <- "Protection"}
  else if (roll >= 47 && roll <= 53){item <- "Regeneration"}
  else if (roll >= 54 && roll <= 60){item <- "Resistance to Fire"}
  else if (roll >= 61 && roll <= 63){item <- "Spell Storing"}
  else if (roll >= 64 && roll <= 66){item <- "Spell Turning"}
  else if (roll >= 67 && roll <= 69){item <- "Telekinesis"}
  else if (roll >= 70 && roll <= 72){item <- "The Djinn"}
  else if (roll >= 73 && roll <= 81){item <- "Water Walking"}
  else if (roll >= 82 && roll <= 88){item <- "Weariness"}
  else if (roll >= 89 && roll <= 97){item <- "Wishes"}
  else if (roll >= 98 && roll <= 100){item <- "X-ray Vision"}
  else {item <- "None"}
  return (paste("Ring of", item))
}

# Delving Deeper Potion Generator
#' @export
dd_potion <- function (){
  item <- ""
  roll = sample(1:100,1)
  if (roll <= 4){item <- "Abbreviation"}
  else if (roll >= 5 && roll <= 8){item <- "Animal Mastery"}
  else if (roll >= 9 && roll <= 12){item <- "Curing"}
  else if (roll >= 13 && roll <= 16){item <- "Deception"}
  else if (roll >= 17 && roll <= 19){item <- "Dragon Mastery"}
  else if (roll >= 20 && roll <= 23){item <- "Exaggeration"}
  else if (roll >= 24 && roll <= 27){item <- "Extra Curing"}
  else if (roll >= 28 && roll <= 31){item <- "Flight"}
  else if (roll >= 32 && roll <= 35){item <- "Gaseous Form"}
  else if (roll >= 36 && roll <= 38){item <- "Giant Mastery"}
  else if (roll >= 39 && roll <= 42){item <- "Giant's Strength"}
  else if (roll >= 43 && roll <= 46){item <- "Haste"}
  else if (roll >= 47 && roll <= 49){item <- "Heroism"}
  else if (roll >= 50 && roll <= 53){item <- "Inviolability"}
  else if (roll >= 54 && roll <= 57){item <- "Invisibility"}
  else if (roll >= 58 && roll <= 60){item <- "Mastery Over Men"}
  else if (roll >= 61 && roll <= 63){item <- "Plant Mastery"}
  else if (roll >= 64 && roll <= 67){item <- "Poison"}
  else if (roll >= 68 && roll <= 71){item <- "Polymorph"}
  else if (roll >= 72 && roll <= 75){item <- "Resistance to Fire"}
  else if (roll >= 76 && roll <= 79){item <- "Sixth Sense"}
  else if (roll >= 80 && roll <= 82){item <- "Treasure Detection"}
  else if (roll >= 83 && roll <= 85){item <- "Undead Mastery"}
  else if (roll >= 86 && roll <= 89){item <- "Water Breathing"}
  else if (roll >= 90 && roll <= 93){item <- "Weightlessness"}
  else if (roll >= 94 && roll <= 97){item <- "X-ray vision"}
  else if (roll >= 98 && roll <= 100){item <- "Youthfulness"}
  else {item <- "None"}
  return (paste("Potion of", item))
}

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
dd_magic_item <- function (banned = ""){
  item <- ""

  if (banned == "weapons"){
    roll = sample(1:100,1)
    if (roll <= 15){item <- dd_magic_armor()}
    else if (roll >= 16 && roll <= 25){item <- dd_magic_misc()}
    else if (roll >= 26 && roll <= 35){item <- dd_potion()}
    else if (roll >= 36 && roll <= 50){item <- dd_potion()}
    else if (roll >= 51 && roll <= 55){item <- dd_ring()}
    else if (roll >= 56 && roll <= 70){item <- dd_wand()}
    else if (roll >= 71 && roll <= 80){item <- dd_scroll()}
    else if (roll >= 81 && roll <= 100){item <- dd_magic_misc()}
    else {item <- "None"}
  }

  else if (banned == "NOT_Weapon_Armor"){
    roll = sample(1:100,1)
    if (roll <= 50){item <- dd_magic_armor()}
    else if (roll >= 51 && roll <= 80){item <- paste(dd_misc_weapon(), dd_magic_weapon())}
    else if (roll >= 81 && roll <= 100){item <- paste("Sword", dd_magic_weapon())}
    else {item <- "None"}
  }

  else{
    roll = sample(1:100,1)
    if (roll <= 15){item <- dd_magic_armor()}
    else if (roll >= 16 && roll <= 25){item <- dd_magic_misc()}
    else if (roll >= 26 && roll <= 35){item <- paste(dd_misc_weapon(), dd_magic_weapon())}
    else if (roll >= 36 && roll <= 50){item <- dd_potion()}
    else if (roll >= 51 && roll <= 55){item <- dd_ring()}
    else if (roll >= 56 && roll <= 70){item <- dd_wand()}
    else if (roll >= 71 && roll <= 80){item <- dd_scroll()}
    else if (roll >= 81 && roll <= 100){item <- paste("Sword", dd_magic_weapon())}
    else {item <- "None"}
  }
  print(paste("Delving Depper Magic Item:", item))
  return(paste(item, ", ", sep = ""))
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
    if(roll <= 30){
      msg <- paste(msg, as.character(mitem), "magic items")
      for (n in 1:mitem){
        msg <- paste (msg, dd_magic_item())
      }
      }



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
    if(roll <= 10){
      msg <- paste(msg, as.character(mitem), "magic weapon or armour suit")
      for (n in 1:mitem){
        msg <- paste (msg, dd_magic_item(banned="NOT_Weapon_Armor"))
      }

      }



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
    if(roll <= 10){
      msg <- paste(msg, as.character(mitem), "magic items")
      for (n in 1:mitem){
        msg <- paste (msg, dd_magic_item())
      }
    }



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
    if(roll <= 15){
      msg <- paste(msg, as.character(mitem), "magic items + 1 potion")
      for (n in 1:mitem){
        msg <- paste (msg, dd_magic_item())
      }
      msg <- paste(msg, dd_potion())
    }





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
    if(roll <= 25){
      msg <- paste(msg, as.character(mitem), "magic items + 1 scroll")
      for (n in 1:mitem){
        msg <- paste (msg, dd_magic_item())
      }
      msg <- paste (msg, dd_scroll())

      }

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
    if(roll <= 30){

      msg <- paste(msg, as.character(mitem), "non-weapon magic items + 1 scroll")
      for (n in 1:mitem){
        msg <- paste (msg, dd_magic_item(banned = "weapons"))
        msg <- paste (msg, dd_scroll())
      }

      }




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
    if(roll <= 35){
      msg <- paste(msg, as.character(mitem), "magic items + 1 scroll")
      for (n in 1:mitem){
        msg <- paste (msg, dd_magic_item())
      }
      msg <- paste (msg, dd_scroll())

      }

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
    if(roll <= 30){

      msg <- paste(msg, as.character(mitem), "magic items + 1 potion & scroll")
      for (n in 1:mitem){
        msg <- paste (msg, dd_magic_item())
      }
      msg <- paste (msg, dd_potion())
      msg <- paste (msg, dd_scroll())

      }



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
    if(roll <= 15){

      msg <- paste(msg, as.character(mitem), "magic items + 1 scroll")
      for (n in 1:mitem){
        msg <- paste (msg, dd_magic_item())
      }
      msg <- paste(msg, dd_scroll())

      }




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
    if(roll <= 40){
      msg <- paste(msg, as.character(gems), "potions.")
      for (n in 1:gems){ msg <- paste (msg, dd_potion())}
    }else{

      msg <- paste (msg, gems, "empty potion flasks")
    }


  }
  else if (taip == "O"){
    #Pre-generate potential loot
    gems <- sample(1:4, 1)

    #Determine if loot found
    msg <- paste("Treasure", taip, ":")
    roll <- sample(1:100, 1)
    if(roll <= 50){
      msg <- paste(msg, as.character(gems), "scrolls.")
      for (n in 1:gems){
        msg <- paste (msg, dd_scroll())
      }

      }


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
    if(roll <= 2){
      msg <- paste(msg, as.character(mitem), "magic item")
      msg <- paste (msg, dd_magic_item())

      }

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
    if(roll <= 5){
      msg <- paste(msg, as.character(mitem), "magic item")
      msg <- paste (msg, dd_magic_item())
      }
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

