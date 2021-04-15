toolbox_event_roll <- function(env = 'urban'){
  roll <- sample(c(rep('Events', times = 6),
                   rep('Creatures', times = 2),
                   rep('People', times = 4),
                   rep('Situations', times = 8)), size = 1)
  if(roll == 'Events'){
    if(env == 'urban') print(toolbox_event_urban())
    if(env == 'wilderness') print(toolbox_event_wilderness())
  }
  if(roll == 'Creatures'){
    print(paste(gme_description_table(), 'creature'))
  }
  if(roll == 'People'){
    print(une_npc())
  }
  if(roll == 'Situations'){
    print(toolbox_verb())
  }
}

#' @export
toolbox_event <- function(n = 4, env = 'urban'){
  for(i in 1:n){
    toolbox_event_roll(env)
  }
}

toolbox_event_urban <- function(){
  # Wall of text ----
  raw <- "Wedding
Name-giving day celebrations
Public holiday
Procession
Harvest Festival
Festival celebrating a god
Celebration of a heros return
Market day
Religious rally
Official proclamation
Amnesty
Sudden storm / gale force winds
Election / Change of civic leader
Yearly local festival
Assassination
Performance of a play
Musical concert
Buskers performance
Orator / storyteller
Alefest
Warrior exhibition
Procession of royals
Museum exhibition
New building being opened
Large army passing through town
Gridlocked traffic
Monster invasion!
Conference of Wizards
Graduation ceremony
Traffic accident
Freakish weather event
Fire in Building
Notable local figure assassinated
Public duel
Large scale fire
Sinkhole opens
Local army returning after recent skirmish
Co-ordinated attack
Protest
Flood
Martial law enforced (Reason?)
Wild magic eruption
Military conscription
Revolution taking place (scale uncertain)
Public Execution Storm
Plague
Earthquake
Dimensional disruption
Invading force"
  # Processing ----
  raw <- strsplit(x = raw, split = '\n')[[1]]
  sample(raw, 1)
}

toolbox_event_wilderness <- function(){
  # Wall of text ----
  raw <- "Landslide / Avalanche
Earthquake
Storm
Druid gathering
Religious pilgrimage
Army encamped
Sudden storm / gale force winds
Overturned cart
Flash flood
Forest Fire
Local humanoids having a festival
Solar eclipse
Hail (large hailstones?)
Hurricane
Tribal encounter
Animal stampede
Tree falls
Boulder falls
Unseasonable weather
Lightning strikes
Market
Hunting Party
Farmers harvesting crops
Cart passing
Refugees
Massed Animals
Toll demanded
Distressed NPC
Besieged settlement
Come across structure
Battle in progress
Beast / Monster carcass
Monster - easy encounter
Monster - easy encounter
Monster - medium encounter
Monster - medium encounter
Monster - hard encounter
Monster - deadly encounter
Volcanic eruption
Plague (insect / vermin)
Interdimensional Rift
Army going to war
Sinkhole Appears
Appearance of Tyrant in the area
Savage raiding party
Marauding monster attacking village
Undead awakening
Unmarked Settlement"
  # Processing ----
  raw <- strsplit(x = raw, split = '\n')[[1]]
  sample(raw, 1)
}

