# Worlds Without Number Generators

#' @export
wwn_historical_event <- function(n = 1){
  sample(c('Battleground','Betrayal','Brutal Oppression','Class Struggle',
           'Consequences','Decadence','Depravity','Desolation','Diplomatic Coup',
           'Economic Boom','Enemies Within','Evil Wizard','Exodus',
           'Exquisite Art','External War','Freakish Magic','Golden Age',
           'Good Wizard','Great Awakening','Great Builders',
           'Great Infrastructure','Hero King','Immigrants','Inefficient Rule',
           'Internal War','Loss of Confidence','Magical Disaster','Magical Tech',
           'Natural Calamity','New Horizons','New Rulers','Noble Function',
           'Noble Strife','Plague','Poverty','Power Brokers','Praetorian Coups',
           'Priest King','Rare Resource','Religious Fall','Religious Rise',
           'Resource Collapse','Secession','Terrain Change','Total Collapse',
           'Twist of Fate','Urbanization','Weak Throne','Xenophilia','Xenophobia'),
         size = n,
         replace = T)
}

#' @export
wwn_tags_community <- function(n = 1){
  sample(c('Bad Neighbors','Brilliant Innovation','Corrupt Laws',
           'Cultural Center','Decadent Locals','Demihuman Populace',
           'Enemy Within','Fallen Prosperity','Guild Oligarchy','Hidden Ruler',
           'Incompetent Leaders','Inhuman Cooperation','Ancient Infrastructure',
           'Magical Academy','Martial Tradition','Mistreated Blighted',
           'Neglectful Ruler','Pilgrimage Site','Population Boom',
           'Rebel Stronghold','Scars of War','Secret Treachery',
           'Theocratic Authorities','Trade Hub','Upstart Faith',
           'Widespread Prosperity','Blood Feud','Miserable Penury',
           'Broken Spirits','Monstrous Tribute','Criminal Bosses','New Industry',
           'Cursed Circumstances','Plagued City','Decaying Working',
           'Raider Scourge','Dueling Lords','Rigid Castes','Faded Remnant',
           'Seat of Rule','Foreign Enclave','Sinking City','Heavy Fortification',
           'Toxic Economy','Hostile Terrain','Unique Product',
           'Inherited Architecture','Warring Council','Lawless Class',
           'Xenophobic Locals'),
         size = n,
         replace = T)
}

#' @export
wwn_tags_court <- function(n = 1){
  sample(c('Lost Purpose','Ministerial Capture','New Opportunity',
           'Overextended Grasp','Priestly Influence','Rampant Corruption',
           'Regency Council','Rival Dreams','Ruling Regalia',
           'Shining Successor','Sublime Skill','Threatened Violence',
           'Affliction\'s Mark','Iron Law','Ancestral Obligation','Awkward Birth',
           'Cadet Branches','Cultural Insignia','Dark Secret','Devil\'s Bargain',
           'Disputed Inheritance','False Prize','Forbidden Romance','Gate Keeper',
           'Hopeless Rival','Inadequate Tools','Awesome Legitimacy',
           'Magical Subversion','Blandished Leadership','New Generation',
           'Capricious Orders','Outside Debts','Daring Ambition',
           'Poisonous Cliques','Decadent Court','Proxy Speaker',
           'Diplomatic Demands','Recent Brutality','Excess Heirs',
           'Restive Lessers','Fatal Extravagance','Rival Power','Foreign Ties',
           'Runaway Rule','Hidden Blight','Splendid Seat','Impure Blood',
           'Sudden Strength','Inept Ruler','Waning Wealth'),
         size = n,
         replace = T)
}

#' @export
wwn_tags_ruin <- function(n = 1){
  sample(c('Lethal Treasure','Lingering Curse','Lost Colony','Monster Forge',
           'Precious Resource','Recruiting Drive','Rigid Hierarchy','Sacrificial Bargain',
           'Secret Alliance','Spatial Flux','Taboo Place','Useless Treasure',
           'Ancient Archives','Invincible Delusion','Aspiring Conqueror','Birthing Cyst',
           'Civil War','Decrepit Structure','Dire Tombs','Dungeon Heart',
           'Failed Intrusion','False Front','Flooded Halls','Friendly Foes',
           'Hiveminded Natives','Hostile Environment','Automaton Servants',
           'Limited Access','Bitter Remnants','Living Dungeon','Cyclical Doom',
           'Magical Wonder','Desperate Hunger','Outsider Domain','Distant Gate',
           'Raider Lair','Experimental Lab','Religious Zealots','Fallen Sanctuary',
           'Royal Refuge','Feral Magic','Sealed Evil','Freshly Looted',
           'Shifting Interior','Hidden Within','Surfacer Hideout','Hospitable Natives',
           'Things Below','Infectious Miasma','Wizard\'s Lair'),
         size = n,
         replace = T)
}

#' @export
wwn_tags_wilderness <- function(n = 1){
  sample(c('Military Outpost','Motherlode','Outsider Enclave','Perilous Path',
           'Precious Game','Refugee Camp','Remote Monastery','Savage Hamlet',
           'Seductive Peril','Toxic Ruins','Twisted Fauna','Working Wreckage',
           'Abandoned Village','Migration Path','Ancient Guardians',
           'Arratu Land','Beast Swarm','Broken Infrastructure','Collapsed Deep',
           'Cryptic Art','Decayed Working','Devil Grove','Healing Terrain',
           'Historical Survival','Labyrinthine Tangle','Lost City',
           'Ancient Monument','Monstrous Beast','Bandit Lair','Nomad Camp',
           'Blighted Tribe','Overgrown Tomb','Chokepoint','Pilgrimage Site',
           'Criminal Meet','Rampant Experiment','Cursed Land','Remnant Road',
           'Demihuman Community','Ruined Fortification','Disused Mine',
           'Sculpted Terrain','Hermitage','Taboo Territory','Isolated Academy',
           'Treacherous Terrain','Lost Battlefield','Uncanny Weather',
           'Magical Springs','Zealot Colony'),
         size = n,
         replace = T)
}
