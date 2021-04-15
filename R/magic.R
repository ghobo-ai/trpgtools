# Generators related to magic ----

#' @export
rand_magic_tradition <- function(){
  r <- c("Air","Alchemy","Alteration","Arcana","Battle","Blood","Celestial","Chaos","Conjuration","Curse",
         "Death","Demonology","Destruction","Divination","Earth","Enchantment","Exorcism","Fey","Fire",
         "Forbidden","Illusion","Invocation","Life","Metal","Nature","Necromancy","Order","Primal",
         "Protection","Rune","Shadow","Shaman","Song","Soul","Spiritualism","Storm","Technomancy","Telekinesis",
         "Telepathy","Teleportation","Templar","Theurgy","Time","Transformation","Water","Witch")
  return(sample(r,1))
}

magic_user_names <- function(){
  sample(c('Teclis',
           'Volans',
           'Nagash',
           'Kemmler',
           'Raistlin',
           'Dalamar',
           'Ahriman',
           'Magnus',
           'Fulgrim',
           'Mortarion',
           'Korax',
           'Zelaia',
           'Irman',
           'Amser',
           'Marburiel',
           'Kairos',
           'Lord Kroak',
           'Domtor',
           'Xereus',
           "U'zhul",
           "Amul",
           'Abraxas',
           'Cordelia',
           'Alexander',
           'Mystra',
           'Izalith',
           'Casandora',
           'Fistandantilus',
           'Par-Salian',
           'Samah',
           'Lord Xar',
           'Balthasar',
           'Mordenkainen',
           'Tenser',
           'Theodore',
           "Grondalf",
           'Van Horstmann'),
         size = 1)
}

magic_user_jobs <- function(){
  sample(c('Warlock',
           'Curser',
           'Cleric',
           'Priest',
           'Defiler',
           'Preserver',
           'Saint',
           'Oracle',
           'Prophet',
           'Diviner',
           'Archmage',
           'Elementalist',
           'Hemomancer',
           'Diabolist',
           'Wizard',
           'Sorcerer',
           'Necromancer',
           'Hierophant',
           'Exorcist'))
}

#' @export
magic_spell_level <- function(){
  sample(c('Gate', 'Way', 'Throne'),
         size = 1, prob = c(7,3,1))
}

#' @export
magic_spell <- function(spell_level = magic_spell_level()){

  flashy_prob <- switch(spell_level,
                        'Gate'= 0.5,
                        'Way' = 0.5,
                        'Throne' = 1)
  base_spell <- maze_magic()

  probs <- switch(spell_level,
                  'Gate' = c(0,1,0,1),
                  'Way' = c(1,5,0,5),
                  'Throne' = c(3,0,3,1))
  addendum_type <- sample(c('master',
                            'group',
                            'name',
                            'title'),
                          size = 1,
                          prob = probs)

  addendum <- tools::toTitleCase(switch(addendum_type,
                                        'master' = silent_cult_complex_master(),
                                        'group' = silent_cult_complex_group(),
                                        'name' = magic_user_names(),
                                        'title' = magic_user_jobs()))

  spell_name <- ifelse(as.logical(rbinom(1,1,flashy_prob)),
                       yes = ifelse(test = as.logical(rbinom(1,
                                                             1,
                                                             0.5)),
                                    yes = paste(base_spell,
                                                'of (the)',
                                                addendum),
                                    no = paste0(addendum,
                                                '\'s ',
                                                base_spell)),
                       no = base_spell)
  return(paste0(spell_level, ' | ', spell_name))
}
