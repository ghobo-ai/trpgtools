#' @export
perilous_region <- function(){
  # terrain ----
  terrain <- "Bay
Bluffs
Bog
Cliffs
Desert
Downs
Dunes
Expanse
Fells
Fen
Flats
Foothills
Forest
Groves
Heath
Heights
Hills
Hollows
Jungle
Lake
Lowland
March
Marsh
Meadows
Moor
Morass
Mounds
Mountains
Peaks
Plains
Prairie
Quagmire
Range
Reach
Sands
Savanna
Scarps
Sea
Slough
Sound
Steppe
Swamp
Sweep
Teeth
Thicket
Upland
Wall
Waste
Wasteland
Woods"
  # adjective ----
  adjective <- "Ageless
Ashen
Black
Blessed
Blighted
Blue
Broken
Burning
Cold
Cursed
Dark
Dead
Deadly
Deep
Desolate
Diamond
Dim
Dismal
Dun
Eerie
Endless
Fallen
Far
Fell
Flaming
Forgotten
Forsaken
Frozen
Glittering
Golden
Green
Grim
Holy
Impassable
Jagged
Light
Long
Misty
Perilous
Purple
Red
Savage
Shadowy
Shattered
Shifting
Shining
Silver
White
Wicked
Yellow"
  # noun ----
  noun <- "[Name]*
Ash
Bone
Darkness
Dead
Death
Desolation
Despair
Devil
Doom
Dragon
Fate
Fear
Fire
Fury
Ghost
Giant
God
Gold
Heaven
Hell
Honor
Hope
Horror
King
Life
Light
Lord
Mist
Peril
Queen
Rain
Refuge
Regret
Savior
Shadow
Silver
Skull
Sky
Smoke
Snake
Sorrow
Storm
Sun
Thorn
Thunder
Traitor
Troll
Victory
Witch"
  # together ----
  terrain <- sample(x = strsplit(terrain, "\n")[[1]], 1)
  adjective <- sample(x = strsplit(adjective, "\n")[[1]], 1)
  noun <- sample(x = strsplit(noun, "\n")[[1]], 1)
  type <- sample(1:6, 1)
  switch(EXPR = type,
         "1" = paste(adjective, terrain),
         "2" = paste(terrain, "of (the)", noun),
         "3" = paste("The", terrain, adjective),
         "4" = paste(noun, terrain),
         "5" = paste0(noun, "'s ", adjective, " ", terrain),
         "6" = paste(adjective, terrain, "of the", noun))
}

#' @export
perilous_place <- function(){
  # place ----
  place <- "Barrier
Beach
Bowl
Camp
Cave
Circle
City
Cliff
Crater
Crossing
Crypt
Den
Ditch
Falls
Fence
Field
Fort
Gate
Grove
Hill
Hole
Hut
Keep
Lake
Marsh
Meadow
Mountain
Pit
Post
Ridge
Ring
Rise
Road
Rock
Ruin
Shrine
Spire
Spring
Stone
Tangle
Temple
Throne
Tomb
Tower
Town
Tree
Vale
Valley
Village
Wall"
  # adjective ----
  adjective <- "Ancient
Ashen
Black
Bloody
Blue
Bright
Broken
Burning
Clouded
Copper
Cracked
Dark
Dead
Doomed
Endless
Fallen
Far
Fearsome
Floating
Forbidden
Frozen
Ghostly
Gloomy
Golden
Grim
Hidden
High
Iron
Jagged
Lonely
Lost
Low
Near
Petrified
Red
Screaming
Sharp
Shattered
Shifting
Shining
Shivering
Shrouded
Silver
Stalwart
Stoney
Sunken
Thorny
Thundering
White
Withered"
  # noun ----
  noun <- "[Name]*
Arm
Ash
Blood
Child
Cinder
Corpse
Crystal
Dagger
Death
Demon
Devil
Doom
Eye
Fear
Finger
Fire
Foot
Ghost
Giant
Goblin
God
Gold
Hand
Head
Heart
Hero
Hope
King
Knave
Knight
Muck
Mud
Priest
Queen
Sailor
Silver
Skull
Smoke
Souls
Spear
Spirit
Stone
Sword
Thief
Troll
Warrior
Water
Witch
Wizard"
  # together ----
  place <- sample(x = strsplit(place, "\n")[[1]], 1)
  adjective <- sample(x = strsplit(adjective, "\n")[[1]], 1)
  noun <- sample(x = strsplit(noun, "\n")[[1]], 1)
  type <- sample(1:6, 1)
  switch(EXPR = type,
         "1" = paste("The", place),
         "2" = paste("The", adjective, place),
         "3" = paste("The", place, "of (the)", noun),
         "4" = paste0("The ", noun, "'s ", place),
         "5" = paste(place, "of the", adjective, noun),
         "6" = paste("The", adjective, noun))
}

#' @export
perilous_discovery <- function(){
  res <- sample(1:12, 1)
  if(res == 1) disc <- paste("Unnatural Feature,",
                             perilous_unnatural_feature())
  if(res >= 2 & res <= 4) disc <- paste("Natural Feature,",
                                        perilous_natural_feature())
  if(res == 5 | res == 6) disc <- paste("Evidence,",
                                        perilous_evidence())
  if(res == 7 | res == 8) disc <- paste("Creature")
  #perilous_creature())
  if(res > 8) disc <- paste("Structure,",
                            perilous_structure())
  cat(gsub(pattern = ', ', replacement = '\n', x = disc))
}

#' @export
perilous_steading <- function(dice = sample(1:12, 1)){
  tab <- c(rep('Village', 5),
           rep('Town', 3),
           rep('Keep', 3),
           'City')
  paste('Steading:', tab[dice])
}
