# NPC generator from Main Gauche + professions from SotDL

# Internal functions ----

npc_age <- function(){
  sample(c('Young',
           'Adult',
           'Middle Aged',
           'Elderly'),
         size = 1,
         prob = c(25, 50, 20, 10))
}

npc_height <- function(){
  sample(c("Short",
           "Normal",
           'Tall'),
         size = 1,
         prob = c(20, 60, 20))
}

npc_build <- function(){
  sample(c("Frail",
           'Slender',
           "Normal",
           "Husky",
           "Corpulent"),
         size = 1)
}

npc_skin <- function(){
  sample(c("Pale",
           "Fair",
           "Light",
           "Light Tan",
           "Tan",
           "Dark tan",
           "Light brown",
           "Brown",
           "Dark brown",
           "Ebony"),
         size = 1)
}

npc_face_shape <- function(){
  sample(c("baby-faced",
           "chiselled",
           "craggy",
           "dimpled",
           "fine",
           "fresh-faced",
           "furrowed",
           "good-looking",
           "handsome",
           "hatchet-faced",
           "lived-in",
           "made-up",
           "round",
           "sculpted",
           "seamed",
           "thin",
           "unlined",
           "weak",
           "weather-beaten"),
         1)
}

npc_face_quirk <- function(){
  type <- sample(c('eyes','mouth','nose'),
                 size = 1)
  if(type == 'eyes'){
    res <- paste0(npc_eyes(), ' eyes')
  }
  if(type == "mouth"){
    res <- paste0(npc_mouth(), ' mouth')
  }
  if(type == 'nose'){
    res <- paste0(npc_nose(), ' nose')
  }
  return(res)
}

npc_hair <- function(young = T){
  if(young){
    color_probs <- c(5,5,5,3,0,2,3,1)
  }else{
    color_probs <- c(5,5,5,3,8,5,3,1)
  }
  color <- sample(c('black', 'brown', 'blonde', 'red',
                    'gray','white', 'auburn', 'strange'),
                  size = 1, prob = color_probs)
  type <- c("afro","bald","beehive","bob","braid","braids","bristles","bun",
            "chignon","coiffure","combed","corkscrew","corn rows","cowlicked",
            "crew cut","curls","curly","disarrayed","disheveled","dreadlocks",
            "dry","flattop","flecked","French braid","French twist","fringe",
            "greasy","grizzled","knotted","layered","locks","matted","messed up",
            "messy","Mohawk","mussed up","mussy","oily","page boy","perm",
            "pigtails","plait","pompadour","ponytail","ragged","receding",
            "ringlets","ruffled","shaggy","shaved head","shorn",
            "shoulder-length","skinhead","spiky","split-ended","straight",
            "strands","tangled","thick","thinning","tidy","topknot","tousled",
            "twisted","uncombed","unshorn","untidy","wavy","wiry")
  data.frame('Hair Color' = tools::toTitleCase(color),
             'Hair Style' = tools::toTitleCase(sample(type, 1)))
}

