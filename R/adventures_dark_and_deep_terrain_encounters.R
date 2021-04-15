# Stuff from the Random Terrain and Encounter Generator
# from Adventures Dark and Deep, by Joseph Bloch

# Wilderness stuff ----

# Starting random terrain ----

#' Starting random terrain
#'
#' Use this if you don't know anything about the hex you start on.
#'
#' @export
bloch_hex <- function(){
  res <- c('badlands',
           'desert',
           'forest',
           'hills',
           'lake',
           'mountains',
           'plains',
           'scrub',
           'swamp')
  ruins <- ifelse(test = sample(1:100, 1) == 1,
                  yes = 'and ruins',
                  no = '')
  paste0(sample(res, 1))
}

# Terrain coming from... ----

#' Generate random terrain when coming from another.
#' You need to specify which terrain you're coming from.
#'
#' @param from A character. One of badlands, desert, forest, hills, mountains, plains, scrub or swamp.
#' @export
bloch_terrain <- function(from = bloch_hex()){
  # Rolls ----
  rolls <- c(5, 10, 15, 16, 17, 19, 20,
             21, 23, 25, 30, 35, 40,
             45, 50, 55, 60, 65, 70,
             75, 80, 85, 90, 95, 100)
  # badlands ----
  badlands <- c(rep('badlands', times = 7),
                rep('desert', times = 3),
                'forest',
                rep('hills', times = 5),
                'lake',
                rep('mountains', times = 2),
                rep('plains', times = 2),
                rep('scrub', times = 2),
                'swamp',
                'valley')
  # desert ----
  desert <- c(rep('badlands', times = 7),
              rep('desert', times = 7),
              'hills',
              'lake',
              rep('mountains', times = 2),
              rep('plains', times = 3),
              rep('scrub', times = 2),
              'swamp',
              'valley')
  # forest ----
  forest <- c(rep('badlands', times = 1),
              rep('forest', times = 14),
              'forested_hills',
              'hills',
              'lake',
              rep('mountains', times = 1),
              rep('plains', times = 1),
              rep('scrub', times = 3),
              'swamp',
              'valley')
  # hills ----
  hills <- c(rep('badlands', times = 2),
             rep('desert', times = 2),
             rep('forest', times = 6),
             'forested_hills',
             rep('hills', times = 5),
             rep('lake', times = 2),
             rep('mountains', times = 2),
             rep('plains', times = 1),
             rep('scrub', times = 2),
             'swamp',
             'valley')
  # mountains ----
  mountains <- c(rep('badlands', times = 2),
                 rep('desert', times = 2),
                 rep('forest', times = 3),
                 rep('forested_hills', times = 2),
                 rep('hills', times = 4),
                 rep('lake', times = 1),
                 rep('mountains', times = 8),
                 rep('plains', times = 1),
                 rep('scrub', times = 1),
                 'valley')
  # plains ----
  plains <- c(rep('badlands', times = 1),
              rep('desert', times = 1),
              rep('forest', times = 1),
              'forested_hills',
              rep('hills', times = 5),
              rep('lake', times = 1),
              rep('mountains', times = 1),
              rep('plains', times = 11),
              rep('scrub', times = 1),
              'swamp',
              'valley')
  # scrub ----
  scrub <- c(rep('badlands', times = 1),
             rep('desert', times = 1),
             rep('forest', times = 6),
             'forested_hills',
             rep('hills', times = 1),
             rep('lake', times = 1),
             rep('mountains', times = 1),
             rep('plains', times = 3),
             rep('scrub', times = 8),
             'swamp',
             'valley')
  # swamp ----
  swamp <- c(rep('badlands', times = 1),
             rep('forest', times = 5),
             rep('forested_hills', times = 2),
             rep('hills', times = 2),
             rep('lake', times = 3),
             rep('plains', times = 2),
             rep('scrub', times = 2),
             rep('swamp', times = 7),
             'valley')
  # Final result ----
  res <- data.frame(rolls, badlands, desert,
                    forest, hills, mountains,
                    plains, scrub, swamp)
  roll <- sample(1:100, 1)
  paste0(as.character(res[which(res$rolls >= roll)[1],
                          which(names(res) == from)]))
}

# Random settlement in a new hex ----

#' Random table to know if there's a settlement on a new hex. It's
#' included in the random terrain function too.
#' @export
bloch_settlement <- function(){
  roll <- sample(1:1000, 1)
  rolls <- c(30, 50, 70,
             90, 100, 110,
             116, 122, 127,
             130, 1000)
  set <- c('Individual Dwelling (1d12)',
           'Thorp (2d4 x 10)',
           'Hamlet (1d4 x 100)',
           'Village ((1d3+5) x 100)',
           'Town (1d6 x 1500)',
           'Castle',
           'Ruined Village',
           'Ruined Castle',
           'Ruined Shrine',
           'Ruined Tomb',
           'No settlement')
  res <- data.frame(rolls, set, stringsAsFactors = F)
  as.character(res$set[which(res$rolls >= roll)[1]])
}
