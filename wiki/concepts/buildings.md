# Buildings of the pen and the sword

The Persianate Sultanate has two signature building chains: the **Dīwān chain**, which projects the chancery's writ outward from the capital, and the **iqṭāʿ grant**, which formalizes an *amīr*'s authority over a rural parcel the chancery cannot reach. They are deliberately mirrored: the Dīwān is a Tāzīk *institution* with Tāzīk consequences; the iqṭāʿ is a Tāzīk *instrument* with Türk consequences. Both are gated to `government_type = government_type:persianate_sultanate` and disappear if you leave that government slot.

This page describes what each building does and what gates it.

## The Dīwān chain

Three buildings, one upgrade path. Only one rank of the chain sits in your capital at a time; provincial chanceries sit in non-capital locations.

### Local Dīwān (`local_diwan`)

The provincial chancery branch — the *walī*'s secretariat: tax rolls, land registers, the *qāḍī*'s waqf records, audits of bazaar weights.

**Where it sits.** One per province, in the province's chief town. `is_capital = no`. Town, city, or megalopolis rank — not rural.

**Gates.**

- Country: `government_type = persianate_sultanate`.
- Province: `local_control > 0.5`. The Local Dīwān cannot be built where the chancery cannot yet reach.
- One per province, enforced by a custom tooltip check.

**Destroy.** `can_destroy = local_control < 0.3`. The chancery does not voluntarily shutter its own offices; you can only demolish a Local Dīwān once your grip on the location has slipped to near-collapse.

**What it does.**

- `local_proximity_source = 33` — the same kind of proximity emission a governor's seat puts out, at roughly 40% of a `local_governor`'s 80. Authority radiates outward from the Local Dīwān.
- `local_nobles_max_literacy = +10`, `local_burghers_max_literacy = +10` — the chancery culture lifts both layers that staff and promote into it.
- `local_diwan_estate_power = +0.10` — visible Dīwān presence in the province.
- Pop-attraction modifiers for nobles, clergy, and burghers in the location.
- Maintenance: paper, books, fine cloth (from `local_diwan_maintenance`).

**On build.** Adds a small Farsi-culture noble pop to the location, pushes the country `+2` toward Tāzīk, gives `+0.03` Dīwān satisfaction and `−0.02` Amirs satisfaction. On destroy: `−0.05` Dīwān satisfaction (a public defeat for the chancery).

### Regional Dīwān (`regional_diwan`)

The capital chancery of a **duchy-rank** Persianate sultanate. The Injuid chancery in Shīrāz is the Persian-led model; Jalayirid Baghdad is the Türk-led counterpart, where the chancery persisted because the city could not be governed without it.

**Where it sits.** Capital-only. Town/city/megalopolis.

**Gates.**

- Country: `government_type = persianate_sultanate`, `country_rank_level >= 2` (duchy).
- No Türk/Tāzīk axis gate — this is the historical baseline of any plateau sultanate.

**What it does.**

- `global_max_control = +0.015`
- `global_crown_estate_power = +0.05`
- `global_diwan_estate_power = +0.15`
- `tax_income_efficiency = +0.015`

**On build.** Small noble pop in the capital; `+2` Tāzīk axis shift.

**Upgrade.** When the country reaches kingdom rank and qualifies for the realm-grand chancery, `central_diwan` declares `obsolete = regional_diwan` — the Regional Dīwān is folded into the Dīwān al-Mamālik. Same building, scaled up.

### Dīwān al-Mamālik (`central_diwan`)

The **realm-grand chancery**. Buyid in origin, Saljūq in systematization, Ilkhanid in scale. This is the central state institution. Exactly one exists at game start in 1337: in Tabrīz, in Chobanid hands.

**Where it sits.** Capital-only. City or megalopolis (not town).

**Gates.**

- Country: `government_type = persianate_sultanate`, `country_rank_level >= 3` (kingdom).
- **Either** `societal_value:turk_vs_tazik >= 50` (the realm has drifted Tāzīk on its own), **or** `has_variable = restored_persian_bureaucracy` (you paid for the chancery class via the `restore_persian_bureaucracy` action).

This is the only build gate in the mod tied directly to the Türk–Tāzīk axis. A Türk-leaning kingdom that wants the realm-grand chancery must either swing Tāzīk first or earn the variable.

**What it does.**

- `global_max_control = +0.04`
- `global_crown_estate_power = +0.20`
- `global_diwan_estate_power = +0.40`
- `tax_income_efficiency = +0.04`

These are the largest building-sourced bonuses in the chain by a wide margin. The Dīwān al-Mamālik is a strategic asset.