npc_eyes <- function(){
  sample(c('Ablaze','Affixed','All-knowing','Alluring','Almond-shaped',
           'Amazed','Beady','Beautiful','Bewitching','Blank','Blind',
           'Blinking','Bloodshot','Blue','Blue-eyed','Bright',
           'Brooding','Brown','Brown-eyed','Bug-eyed','Bulging',
           'Burning','Cat-like','Clear','Close','Close-set','Cloudy',
           'Commanding','Compassionate','Cross-eyed','Crystalline',
           'Dancing','Dark','Darting','Dazed','Dead','Deep-set',
           'Dilated','Doe-eyed','Dopey','Dreamy','Drooping','Electric',
           'Elongated','Emerald','Emotional','Empty','Expressionless',
           'Expressive','Fathomless','Fiery','Flecked','Flickering',
           'Fluttering','Focused','Gentle','Glazed','Glistening',
           'Glittering','Green','Green-eyed','Hardened','Harrowed',
           'Heavy','Hollow','Honest','Hooded','Ignited','Innocent',
           'Inviting','Jaundiced','Knowing','Languid','Large',
           'Lash-fringed','Laughing','Lidded','Liquid','Lively',
           'Love-struck','Lovely','Mesmerizing','Milky','Mischievous',
           'Mysterious','Narrowed','Old','Oval','Pained','Patient',
           'Pearly','Peeking','Peering','Penetrating','Pie-eyed',
           'Piercing','Piggy','Playful','Pop-eyed','Protruding',
           'Restless','Rheumy','Round','Sad','Scared','Seductive',
           'Sexy','Sharp','Shining','Shuttered','Shy','Sickly',
           'Slanted','Sleepy','Small','Smoldering','Sorrowful',
           'Soulful','Sparkling','Squinty','Steely','Sultry','Sunken',
           'Sympathetic','Tear-filled','Tired','Twinkling','Twitching',
           'Understanding','Unfocused','Unusual','Vacant','Void-Like',
           'Warm','Watery','Weary','Weeping','White','Wide',
           'Wide-spaced','Widened','Wild','Witchy','Worried','Wrinkled'),
         size = 1)
}

npc_mouth <- function(){
  sample(c('open','dry','wide','big','small','large','foot','hand',
           'full','red','sore','closed','thin','narrow','toothless',
           'sweet','soft','firm','lipped','pretty','very','beautiful',
           'sensitive','huge','shaped','broad','bad','tiny','hard',
           'foul','sensual','generous','warm','smart','hungry','loud',
           'wet','round','tight','hot','lovely','enormous','parched',
           'pink','sensuous','twisted','ugly','cavernous','loose','rosy',
           'straight','healthy','cruel','crooked','dirty','handsome',
           'delicate','clean','weak','primitive','expressive','pale',
           'filthy','wry','footand','edentulous','moist','lipless'),
         size = 1)
}

npc_nose <- function(){
  sample(c('long','aquiline','large','straight','red','big','runny',
           'flat','hooked','little','broken','sharp','prominent',
           'small','bloody','pointed','roman','thin','broad','short',
           'crooked','black','bulbous','fine','upturned','round','cold',
           'stuffy','narrow','blunt','strong','delicate','wet','wide',
           'huge','thick','pink','soft','keen','curved','false','tiny',
           'beaked','bridged','arched','aristocratic','enormous','fleshy',
           'freckled','pretty','pert','perfect','bony','slender','finger',
           'beaky','ugly','brown','tilted','grecian','handsome','pinched',
           'swollen','rounded','cute','artificial','fat','funny','shiny',
           'bent','inquisitive','cut','cleft','eagle'),
         size = 1)
}

# External functions ----

#' @export
npc <- function(conversation = T){
  npc_appearance()
  if(conversation){
    cat('\n-------\n')
    une()
  }else{
    cat('\nUNE\n-------\n')
    une_npc_complete()
  }
}

#' @export
npc_attitude <- function(){
  r <- c("Alluring","Strong Presence","Aloof","Excitable","Argumentative","Pleasant","Arrogant","Leery",
         "Beautiful","Handsome","Boastful","Knowledgable","Boisterous","Un appable","Boring","Silly","Blunt",
         "Thin-Skinned","Cagey","Rude","Candid","Timid","Caustic","Guarded","Charming","Dramatic","Chauvinistic",
         "Ditzy","Clueless","Intimidating","Cold/Unemotional","Talkative","Confident","Plain","Conservative",
         "Humorous","Cordial","Evasive","Cranky","Fast Talking","Critical","Wallflower","Dainty","Oafish",
         "Dashing","Prim & Proper","Defensive","Snobby","Detached","Stubborn","Disrespectful","Popular","Dour",
         "Spontaneous","Down-to-Earth","Soft-Spoken","Droll","Merry","Dumb","Vivacious","Erudite","Morbid",
         "Extravagant","Polite","Fiery-Tempered","Meek","Freethinking","Unfriendly","Friendly","Nervous","Fussy",
         "Slick","Gregarious","Quiet","Glum","Personable","Humorless","Nice","Ignorant","Sympathetic","Impatient",
         "Shy","Important-Sounding","Quarrelsome","Inconsiderate","Perceptive","Interesting","Unhinged","Juvenile",
         "Quick-Witted","Likeable","Serious","Morose","Whimsical","Nonchalant/Cool","Sensitive","Obnoxious","Vulgar",
         "Socially-Skilled","Whiny")
  return(sample(r,1))
}