#' @export
toolbox_verb <-function(n = 1){
  # Wall of text ----
  raw <- "abandon
abolish
abuse
accuse
address
aggravate
agitate
aid
aim
alarm
alert
alter
amaze
ambush
amuse
annihilate
annoy
antagonize
appeal
applaud
apprehend
approach
argue
arise
arouse
arrange
arrest
ask
assassinate
assault
assemble
astonish
attack
attempt
attend
auction
audition
avenge
avert
babble
badmouth
bait
ban
banish
baptize
bargain
bark
barricade
barter
bash
bawl
beautify
beckon
befriend
beg
beguile
belch
belittle
bellow
bemoan
bequeath
berate
besiege
bestow
bet
betray
bewilder
bewitch
bid
bite
blab
blame
blast
bleed
bless
blunder
blurt
boast
bother
bow
brag
break
bribe
broadcast
build
capture
careen
caress
carry
carve
catch
celebrate
challenge
charm
chase
cheat
choke
claim
climb
collaborate
collapse
collide
command
complain
compliment
conceal
concoct
condemn
confiscate
conflict
confront
confuse
congratulate
congregate
conjure
consecrate
consider
construct
contact
contaminate
contestconverse
cook
corner
corrupt
cremate
crowd
crown
customize
damage
dance
dare
dash
dazzle
deal
debate
decay
deceive
declare
decline
decompose
decorate
decree
dedicate
deduce
deface
defeat
defend
defuse
deliver
demand
demolish
denounce
deride
despair
destroy
devour
dig
disappear
disarm
discipline
discover
discriminate
discuss
disgrace
disguise
disgust
dishonor
dismount
dispel
disperse
display
displease
dispute
disrespect
disrupt
distill
distress
disturb
divert
dodge
drag
dress
drink
drop
drown
drum
dump
dupe
duplicate
earn
eat
elude
employ
enchant
end
endanger
endear
endorse
enforce
engage
engineer
enjoy
enlarge
enlighten
enlist
enquire
enrage
enrich
enroll
enshrine
ensnare
entangle
enter
entertain
entice
erect
escape
escort
evacuate
evade
evict
exaggerate
examine
excavate
exchange
exclaim
exclude
execute
exhibit
experiment
explode
expose
faint
fake
fall
falsify
fashion
flaunt
flee
fling
flirt
follow
force
foresee
foretell
forge
forgive
fracture
frame
free
freeze
fret
frighten
frustrate
fumble
fund
fuss
gallop
gamble
gather
gaze
gesture
gift
giggle
give
glare
gleam
glimpse
goad
gob
goggle
gossip
grab
grapple
grieve
guard
hamper
harass
harm
help
hide
hit
hold
humiliate
hurry
hurtle
ignite
impede
implore
imprison
infect
infest
inflame
inflict
inform
infringe
infuriate
injure
inspect
inspire
instigate
insult
interfere
interrogate
intimidate
intoxicate
investigate
invite
involve
irritate
jaywalk
jeer
joke
jostle
kick
kill
kiss
lament
laugh
leap
lecture
leer
look
loot
lose
love
lunge
lurk
maim
manhandle
march
market
massacre
meddle
mesmerize
mimic
misspell
mob
mock
murder
mutate
mutilate
nag
narrate
near
notify
obscure
observe
obstruct
offend
oppress
order
overhear
overpower
overturn
parade
parley
patrol
pelt
penalize
perform
persecute
persuade
petition
play
plead
plunder
pollute
pounce
practice
praise
preach
proclaim
prohibit
promote
pronounce
prophesize
prosecute
protect
protest
provide
provoke
prowl
pry
punch
punish
purchase
pursue
push
quarrel
query
queue
rage
raid
ransack
rebel
recite
recount
recruit
rejoice
remark
renege
repair
research
rescue
resist
restrain
resurrect
reveal
revolt
reward
ridicule
riot
rob
run
rush
salute
scamper
scare
scavenge
scream
scrounge
search
secure
seduce
segregate
seize
sell
ship
shout
shove
show
silence
sing
slaughter
sleep
smash
sob
solicit
speak
spill
spit
spy
stab
stage
startle
steal
stop
strangle
strike
subdue
suffer
summon
surround
suspect
take
taunt
tease
tempt
terrify
terrorize
thank
threaten
throw
torment
torture
trade
transform
translate
transport
trap
travel
tug
unite
unleash
unload
unveil
vandalize
vanish
victimize
violate
volunteer
wait
warn
wave
weep
welcome
whittle
wield
win
wink
witness
worship
wound
wreck
wrestle
write
yell
yield"
  # Processing ----
  raw <- strsplit(x = raw, split = '\n')[[1]]
  sample(raw, n)
}
