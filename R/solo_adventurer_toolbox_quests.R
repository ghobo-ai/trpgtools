#' @export
toolbox_quest_problem <- function(){
  # Wall of text ----
  raw <- "Unjust killing
Crime committed, criminal disappeared
Item lost
Tyrant(s) threaten town / business / population (monster / humanoid)
Environmental disturbance / Strange Weather / Infestation / Plague
Magical chaos / Curse
Kidnapping / Hostage situation
Adventurer left some time ago, but is lost
Something is rumoured, but undiscovered (Artefact, legendary place)
Riches rumoured within secure, guarded place
Invasion
Person suspected of something
Important item / message / person needs transporting
Nefarious / dangerous item being transported
Dangerous item exposed / up for grabs
Corrupt noble
Commodity shortage (goods, workforce)
Mystery unresolved
Adventurer thrown into life-threatening situation (environmental or otherwise)
Worthy creature life threatened (humanoid / animal / monster)
Execution of innocent party planned
Siege (anything from a small party of goblins surrounding a farmhouse to an army of Imperial Blades surrounding a city!)
Huge battle about to erupt
Spiritually beneficial place rumoured
Foolish individual committed innocent blunder"
  # Processing ----
  raw <- strsplit(x = raw, split = '\n')[[1]]
  sample(raw, 1)
}

#' @export
toolbox_quest_task <- function(){
  # Wall of text ----
  raw <- "Revenge
Apprehend / Bounty Hunt
Retrieval
Repel / Sabotage / Deceive / Extort / Entrap
Investigate / Solve
Investigate / Lift curse / destroy magic
Rescue / Recover
Rescue
Explore / Discover
Loot
Repel / Divert
Spy / Gather Information
Transport / smuggle / escort
Waylay / hijack
find / destroy
Investigate / implicate / incriminate / expose
Tranport supplies
research / explore / decode
survive
protect, eliminate threat
prevent
break
negotiate / prepare / mediate / participate
visit / gain boon
PC hired to conceal evidence / return item / placate"
  # Processing ----
  raw <- strsplit(x = raw, split = '\n')[[1]]
  sample(raw, 1)
}

#' @export
toolbox_quest_source <- function(){
  # Wall of text ----
  raw <- "Notice board
NPC
Tavern rumour
Stumble into situation
Guild affiliate
Fellow adventurer
Mysterious scroll with info on it
Hidden piece of paper inside a basic reward / purchase a pc makes
Treasure map
Found journal, owner missing
Partial map
Inheritance, be it a place, an item or a title.
Geas or Quest spell
Unholy visions
A lost map or letter found
Sent on mission by friend or relative
A dream
Local temple gives you the quest
Rumour picked at a guard station
Merchant's guild / merchants
noble family entrusts you
Event sparks a memory
Divine inspiration
Overheard conversation
Passing traveller
Entrusted with delivering a parcel. Something compels you to peek inside.
Herald makes proclamation in market square.
Orders from high command, guild or society.
Note on dead creature.
You awake with a map tattooed on you.
Natural disaster reveals something.
A friend has died as a result of this situation, you must avenge!"
  # Processing ----
  raw <- strsplit(x = raw, split = '\n')[[1]]
  sample(raw, 1)
}

#' @export
toolbox_quest <- function(){
  print(paste("Something interesting has happened:", toolbox_quest_problem()))
  print(paste("You got to know of it through", toolbox_quest_source()))
  print(paste('The task you must accomplish is', toolbox_quest_task()))
}
