#' @export
toolbox_encounter_wilderness <- function(){
  # Wall of teeeeext ----
  raw <- "Small dungeon or crypt found. Purpose and history unknown.
Small dungeon or crypt found. Purpose and history unknown.
Small dungeon or crypt found. Purpose and history unknown.
Small dungeon or crypt found. Purpose and history unknown.
Ready-made camp found, or cosy cave, that could potentially be used as shelter for the night, or a base while exploring. Inhabited?
A small creek, babbling pleasantly. Or a large crack, bubbling pungently.
A storm on the horizon, lightning dancing underneath dark grey clouds.
A sinkhole has opened up nearby.
Abandoned, empty town.
Abandoned campsite found. Use Q/A rolls to find out more.
A tree with what looks like Druid markings.
You find survivors of some sort of attack, and they have a tale to tell...
On the road, a dropped item. A backpack, a purse with interesting contents / a hat with a note tucked inside / an engraved ring... could be anything.
Interesting traveller. This character has obviously seen some things...
NPC met, who gives PC information about possible quest.
NPC met, who gives PC information about possible quest.
NPC met, who gives PC information about possible quest.
NPC met, who gives PC information about possible quest.
NPC met, who gives PC information about possible quest.
Plundered barrow / burial mound. But did they get everything? And what still waits there? (50% mostly empty)
Cemetery. Some of the graves have been looted, and most of the tombstones are so old that the names have worn off.
Prisoner(s) being escorted in a heavily-armoured cart.
Interesting geological feature. Use Q/A mechanic to find out what.
You find a discarded backpack with some intriguing contents.
An odd noise is coming from some distance ahead...
Strange lights in the nearby hills are attracting your attention.
You stumble across an orchard, filled with ripe and delicious fruit. The owner is nowhere in sight.
Sudden and abrupt change in weather
Abandoned mine, dwarven or otherwise.
You hear howling in the distance. It could be wolves, but the sound is strange somehow...
Humanoid corpse. 25% you find a clue (see Clue table in Chapter 9).
A royal/noble personage and their entourage passes in an opulent carriage.
A flock of birds (vultures? ravens?) circles over a point somewhere overhead
You find an old, ruined monument. Is it to a god, a famous local figure, or something else?
A traveller with information/warning about a situation in the next settlement.
Unmarked settlement: town/village/hamlet. Human?
You find an injured beast
Overturned/broken-down cart. Is it attended?
An animal wanders across your path. It glances up at you but does not seem particularly bothered by your presence.
Bounty hunters, searching for a fugitive. (Who they are working for is unclear)
A traveller with information/warning about a situation in the next settlement.
You reach a bridge over a small river. The bridge is washed out. Travellers are waiting here, unsure what to do.
A farmer invites you into his house for a meal, and possibly some of his home brew ale/mead as well.
Monster ambush. Easy encounter.
Monster ambush. Easy encounter.
Monster ambush. Easy encounter.
Monster ambush. Easy encounter.
Monster ambush. Easy encounter.
Trapped creature (humanoid? monster? What type of trap?)
An abandoned/ruined structure of some kind, which may or may not have a subterranean component.
An abandoned/ruined structure of some kind, which may or may not have a subterranean component.
An abandoned/ruined structure of some kind, which may or may not have a subterranean component.
An old hermit. What is he babbling about?
A creepy and unsettling token/sign.
Traveling merchant
A traveling adventurer who is impressed and wants to join your party.
A traveller, resting by the side of the road, begins pointing and laughing uproariously at you. Is she mad?
Heavily-guarded transport passes.
Travelling sage/archivist
Bandits (human or otherwise) demand a toll from you.
Monster: Level appropriate hard encounter.
Monster: Level appropriate hard encounter.
Monster: Level appropriate hard encounter.
Monster: Level appropriate hard encounter.
Monster: Level appropriate hard encounter.
Monster: Level appropriate hard encounter.
A starving family begging for food or gold
Monster Encounter: Level-appropriate medium encounter.
Monster Encounter: Level-appropriate medium encounter.
Monster Encounter: Level-appropriate medium encounter.
Monster Encounter: Level-appropriate medium encounter.
Monster Encounter: Level-appropriate medium encounter.
Monster Encounter: Level-appropriate medium encounter.
A tribe who owns the land demands a tribute from you for passage (and in return will escort you through, whether you like it or not).
A travelling troupe of performers (80% Friendly)
A travelling merchant, but his wares are not the ordinary. Indeed, much of it is illegal in some way. Is he a smuggler? A drug dealer? A heist thief?
Hunters/travellers/adventurers. Camped up and relaxing.
You see a low rocky hill, where faces have been carved into the rocks, along with the shapes of various beasts. It is artfully done, and seems to tell some sort of story.
Bandits waylay you and demand all your money
A long-forgotten battlefield. How many died here?
You see a track leading away from the road and into the forest/hills. Who knows where it leads...
On a lonely stretch of road, you see a lone cabin, but cannot tell if it is inhabited or not.
A tower, visible off the road some distance.
Patrol from the nearest settlement
Unmarked settlement
The road disappears and the place looks nothing like on the map.
NPC appears with quest.
NPC appears with quest.
NPC appears with quest.
NPC appears with quest.
Monster! Level-appropriate encounter. 1-3: Hard, 4: Deadly
Monster! Level-appropriate encounter. 1-3: Hard, 4: Deadly
Monster! Level-appropriate encounter. 1-3: Hard, 4: Deadly
Monster! Level-appropriate encounter. 1-3: Hard, 4: Deadly
Monster! Level-appropriate encounter. 1-3: Hard, 4: Deadly
Monster! Level-appropriate encounter. 1-3: Hard, 4: Deadly"
  # Processing ----
  raw <- strsplit(x = raw, split = '\n')[[1]]
  sample(raw, 1)
}

