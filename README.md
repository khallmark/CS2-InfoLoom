# InfoLoom
InfoLoom is a Cities Skylines 2 mod that adds new UI windows with extra information.
Currently:
- Demand factors
- Demographics
- Workforce structure
- Workplaces distribution

## Features

### Demographics
- Key information about current city demographics in one place.
- Age distribution histogram that also shows cims' activity structure.

![Demographics](https://raw.githubusercontent.com/infixo/cs2-infoloom/main/docs/demographics.png)

### Demand factors
- Shows individual demand factor VALUES for each demand type. Helpful to learn actual importance of each factor.
- Enables showing all demand factors, not only 5. Useful for industrial demand which is the only one that utilizes up yo 7 factors.
- Additional section shows directly building demand for each zone type and STORAGE demand. Please note that the "main" demand factor is actually a building demand, however UI shows it as moving. In fact it doesn't move, it is just a visualization.
- Also, industrial demand is a higher value from the two: industrial building demand and storage demand.

![Demand factors](https://raw.githubusercontent.com/infixo/cs2-infoloom/main/docs/demandfactors.png)

### Workforce structure
- Shows workforce structure by education level.
- Total: all potential workers, i.e. teens and adults, excluding students, that are moved in and moving away.
- Under: cims working on positions below their education level.
- Outside: cims working outside of the city.
- Homeless: unemployed cims with no home.

### Workplaces distribution
- Shows available workplaces split into: city services, commercial sales, commercial leisure, industry extractors, industry manufacturing, and office.
- Leisure are commercial companies selling immaterial resurces.

![Workforce and Workplaces](https://raw.githubusercontent.com/infixo/cs2-infoloom/main/docs/worforce_jobs.png)

### Resources consumption
- This feature is disabled by default because it changes the data shown on the vanilla UI. Enable it in the config file by setting SeparateConsumption to true.
- Instead of showing surplus and deficit, the production UI will show commercial consumption and industrial consumption. It is imho much more informative than just surplus/deficit, because it also tells what causes said surplus or deficit.
- Disclaimer. I don't yet how to change existing UI, so the titles "Surplus" and "Deficit" will still be there. Sorry.

![Resources consumption](https://raw.githubusercontent.com/infixo/cs2-infoloom/main/docs/consumption.png)


## Technical

### Requirements and Compatibility
- Cities Skylines II v1.0.18f1 or later; check GitHub or Discord if the mod is compatible with the latest game version.
- BepInEx 5.
- HookUI v0.3.5 or later.
- The mod does NOT modify savefiles.
- The mod does NOT modify any game systems.

### Installation
1. Place the `InfoLoom.dll` file in your BepInEx `Plugins` folder.
2. The config file is automatically created in BepInEx/config folder when the game is run once.

### Known Issues
- When Demographics window is open, the game stops responding to the mouse commands.

### Changelog
- v0.4.0 (2023-12-22)
  - New feature: demographics.
- v0.3.0 (2023-12-20)
  - New features: worforce structure and workplaces distribution.
- v0.2.2 (2023-12-17)
  - Demand factors window is reformatted, to be more aligned with game's visual style.
  - New features: shows all factors, building demand and resources consumption.
- v0.1.0 (2023-12-16)
  - Initial build, includes Demand Factors.

### Support
- Please report bugs and issues on [GitHub](https://github.com/Infixo/CS2-InfoLoom).
- You may also leave comments on [Discord1](https://discord.com/channels/1169011184557637825/1185664314401632306) or [Discord2](https://discord.com/channels/1024242828114673724/1185672922212347944).

## Disclaimers and Notes