**On build.** Spawns a Farsi-culture noble pop in the capital (the founding scribal staff) and shifts the country `+5` toward Tāzīk. Founding the chancery is itself a Tāzīk act — the bureaucratic estate institutionalizes here, and the axis registers the choice.

**Persistence.** Removed only if the location stops being the capital, or if the country leaves `persianate_sultanate`. The axis/variable gate is for *earning the right to build* — not for keeping it.

### Strategic implications

- One Dīwān al-Mamālik exists at game start, in **Tabrīz**. The opening Jalayirid–Chobanid wars are partly about who inherits it.
- A new realm cannot construct one until it is a kingdom and has either drifted Tāzīk (axis ≥ 50) or paid the cost of the `restore_persian_bureaucracy` action. That makes the central chancery either a long-run investment or a war prize.
- Even the duchy-tier Regional Dīwān is a meaningful unlock — `+0.05` crown power, `+0.15` Dīwān power, `+0.015` tax efficiency, and the `+2` axis push on construction.

## The iqṭāʿ grant (`iqta_grant`)

The mirror institution to the Local Dīwān: a chancery-registered fiscal grant assigning the revenue of a rural parcel to an *amīr* in exchange for the upkeep of his retinue.

**Where it sits.** Rural locations only. `rural_settlement = yes`, no town/city/megalopolis.

**Gates.**

- Country: `government_type = persianate_sultanate`, AND `has_estate_privilege = amirs_iqta_grant` OR `has_estate_privilege = amirs_hereditary_tuyul`. **You cannot build iqṭāʿ grants without first granting one of the two amir land-grant privileges.** This is the single most important thing to know about your opening manpower situation.
- Province: `local_control < 0.5`. The iqṭāʿ historically went to parcels the chancery could not reach directly. The *amīr*'s tribal authority replaces the absence of central authority. Exact opposite of the Local Dīwān's control gate.
- One iqṭāʿ per location.

**Destroy.** `can_destroy = local_control > 0.7`. Revoking an iqṭāʿ was historically the chancery's hardest political act — possible only once the Dīwān had reasserted direct order in the parcel. Below 70 control the *amīr*'s authority is still the only authority.

**What it does (raw modifiers, always-on).**

- `local_nobles_pop_growth = +0.10`
- `local_nobles_max_literacy = −10` — the *amīr*'s new tribal arrivals live off horses and herds, not registers; they do not promote into the *dīwān* class.
- `local_max_control = −0.05` — the *amīr*'s authority is a substitute for the chancery's; the grant formalizes the gap.
- `local_amirs_estate_power = +0.75`
- `diwan_estate_target_satisfaction = −0.002`
- `amirs_estate_target_satisfaction = +0.01`

**What it does (employment modifiers, scaled with staffing).**

- `local_nobles_desired_pop = +0.1` (flat) and `+0.02` scaled — supports the *amīr*'s household and a real Türkmen host.
- `local_levy_size_modifier = +0.20` — this is your manpower.

**On build.** Adds a noble pop in the country's culture and religion, shifts `−1` Türk (away from Tāzīk), `−0.02` Dīwān satisfaction, `+0.01` Amirs satisfaction. On destroy: `−0.05` Amirs satisfaction.

### Why the iqṭāʿ matters

The iqṭāʿ is the only rural-location source of `local_levy_size_modifier` and `local_amirs_estate_power` in the Persianate baseline. A realm without iqṭāʿ grants is a realm whose Amirs are politically present but militarily inactive — they will not muster. Combined with the demilitarized peasantry baked into the baseline `persianate_bureaucracy_reform` (`peasants_estate_levy_size = −0.85`), this means **a Persianate state without iqṭāʿ has almost no field army**.

The trade is in [the privilege ledger](estate-privileges.md): you grant either the `amirs_iqta_grant` (service-conditioned) or the `amirs_hereditary_tuyul` (heritable) privilege, you can then build iqṭāʿ in your rural locations, and your Amirs answer the muster — at the cost of rural control, Tāzīk drift, and the cabinet/efficiency disadvantages of a Türk-coded state.

## The clay pit and the kiln

A smaller point that the mod is opinionated about: Iranic states **build in brick**, not timber. The base game's tendency to make plateau states cut wood from forests that do not exist is geographically absurd. The mod adds a `desert_clay_pit` building chain that feeds an `adobe_maker` so that the plateau's construction economy uses the materials the plateau actually had — fired and glazed brick, as God and geography intended.

See also: [Dīwān estate](diwan-estate.md), [Amirs estate](amirs-estate.md), [Military system](military-system.md), [Estate privileges](estate-privileges.md).