#' @export
toolbox_encounter_urban <- function(){
  # Wall of teeeeext ----
  raw <- "You witness a crime and they have a chance to stop the criminal. If you do, you win the favor of the local constabulary. If you try to but fail, the guard gives you an opportunity to help track down the criminal. If you do nothing, you must convince the guard you are not an accomplice.
Stampede of pigs
A cry rings out through the town. An army is massing outside the gates!. Are they human, orc, mind flayer? You had better go and find out, or flee right now!
A mysterious hooded beggar conspicuously ducks into an alley as they walk by, they appeared to have a disfigurement. Perhaps they were just trying to hide from people.
A shady figure beckons from an alley. They have wondrous items for sale, they say.
Two men are arguing about something. One turns to a PC and asks their opinion. Could be literally anything at all, and could result in combat, a job, or just more arguing.
A card shark/con artist is busking in the street, a large crowd gathers.
A guided tour proceeds past, as the guide drops a particularly tasty snippet of local knowledge which the PC was unaware of.
Two old ladies, witches of some sort by the look of them, beg you to take a creature off their hands.
Quest board with rewards for deeds done. Someone has rats in their cellar, missing townsperson in the woods neaby, simple things (or complex!) that give you little things to do that keep you exploring the city, making contacts, and earning gold/interesting items.
Two local thugs are strong arming a merchant for gold. You can help the merchant, but doing so annoys the local gang. Variation: The merchant is a thief, and the thugs are trying to recover their stolen money.
You notice a group of villagers attempting to put out a nearby house fire. This looks like it could easily spread to neighbouring houses, possibly affecting the whole town.
A peddler attempts to sell you a trinket or minor magic item.
A giant rat crawls out of a storm drain and gets into a fight with a dog.
Minor earthquake shakes things up and in the ensuing panic looters take advantage. Does the party join them, or stop them?
Merchant asking for help stopping local children with slingshots.
A young urchin is in an ally, cornered by either thugs or stray dogs.
Street is having a block party tomorrow and need help setting up.
Someone sentenced to death: You happen across the hanging/beheading scene before it concludes, what do you do?
Monster: Level appropriate easy encounter
Monster: Level appropriate easy encounter
Monster: Level appropriate easy encounter
Monster: Level appropriate easy encounter
Monster: Level appropriate easy encounter
Monster: Level appropriate easy encounter
A con man is selling jewels and rare components that you might need.
A chamber pot is emptied from above. Make a DC 13 dex save to avoid. If unsuccessful, you disadvantage all charisma and stealth related rolls until you have a bath and change clothes. (Optional: make a con save vs filth fever).
A scrap of paper is pressed into your hand by a young man, who looks at you
desperately before turning and running away. You turn over the note and read it. It is asking for your help.
A member of the local guard asks you what your business is in town.
You feel your arms being grabbed. The local guard apprehend you, accusing you of stealing jewels belonging to a noble/royal. Searching your clothes, and/or bag, they successfully turn up the jewels in question. You, however, have never seen them before.
A lady or a young man on a balcony blows you a kiss and then runs away.
A beggar crouches in a dark corner, clearly diseased.
Someone mistakes you for a mercenary, famous performer, or an old friend. They have face blindness.
A bard strikes up a song and starts following you around.
A beggar notices the group and offers to guide them around in exchange for coin.
Bar fight bursts out into the street and may involve the PC.
Propositioned. Person of the night propositions a player. But they may not be all they seem...
A drunkard sees you and mistakes them for friends or enemies or perhaps throws up on you.
A person who claims to be a fan of the PC begins to follow them around
Snake Oil Salesman has gathered a crowd, and has actors in the group to fool people into buying worthless potions. Bonus: they're not worthless, but definitely not as advertised. A healing potion that's really gaseous form? Make Q/A rolls to determine results.
Group of smugglers coming out of a sewer grate with a crate of goods.
An old female fortune teller beckons to you from her tent.
A man tumbles out a tavern window. He is fully dressed in noblemans garb. A female half-orc jumps out after him, letting out a warcry as he gets up and runs for his life screaming for help. Do you help her and run him down or do you get in her way? Possible: No matter who you help they both begin attacking you!
A street dog runs past with a human hand in its mouth - wearing a large, very obvious jeweled ring. Dog chase or find out what happened to the owner of the
ring (and hand).
A horse is spooked and charges through the streets. whether it is dragging a wagon or just a rider, it is panicked and needs to be stopped.
You find a map, discarded, on the street, or just a fragment of one, which arouses your curiosity. It shows a ruin, and there is a sketch of an artifact. Magical? Perhaps a local mage could help you decode this...
A drunk just wakes up nearby, complaining his belongings are gone.
You stop to listen to a talented storyteller relate a story about a famous adventurer and his beast companion. Part of the story is unresolved, however, and gets you thinking...
You feel a thwack in the side of your head, and turn to see that a bunch of drunk young nobles are pelting passers by with rotten vegetables, laughing as they do so!
Monster: Level appropriate medium encounter.
Monster: Level appropriate medium encounter.
Monster: Level appropriate medium encounter.
Monster: Level appropriate medium encounter.
Monster: Level appropriate medium encounter.
Monster: Level appropriate medium encounter.
Your sharp eye spots a pickpocket deftly relieve a noblewoman of an expensive necklace.
A wizard is carrying a bagful of potions when suddenly the bag rips (perhaps it catches on a nail sticking out of a building, or it catches on a passing cart) and several potions drop out and smash on the ground, exploding with various dramatic effects.
A jeweller emerges from his shop, screaming that he has been robbed by dwarves. A nearby dwarf asks him for proof, but all he has to say is that dwarves love gems.
A female priest is castigating a businesswoman who has set up her wares before the temple (of Lathander, perhaps? Any good-aligned god). Except this business is no ordinary business, a female slaver is parading her wares, selling slaves to whoever is buying.
Something occurs, or you find something, that requires a (roll d10) 1: acrobatics / dex check or save, 2: strength or athletics check, 3: stealth check, 4: con check or save, 5: int check, 6: investigation check, 7: arcana check, 8: history check, 9: nature check, 10: religion check. Use Q/A rolls or Story Element Interaction tables (chapter 14) to find out what.
Something occurs, or you find something, that requires a (roll d10) 1: acrobatics / dex check or save, 2: strength or athletics check, 3: stealth check, 4: con check or save, 5: int check, 6: investigation check, 7: arcana check, 8: history check, 9: nature check, 10: religion check. Use Q/A rolls or Story Element Interaction tables (chapter 14) to find out what.
Something occurs, or you find something, that requires a (roll d10) 1: acrobatics / dex check or save, 2: strength or athletics check, 3: stealth check, 4: con check or save, 5: int check, 6: investigation check, 7: arcana check, 8: history check, 9: nature check, 10: religion check. Use Q/A rolls or Story Element Interaction tables (chapter 14) to find out what.
Something occurs, or you find something, that requires a (roll d10), 1: animal handling check, 2: insight check, 3: survival check, 4: medicine check 5: perception check, 6: persuasion check, 7: performance check, 8: deception check, 9: inimidation check, 10: charisma check. Use Q/A roll or Story Element Interaction tables (chapter 14) to find out what.
Something occurs, or you find something, that requires a (roll d10), 1: animal handling check, 2: insight check, 3: survival check, 4: medicine check 5: perception check, 6: persuasion check, 7: performance check, 8: deception check, 9: inimidation check, 10: charisma check. Use Q/A roll or Story Element Interaction tables (chapter 14) to find out what.
Something occurs, or you find something, that requires a (roll d10), 1: animal handling check, 2: insight check, 3: survival check, 4: medicine check 5: perception check, 6: persuasion check, 7: performance check, 8: deception check, 9: inimidation check, 10: charisma check. Use Q/A roll or Story Element Interaction tables (chapter 14) to find out what.
NPC met, who gives PC information about possible quest.
NPC met, who gives PC information about possible quest.
NPC met, who gives PC information about possible quest.
NPC met, who gives PC information about possible quest.
Monster: Level-appropriate hard encounter. Monster on the loose, marauding through the streets.
Monster: Level-appropriate hard encounter. Monster on the loose, marauding through the streets.
Monster: Level-appropriate hard encounter. Monster on the loose, marauding through the streets.
Monster: Level-appropriate hard encounter. Monster on the loose, marauding through the streets.
Monster: Level-appropriate hard encounter. Monster on the loose, marauding through the streets.
Monster: Level-appropriate hard encounter. Monster on the loose, marauding through the streets.
You are stopped by the local guard who want to congratulate you on your recent successful quest. How do they know?
PC hears a rumour about a job that a local priest might have. Apparently, or so the rumour goes, something is going on in the sacred catacombs beneath the streets.
You pass a house which is all boarded up, the gates locked. A passerby informs you that this is the house of a local nobleman who has not been seen in years.
You see a dice game going on in an alley off the street you are walking down.
A cleric stands atop a box on the roadside, spouting vitriol and nasty rumours about the towns leader or leaders. The cleric has attracted quite a crowd.
A group of protestors has set up outside the Town Hall, protesting the new road which is planned to run right through the middle of their settlement, some distance out of town.
A merchant asks you to mind his cart for him while he chases a thief who has stolen merchandise from it. He then leaves, and does not return for a very long
time...
A street urchin appears, promising divine favour if the PC comes and volunteers an hour of service at a nearby temple.
A shopkeeper is attacking a wasp nest outside of his shop with a broom. He dislodges it and it crashes to the ground, engulfing him in a Swarm of Insects!
Two half-orcs are engaged in a full-on brawl outside a nearby tavern. Apparently one thinks the other cheated at dice.
Religious pilgrims making their way quietly through the streets are being mocked and jeered by a group of elven teenagers
A tattered cloak blows up the street. Catching hold of it, you find a note in one of its pockets.
Someone has released a hallucinogenic substance into the air, and people are in various states of intoxication.
A distraught mother cannot find her child and is convinced it has been kidnapped. She is moving from person to person, begging for help.
A sudden gust of wind whips through the town, sending stalls toppling over, hats flying, stacks of parchment fluttering down the street. Perhaps the PC discovers something as a result.
A dwarf, armed with greataxe, is threatening a cowering halfling, who is shaking with fear. The dwarf is living with rage, but has just been disarmed by the town guard. What is the situation here? Has the halfling wronged him in some way?
An overturned cart ahead is causing gridlock - the street is jammed with traffic.
A prostitute (any sex or race) begins soliciting you earnestly.
Suddenly, out of the blue, you see a mage of some sort simply appear in the middle of the street/alley.
NPC appears with quest (see Chapter 7)
NPC appears with quest (see Chapter 7)
NPC appears with quest (see Chapter 7)
NPC appears with quest (see Chapter 7)
NPC appears with quest (see Chapter 7)
Monster: Level appropriate deadly encounter."
  # Processing ----
  raw <- strsplit(x = raw, split = '\n')[[1]]
  sample(raw, 1)
}
