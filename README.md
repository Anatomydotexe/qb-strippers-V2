<div align="center">

# 💃 qb-strippers

**Animated stripper NPCs for the Gabz Vanilla Unicorn MLO**

[![FiveM](https://img.shields.io/badge/FiveM-Ready-brightgreen?style=for-the-badge&logo=fivem)](https://fivem.net)
[![QBCore](https://img.shields.io/badge/QBCore-Compatible-blue?style=for-the-badge)](https://github.com/qbcore-framework/qb-core)
[![Lua](https://img.shields.io/badge/Lua-5.4-purple?style=for-the-badge&logo=lua)](https://lua.org)
[![License](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)](LICENSE)

</div>

---

## Overview

**qb-strippers** brings the Gabz Vanilla Unicorn MLO to life by populating it with fully animated NPC strippers using native GTA V animations. No props, no extra dependencies, no performance overhead — just plug, configure, and enjoy an immersive strip club experience on your QBCore server.

Every NPC is positioned and tuned specifically for the Gabz Vanilla Unicorn layout, covering pole stages, private dance booths, and lap dance areas.

---

## Features

- **8 pre-configured NPC spots** covering every area of the Gabz Vanilla Unicorn MLO
- **Native GTA V animations** — pole dances, private dances, and dual lap dances
- **Zero server impact** — all spawning is handled entirely client-side
- **Plug & play** — works out of the box with no extra setup
- **Fully customizable** — add, remove, or tweak any NPC via a single config file
- **Latest QBCore & FiveM standards** — uses `fxmanifest.lua`, modern export style

---

## Requirements

| Dependency | Link |
|---|---|
| QBCore Framework | [qbcore-framework/qb-core](https://github.com/qbcore-framework/qb-core) |
| Gabz Vanilla Unicorn MLO | [gabzinteriors.com](https://gabzinteriors.com) |

---

## Installation

**1.** Download or clone this repository:

```bash
git clone https://github.com/Anatomydotexe/qb-strippers-V2.git
```

**2.** Drop the folder into your resources directory:

```
📁 resources/
 └── 📁 [qb]/
      └── 📁 qb-strippers/
           ├── fxmanifest.lua
           ├── config.lua
           ├── client.lua
           └── server.lua
```

**3.** Add to your `server.cfg`:

```
ensure qb-strippers
```

**4.** Restart your server or run in console:

```
refresh
ensure qb-strippers
```

---

## Configuration

All NPC positions and animations are defined in `config.lua`. No code knowledge needed — just edit the table.

```lua
Config.Stripper = {
    {
        x       = 109.05,
        y       = -1283.27,
        z       = 27.75,
        heading = 212.67,
        model   = "a_f_y_topless_01",
        dict    = "mini@strip_club@lap_dance_2g@ld_2g_p2",
        anims   = { "ld_2g_p2_s1", "ld_2g_p2_s2" }
    },
    -- Add as many entries as you want
}
```

### Config Fields

| Field | Type | Description |
|---|---|---|
| `x, y, z` | `float` | World coordinates where the NPC spawns |
| `heading` | `float` | Direction the NPC faces (0–360) |
| `model` | `string` | Ped model hash name |
| `dict` | `string` | GTA V animation dictionary |
| `anims` | `table` | One or more animation clips to loop |

---

## Default NPC Spots

| # | Location | Animation |
|---|---|---|
| 1 | Lap dance area | Lap Dance 2G — Stage 1 & 2 |
| 2 | Private booth | Private Dance Part 3 |
| 3 | Private booth | Private Dance Part 1 |
| 4 | Private booth | Private Dance Part 2 |
| 5 | Main pole stage | Pole Dance 2 |
| 6 | Side pole stage | Pole Dance 3 |
| 7 | Lap dance area | Lap Dance 2G Part 1 — Stage 1 & 2 |
| 8 | Main pole stage | Pole Dance 1 |

---

## License

Distributed under the **MIT License** — free to use, modify, and redistribute. Credit is appreciated but not required.

---

<div align="center">

Made for the FiveM community &nbsp;•&nbsp; Built on QBCore

</div>
