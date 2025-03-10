Below is the complete, copy-paste-ready GitHub README in markdown format:

# Asgards Glory Botting & Openkore Automation

_Automating gameplay on a fun Ragnarok server with botting allowed and custom Openkore configurations._

## Overview

This project automates character progression and in-game tasks on the Asgards Glory server. It leverages Openkore for automation and includes a series of macros to manage leveling, job changes, party formation, and NPC interactions. Key features include:
  
- **Botting Allowed:** Enjoy abstract automation via Openkore.
- **Character Progression:** Automated leveling from Novice to Stalker (via Thief, Rogue, High Thief).
- **Custom Quests & No P2W Features:** All items are farmable, with a variety of custom quests.
- **Automation & Macros:** From leveling (NoviceLevelUp) to job transitions (JobMasterControl) and party creation.
- **Integrated Logging:** Modified EXP output and automatic README table updates via Openkore log integration.

---

## Roadmap

| Status | Task |
|--------|------|
| ![in progress - blue](https://img.shields.io/badge/in%20progress-blue?style=flat-square) | **NoviceLevelUp:** Create a macro for leveling a novice character from 1/1 to Thief when below job level 10. Implement switch-case logic to determine if the character should change to Thief based on its name. |
| ![in progress - blue](https://img.shields.io/badge/in%20progress-blue?style=flat-square) | **JobMasterControl:** Upon reaching job level 10, read the character name (e.g., “Stalker3”) and trigger the appropriate job change process (Novice → Thief or Thief → Rouge, etc.). |
| ![to do - lightgrey](https://img.shields.io/badge/to%20do-lightgrey?style=flat-square) | **Party Creation Macro:** After the job change, if the character name ends with “1”, create a party (with EXP and item share) and invite Stalker2 to Stalker8. |
| ![to do - lightgrey](https://img.shields.io/badge/to%20do-lightgrey?style=flat-square) | **@autoloot & @go Commands:** Develop standalone automacros for @autoloot and implement @go both as standalone and integrated into other routines. |
| ![to do - lightgrey](https://img.shields.io/badge/to%20do-lightgrey?style=flat-square) | **Platinum Skill Macro:** After the job change, trigger a macro to interact with the Platinum Skill NPC for automatic skill addition. |
| ![work in progress - yellow](https://img.shields.io/badge/work%20in%20progress-yellow?style=flat-square) | **Maintenance Routine:** Create a maintenance macro that checks if a non-novice character is missing equipment (but has zeny) at certain levels (e.g., level 20) and purchases the necessary items. |
| ![to do - lightgrey](https://img.shields.io/badge/to%20do-lightgrey?style=flat-square) | **EXP Logging Update:** Modify Openkore's exp.txt output to include character names and average XP/hour data, and integrate these updates into the README table automatically. |
| ![to do - lightgrey](https://img.shields.io/badge/to%20do-lightgrey?style=flat-square) | **NPC Interaction Documentation:** Create detailed documentation for automacros interacting with NPCs (Healer, Skill Resetter, Stat Resetter, Job Changer, and Platinum Skill NPC). |

---

## Macro Flow Diagram

Below is a simplified flow diagram outlining the macro interactions on login:

```mermaid
flowchart TD
    A[Login]
    B{Is character a Novice?}
    C[Trigger NoviceLevelUp Macro]
    D{Job Level < 10?}
    E[Continue leveling to Job Level 10]
    F[Job Level reached 10]
    G[Read Character Name]
    H{Character name contains digit?}
    I[If Novice, change to Thief]
    J[Trigger JobMasterControl Macro]
    K[Job Change Process [e.g., Thief to Rouge/others]]
    L[If name ends with "1": Create Party & Invite Stalker2-Stalker8]
    M[Post-Job Change: Trigger Platinum Skill Macro]
    N[Check equipment & zeny for Maintenance tasks]
    
    A --> B
    B -- Yes --> C
    C --> D
    D -- Yes --> E
    D -- No --> F
    F --> G
    G --> H
    H -- Novice path --> I
    I --> J
    H -- Otherwise --> J
    J --> K
    K --> L
    L --> M
    M --> N
```

*This diagram represents the decision flow for macro interactions, including leveling, job change, party creation, and subsequent maintenance tasks.*

---

## Character Progression

The following table will be updated automatically with character stats via Openkore modifications and Git commits:

| Character   | Level | Job Class | Current Lockmap             | Average XP/hour | Current Goal       | History/Changelog         |
|-------------|-------|-----------|-----------------------------|-----------------|--------------------|---------------------------|
| Stalker1-8  | 1/1   | novice    | Prontera Field (prt_fild05) | ?               | Job Class Thief    | [Link to Stalker1-8.md]() |


*Each character’s progress and changelog are stored in separate markdown files (e.g., Stalker1.md) that can be auto-updated from Openkore logs.*

---

## NPC Interaction

A dedicated section is maintained for NPC interactions, including:

- **Healer NPC:** Used when health is low.
- **Skill Resetter & Stat Resetter:** Triggered for stat or skill reallocation.
- **Job Changer NPC:** Managed by the JobMasterControl macro.
- **Platinum Skill NPC:** Activated post-job change to add the Platinum Skill automatically.

Each NPC interaction is documented with its own automacro and detailed logging.

---

## Additional Features & Integration

- **@autoloot & @go Commands:** Both have standalone automacros and are integrated into the overall automation routine.
- **Logging & README Integration:** Openkore’s exp.txt is modified to tag logs with character names and average XP/hour, with the data auto-updating the README table (or an external spreadsheet) via Git commits.
- **Visual Flow Diagrams & Detailed Documentation:** Visual aids (like the flow diagram above) are provided to map out the macro processes along with in-depth documentation for each automacro.

---

## ChatGPT Reference

This project documentation was developed in collaboration with ChatGPT using [this chat link](https://chatgpt.com/c/67cf6cb7-f0d0-8008-beb5-098a7cb72a17).  
*Keep this reference link saved for future updates and continued collaboration.*