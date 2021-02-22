# Solstice Station's Modular Folder,
# based on MITHRA (From bastion station?).
---

## Why do we use it?
Trying to keep up to date with Bay as an upstream while also creating unique modifications to the code results in a mess of merge conflicts that can be impossible to keep up with. By keeping our unique code in this folder, conflicts can be avoided as nothing will overwrite the files that the upstream may modify.

## Please mark your changes!
All modifications to non-Solstice files should be marked. A simple `//Solstice change - reason` will suffice.

## Icons, code, and sounds
Icons are notorious for conflicts. Because of this, ALL NEW ICONS must go in the "modular_solstice/icons" folder. There are to be no exceptions to this rule. Sounds rarely cause conflicts, but for the sake of organization they are to go in the "modular_solstice/sounds" folder. No exceptions, either. Unless absolutely necessary, code should go in the "modular_solstice/code" folder. Small changes outside of the folder should be done with hook-procs. Larger changes should simply mirror the file in the "modular_solstice/code" folder.

# MODIFIED FILES
If for whatever reason you are unable to maintain modularity and have to modify upstream files, please update the list below to list modified upstream files.
---
- Custom ears, tails, wings and species:
  - `code/game/dna/dna2.dm`
  - `code/game/dna/dna2_helpers.dm`
  - `code/modules/mob/living/carbon/human/update_icons.dm`
  - `code/modules/mob/living/carbon/human/examine.dm`
  - `code/modules/organs/external/head.dm`
  - `code/modules/organs/external/_external_icons.dm`
  - `code/modules/organs/organ.dm`
  - `code/modules/client\preference_setup\02_body.dm`
  - `code/game/gamemodes/changeling/changeling_powers.dm`
  
- Other Stuff:
  - `code/game/mecha/mecha.dm`
  - `code/game/modules/mob/living/human/descriptors/_descriptors.dm`
  - `code/game/objects/items.dm`