#' @export
npc_profession <- function(type = sample(c('academic',
                                           'common',
                                           'criminal',
                                           'martial',
                                           'religious',
                                           'wilderness'),
                                         size = 1,
                                         prob = c(1,10,5,5,3,5))){
  switch(type,
         # Academic ----
         'academic' = paste0('Academic (',
                             sample(c("Architecture",
                                      "Astrology",
                                      "Engineering",
                                      "Etiquette & customs",
                                      "Folklore",
                                      "Geography",
                                      "Heraldry",
                                      "History",
                                      "Law",
                                      "Literature",
                                      "Magic",
                                      "Medicine",
                                      "Navigation",
                                      "Occult",
                                      "Philosophy",
                                      "Politics",
                                      "Nature",
                                      "Religion",
                                      "Science",
                                      "War"), size = 1),')'),
         size = 1,
         # Common ----
         'common' = sample(c('Animal trainer',
                             'Apothecary or healer',
                             'Artisan (choose a manufacturing trade)',
                             'Artist (choose a medium)',
                             'Boatman or ferryman',
                             'Butcher',
                             'Cook',
                             'Drover or herder',
                             'Entertainer (choose a style)',
                             'Farmer',
                             'Fisher or whaler',
                             'Groom',
                             'Laborer (choose a labor)',
                             'Merchant (choose a good)',
                             'Miner',
                             'Musician (choose an instrument)',
                             'Sailor',
                             'Servant or valet',
                             'Shopkeeper',
                             'Teamster'),
                           size = 1),
         # Criminal ----
         'criminal' = sample(c('Agitator',
                               'Beggar',
                               'Burglar',
                               'Carouser or rake',
                               'Charlatan or confidence artist',
                               'Cultist',
                               'Fence',
                               'Forger',
                               'Gambler',
                               'Grave robber',
                               'Informant',
                               'Murderer',
                               'Pickpocket',
                               'Pirate',
                               'Prostitute',
                               'Rebel or terrorist',
                               'Saboteur',
                               'Spy',
                               'Thug',
                               'Urchin'),
                             size = 1),
         # Martial ----
         'martial' = sample(c('Constable',
                              'Detective',
                              rep('Guard',2),
                              'Jailer',
                              'Officer',
                              'Marine',
                              'Mercenary',
                              rep('Militia member', 2),
                              rep('Patroller', 2),
                              rep('Peasant conscript', 3),
                              'Slave',
                              rep('Soldier', 2),
                              'Squire',
                              'Torturer'),
                            size = 1),
         # Wilderness ----
         'wilderness' = sample(c('Bandit, brigand or highway robber',
                                 'Barbarian',
                                 'Exile',
                                 'Gatherer',
                                 rep('Guide', 2),
                                 'Hermit',
                                 rep('Hunter', 2),
                                 'Nomad or vagabond',
                                 'Pioneer',
                                 'Poacher or rustler',
                                 'Prospector',
                                 'Outlaw',
                                 rep('Refugee',2),
                                 'Spelunker',
                                 'Tracker',
                                 'Trapper',
                                 'Woodcutter'),
                               size = 1),
         # Religious ----
         'religious' = sample(c(rep('Devotee', 2),
                                rep('Evangelist', 2),
                                'Fanatic',
                                'Heretic',
                                rep('Initiate of a local faith',2),
                                rep('Minister',2),
                                rep('Acolyte of a foreign faith', 2),
                                'Inquisitor\'s henchman',
                                rep('Pilgrim', 3),
                                rep('Street preacher', 2),
                                rep('Temple ward', 2)),
                              size = 1)
  )
}

