# Stuff from CDD4 Old School Essentials Reference
# TODO: Encounter tables + Creature/Treasure generator
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

