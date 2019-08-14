# Minecraft Slime Rain Changelog

## [mc-slimerain v0.2](https://github.com/TheDarkNova/mc-slimerain/releases/tag/v0.2)

### Features added
- Slimes will now no longer spawn where there is no sky access
- Slime rain will now have a 5% chance to spawn at the beginning of every day, decreased from 10%
- Slimes now spawn at an average rate of 1 slime every 10 seconds, as the chance for them to spawn has been lowered to 1/200 every tick
- Slimes now have a chance to be size 1, 2 or 3 when they spawn
- Slimes now spawn in a 20 block radius around the player, rather than directly above them
- Slimes now spawn 50 blocks above the player's `y` position, rather than always at `y=100`
- Added advancement functionality ("Bouncy-bouncy skeleton", "Obtain slime boots", "Sticky situation", "That's a big slime")

### Bugs Fixed
- Slime could spawn in the Nether
- King slime could only be summoned once per world save
- The /give function for the slime boots gave slime boots with unbreaking 3 instead of no enchantments
- The survival advancements

## [mc-slimerain v0.1](https://github.com/TheDarkNova/mc-slimerain/releases/tag/v0.1)

### Features added
- Added slime rain event, 10% chance at the beginning of every day to start
- Added King Slime
- King Slime will spawn if players kill 100 slimes during a slime rain
- Slimes spawn at `y=100` at the players position
- Slime have a 1/100 chance to spawn every tick, making the average spawn rate 1 slime every 5 seconds
- Skeletons will transform into slime jockeys during a slime rain
- Added survival advancements (no functionality yet)
- Slime rain event lasts for 10 real time minutes, or until the King Slime is killed
- Added slime boots, a rare drop from slimes during a slime rain, gives jump boost 3 to an entity wearing them