#' @export
npc_appearance <- function(complete = F){
  # Build
  build_df <- data.frame(Age = npc_age(),
                         Profession = npc_profession(),
                         Height = npc_height(),
                         Build = npc_build(),
                         Skin = npc_skin(),
                         Dress = paste0(sample(c('Shabbily',
                                                 'Modestly',
                                                 'Fashionably',
                                                 'Extravagantly'),
                                               size = 1,
                                               prob = c(25, 50, 20, 10)),
                                        ' (',
                                        gme_description_table(),
                                        ')'),
                         'Social class' = sample(c('Lowborn',
                                                   'Burgher',
                                                   'Aristocrat'),
                                                 size = 1,
                                                 prob = c(60,30,10)),
                         Attitude = npc_attitude())
  # Face
  face_df <- data.frame(Shape = tools::toTitleCase(npc_face_shape()))
  face_df <- cbind(face_df,
                   npc_hair(young = build_df$Age %in%
                              c('Young',
                                'Adult')))
  if(complete){
    face_df$Eyes <- tools::toTitleCase(npc_eyes())
    face_df$Mouth <- tools::toTitleCase(npc_mouth())
    face_df$Nose <- tools::toTitleCase(npc_nose())
  }else{
    face_df$Quirk <- tools::toTitleCase(npc_face_quirk())
  }
  cat('Build\n')
  cat('--------')
  print(t(build_df))
  cat('\nFace\n')
  cat('--------')
  print(t(face_df))
}

#' @export
npc_market_stall <- function(number = 1,
                             areas = NULL){
  # Types of wares ----
  wares <- c('fruits & vegetables',
             'meat',
             'fish',
             "tailor",
             'jewellery',
             'weapons',
             'armor',
             'adventuring gear',
             'divination',
             'adventuring services',
             'entertainment services',
             'occult stuff',
             'religious paraphernalia',
             'preaching',
             'minor bounty office',
             'guide services',
             'transportation',
             "alchemy")
  wares_probs <- c(5,5,5,4,4,4,4,
                   3,3,3,3,2,2,
                   1,1,1,3,3)

  # Type of stall ----
  stall <- c('small cart',
             'large stall',
             'tent with counters',
             'small tent',
             'small table',
             'large table',
             'improvised keg stand',
             'blanket spread')
  stall_probs <- c(5,2,3,
                   5,5,3,
                   3,3)

  # Quality ----
  quality <- c('extremely poor',
               'poor',
               'mediocre',
               'over average',
               'sublime',
               'supernatural')
  quality_probs <- c(2,4,8,
                     8,3,1)

  # Price ----
  price <- c('extremely cheap',
             'cheap',
             'average',
             'expensive',
             'extremely expensive')
  price_probs <- c(1,3,10,5,3)

  # Variety ----
  variety <- c('very few',
               'few',
               'standard',
               'everything')
  variety_probs <- c(2,6,4,1)

  # Result ----
  res <- data.frame(matrix(data = NA,
                           nrow = number,
                           ncol = 5))

  names(res) <- c('wares',
                  'stall',
                  'quality',
                  'price',
                  'variety')
  res$wares <- sample(wares, number, T, wares_probs)
  res$stall <- sample(stall, number, T, stall_probs)
  res$quality <- sample(quality, number, T, quality_probs)
  res$price <- sample(price, number, T, price_probs)
  res$variety <- sample(variety, number, T, variety_probs)
  if(!is.null(areas)){
    res$area <- sample(1:areas, nrow(res), T)
  }

  res
}
