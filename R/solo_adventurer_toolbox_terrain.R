#' @export
toolbox_terrain_arctic <- function(){
  tmp <- data.frame(num = c(60,65,70,75,80,85,90,95,100),
                    feat = c("Continuing arctic terrain, 5 miles",
                             "Icy hills (roll hills and interpret... arctically). 1d4 m.",
                             "Small mountain range / foothills. 1d4 m.",
                             "Waterway (probably frozen). 1d4 m",
                             "Small wood. 1d4 m.",
                             "Rocky outcrop. 1d4 m.",
                             "Unmarked settlement",
                             "D6: structure / monument / interesting landscape feature",
                             "Monster Lair"), stringsAsFactors = F)
  dice <- sample(1:100, size = 1)
  tmp$feat[which(tmp$num >= dice)[1]]
}

#' @export
toolbox_terrain_coastal <- function(){
  tmp <- data.frame(num = c(60,65,70,75,80,85,90,95,100),
                    feat = c("Continuing coastal terrain, 5 miles",
                             "Hills, with cliffs perhaps. 1d4 m.",
                             "Gully. 1d4 m.",
                             "Waterway. 1d4 m",
                             "Small wood. 1d4 m.",
                             "Rocky outcrop. 1d4 m.",
                             "Unmarked settlement",
                             "D6: structure / monument / interesting landscape feature",
                             "Monster Lair"), stringsAsFactors = F)
  dice <- sample(1:100, size = 1)
  tmp$feat[which(tmp$num >= dice)[1]]
}

#' @export
toolbox_terrain_desert <- function(){
  tmp <- data.frame(num = c(70,75,80,85,90,95,100),
                    feat = c("Continuing desert, 5 miles",
                             "Oasis (roll Oasis table). 1d4 m.",
                             "Small mountain range (dry, no snow). 1d4 m.",
                             "Rocky outcrop. 1d4 m",
                             "Unmarked settlement",
                             "D6: structure / monument / interesting landscape feature",
                             "Monster Lair"), stringsAsFactors = F)
  dice <- sample(1:100, size = 1)
  tmp$feat[which(tmp$num >= dice)[1]]
}

#' @export
toolbox_terrain_forest <- function(){
  tmp <- data.frame(num = c(52,56,60,64,68,72,76,80,84,88,92,96,100),
                    feat = c("Continuing forest, 5 miles",
                             "Small clearing",
                             "Large clearing",
                             "Small wooded gully, 1d4 m.",
                             "Large wooded gully, 1d4 m.",
                             "Waterway",
                             "Lake, 1d4 m.",
                             "Clearfelled area, 1d4 m.",
                             "Rocky outcrop, 1d4 m.",
                             "Swamp, 1d4 m.",
                             "Unmarked forest settlement",
                             "D6: structure / monument / monster lair",
                             "Interesting Landscape feature"), stringsAsFactors = F)
  dice <- sample(1:100, size = 1)
  tmp$feat[which(tmp$num >= dice)[1]]
}

#' @export
toolbox_terrain_grassland <- function(){
  tmp <- data.frame(num = c(56,60,64,68,72,76,80,84,88,92,96,100),
                    feat = c("Continuing grassland, 5 miles",
                             "Hills",
                             "Swamp",
                             "Gully, 1d4 m.",
                             "Waterway, 1d4 m.",
                             "Lake",
                             "Small wood, 1d4 m.",
                             "Rocky outcrop, 1d4 m.",
                             "Small mountain range / foothills, 1d4 m.",
                             "Unmarked settlement",
                             "D6: structure / monument / interesting landscape feature",
                             "Monster Lair"), stringsAsFactors = F)
  dice <- sample(1:100, size = 1)
  tmp$feat[which(tmp$num >= dice)[1]]
}

#' @export
toolbox_terrain_hills <- function(){
  tmp <- data.frame(num = seq(55, 100, by = 5),
                    feat = c("Continuing hills, 5 miles",
                             "Gully, 1d4 m.",
                             "Waterway, 1d4 m.",
                             "Lake, 1d4 m.",
                             "Small wood, 1d4 m.",
                             "Rocky outcrop, 1d4 m.",
                             "Small mountain range / Foothills, 1d4 m.",
                             "Unmarked settlement",
                             "D6: structure / monument / monster lair",
                             "Interesting Landscape feature"), stringsAsFactors = F)
  dice <- sample(1:100, size = 1)
  tmp$feat[which(tmp$num >= dice)[1]]
}

#' @export
toolbox_terrain_mountains <- function(){
  tmp <- data.frame(num = seq(55, 100, by = 5),
                    feat = c("Continuing mountains, 5 miles",
                             "Gully, 1d4 m.",
                             "Waterway, 1d4 m.",
                             "Lake, 1d4 m.",
                             "Small wood, 1d4 m.",
                             "Rocky outcrop, 1d4 m.",
                             "Small mountain range / Foothills, 1d4 m.",
                             "Unmarked settlement",
                             "D6: structure / monument / monster lair",
                             "Interesting Landscape feature"), stringsAsFactors = F)
  dice <- sample(1:100, size = 1)
  tmp$feat[which(tmp$num >= dice)[1]]
}

#' @export
toolbox_terrain_swamp <- function(){
  tmp <- data.frame(num = c(51,58,65,72,79,86,93,100),
                    feat = c("Continuing swamp, 5 miles",
                             "Waterway, 1d4 m.",
                             "Lake, 1d4 m.",
                             "Small wood, 1d4 m.",
                             "Rocky outcrop, 1d4 m.",
                             "Unmarked settlement",
                             "D6: structure / monument / monster lair",
                             "Interesting Landscape feature"), stringsAsFactors = F)
  dice <- sample(1:100, size = 1)
  tmp$feat[which(tmp$num >= dice)[1]]
}
