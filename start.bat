@echo off

::Map list
set strMapList[0]=Canyon?Scenario=Scenario_Crossing_Checkpoint_Security
set strMapList[1]=Trainyard?Scenario=Scenario_Trainyard_Checkpoint_Security
set strMapList[2]=Prison?Scenario=Scenario_Prison_Checkpoint_Security
set strMapList[3]=Farmhouse?Scenario=Scenario_Farmhouse_Checkpoint_Security
set strMapList[4]=LastLight?Scenario=Scenario_LastLight_Checkpoint_Security
set strMapList[5]=Mountain?Scenario=Scenario_Summit_Checkpoint_Security
set strMapList[6]=Gap?Scenario=Scenario_Gap_Checkpoint_Security
set strMapList[7]=OilField?Scenario=Scenario_Refinery_Checkpoint_Security
set strMapList[8]=Bab?Scenario=Scenario_Bab_Checkpoint_Security
set strMapList[9]=Precinct?Scenario=Scenario_Precinct_Checkpoint_Security
set strMapList[10]=Tideway?Scenario=Scenario_Tideway_Checkpoint_Security
set strMapList[11]=Town?Scenario=Scenario_Hideout_Checkpoint_Security
set strMapList[12]=Compound?Scenario=Scenario_Outskirts_Checkpoint_Security
set strMapList[13]=Ministry?Scenario=Scenario_Ministry_Checkpoint_Security
set strMapList[14]=Sinjar?Scenario=Scenario_Hillside_Checkpoint_Security
set strMapList[15]=PowerPlant?Scenario=Scenario_PowerPlant_Checkpoint_Security
set strMapList[16]=Citadel?Scenario=Scenario_Citadel_Checkpoint_Security



::Gamemode (Please pick the right gamemode for the right map and comment out the rest with :: Some will only work with specific map)
::set strGameMode=Firefight
::set strGameMode=Frontline
::set strGameMode=Occupy
::set strGameMode=Skirmish
::set strGameMode=CaptureTheBase
::set strGameMode=TeamDeathmatch
::set strGameMode=Filming
::set strGameMode=Mission
set strGameMode=Checkpoint
::set strGameMode=CheckpointHardcore
::set strGameMode=CheckpointTutorial
::set strGameMode=Operations
::set strGameMode=Outpost
::set strGameMode=Domination



::Mutator Name           	Description

::AllYouCanEat 	            Start with 100 supply points.
::AntiMaterielRiflesOnly 	Only anti-materiel rifles are available along with normal equipment and explosives.
::BoltActionsOnly 	        Only bolt-action rifles are available along with normal equipment and explosives.
::Broke 	                Start with 0 supply points.
::BudgetAntiquing 	        Normal equipment and explosives, but limited to old and inexpensive weapons.
::BulletSponge          	Health is increased.
::Competitive            	Equipment is more expensive, rounds are shorter, and capturing objectives is faster.
::CompetitiveLoadouts 	    Player classes are replaced with those from Competitive.
::FastMovement 	            Move Faster.
::Frenzy 	                Fight against AI enemies who only use melee attacks. Watch out for special enemies.
::FullyLoaded 	            All weapons, equipment, and explosives in the game are available in the Loadout Menu
::Guerrillas 	            Start with 5 supply points.
::Gunslingers           	Kill the enemy more than they kill you with a big stinkin' revolver. And explosives.
::Hardcore              	Mutator featuring slower movement speeds and longer capture times.
::HeadshotOnly 	            Players only take damage when shot in the head.
::HotPotato 	            A live fragmentation grenade is dropped on death.
::LockedAim 	            Weapons always point to the center of the screen.
::MakarovsOnly              Makarovs are the only option.
::NoAim 	                Aiming down sights is disabled.
::NoDrops 	                No scavenging allowed.
::PistolsOnly 	            Only pistols are available along with normal equipment and explosives.
::Poor 	                    Start with limited supply.
::ShotgunsOnly 	            Only Shotguns are available along with normal equipment and explosives.
::SlowCaptureTimes 	        Objectives will take longer to capture.
::SlowMovement 	            Move slower.
::SoldierOfFortune      	Gain supply points as your score increases.
::SpecialOperations 	    Start with 30 supply points.
::Strapped 	                Start with 1 supply point.
::Ultralethal 	            Everyone dies with one shot.
::Vampirism 	            Receive health when dealing damage to enemies equal to the amount of damage dealt.
::Warlords 	                Start with 10 supply points.


::Ruleset (Please pick one only and comment out the rest with :: Some might not work)
::Using Ruleset will override some of your game.ini config. Expect some config not to work
::set strRuleSet=CheckpointFrenzy
set strRuleSet=CompetitiveFirefight
::set strRuleSet=CompetitiveTheater
::set strRuleSet=MatchmakingCasual
::set strRuleSet=OfficialRules

::RNG to pick random map
set /A nRng=%RANDOM% %%19
setlocal enableDelayedExpansion
set strMap=!strMapList[%nRng%]!

::GSLTToken from https://steamcommunity.com/dev/managegameservers with App ID 581320
C:\Users\Administrator\Desktop\sandstorm\game\Insurgency\Binaries\Win64\InsurgencyServer-Win64-Shipping.exe %strMap%?port=27102?queryport=27131?MaxPlayers=6?Password=killer?game=%strGameMode% -mutators=FullyLoaded,NoRestrictPlus -log -AdminList=Admins -MapCycle=MapCycle.txt -GameStats -GSLTToken= -EnableCheats -NoEAC -Mods -ModList=Mods.txt        



