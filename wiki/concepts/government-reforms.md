# Government reforms

The Persianate reform tree spans Ages 1–3 of the post-Ilkhanid arc:

- **Age 1** — what replaces the khan (the legitimacy crisis).
- **Age 2** — the trifurcation: Tīmūrid synthesis vs Türkmen confederation vs Iranian kingship, with the messianic axis and the *ṣāḥib-qirān* overlay sitting on top.
- **Age 3** — the Safavid fusion and its disciplining: the qizilbāsh / ghulām / *tofangchi* military dilemma, the Twelver vs Sunni religious settlement, and the *soyurghāl* vs *khāṣṣa* land-political pair.

This page walks the tree. Conventions:

- All reforms are top-gated by `government = persianate_sultanate`.
- Mutual exclusivity is via `potential = { NOT = { has_reform = X } }`.
- Some reforms (notably `chinggisid_regency`) are declared `locked = always = yes` and are picked by event, not from the menu.
- Magnitudes use the `ez_*` script value family in `00_eranzamin_flavor_values.txt`.

The exact modifier values are authoritative in the file (`in_game/common/government_reforms/01_persian_reforms.txt`) and in the in-game tooltips.

## Age 1 — the baseline reform

**`persianate_bureaucracy_reform`** is auto-granted and not pickable. It is the constitution of the Persianate Sultanate, and the mechanics most other reforms read or modify start here. The effects:

- `country_cabinet_efficiency = +0.1`, `global_diwan_estate_power = +0.25`, Dīwān satisfaction `+0.05`, `monthly_towards_centralization = +0.1` — the chancery is the default winner.
- **`diwan_estate_allowed_in_cabinet = yes`, `amirs_estate_allowed_in_cabinet = no`** — the cabinet is the Dīwān's. Crossing this requires the [Umarāʾ at the Dīwān privilege](estate-privileges.md).
- **`amirs_estate_allowed_leading_military = yes`, `diwan_estate_allowed_leading_military = no`, `burghers_estate_allowed_leading_military = no`** — the military is the Amirs'. Crossing this requires the Tāzīk Command of Arms privilege.
- **Demilitarized sedentary population:** `peasants_estate_levy_size = −0.85`, `diwan_estate_levy_size = −1`. The peasants are not your army. The scribes are certainly not. `tribes_estate_levy_size = +0.15` — your levy comes from tribes (see [the military system](military-system.md)).
- **Urban vs rural control:** `global_max_urban_control = +0.15`, `global_max_rural_control = +0.05`. Persianate states default to legible cities and opaque countryside.
- `global_estate_max_tax = +0.1` — assessment ceilings are legitimately higher than Europe's.
- `tax_income_efficiency = +0.1`, `cultures_capacity = +1`.

Everything downstream — reforms, privileges, decrees — sits on this baseline.

## Age 1 — the legitimacy triad

In whose name is the khuṭba read and the *sikka* struck? Pick one. Mutually exclusive. The choice is presented by the `ilkhanate_flavor.1` event at game start (see [the Erānzamīn situation](eranzamin-situation.md) for the event mechanics in detail).

### `chinggisid_regency` — rule as regent for a Borjigin puppet

`locked = always = yes`. **You cannot pick this from the reform menu.** The reform is granted by `ilkhanate_flavor.1` option A (or the tag-specific D/E options for Chobanids and Jalayirids), which also spawns the puppet character and binds it to your country.

Effects:

- `monthly_legitimacy = +0.5` — the cheapest, fattest legitimacy stream in the Age 1 tree.
- `tribes_estate_levy_size = +0.35`, `global_tribesmen_pop_growth = +0.2` — tribes rally to the steppe-coded throne.
- `global_estate_target_satisfaction = +0.075` — broad happiness; "doesn't rock the boat. for now."
- `monthly_prestige = −0.2` — but the renown accrues to the puppet, not to you.
- `global_max_control = −0.03` — the khan is the legal ruler; you are a regent.
- **`country_cabinet_efficiency = ez_reform_cabinet_malus`** — cancels the baseline's centralizing pull.
- `monthly_towards_decentralization = ez_reform_decentralization_push`, `monthly_towards_turk = +0.1`.

This is the trap with the best terms. The recurring crisis comes from `ilkhanate_flavor.2` (each puppet's death) — see the Erānzamīn page.

### `farr_i_izadi` — declare Iranian kingship

The mirror-for-princes path: Niẓām al-Mulk's *Siyāsatnāma*, Ṭūsī's *Akhlāq-i Nāṣirī*, Ghazālī's *Naṣīḥat al-Mulūk*, later Davānī. Injuid–Muẓaffarid–Kart practice. Picked via `ilkhanate_flavor.1` option C.

Effects:

- `monthly_legitimacy = −0.25` — you must pay legitimacy upkeep continuously to hold this claim. The hard path.
- `stability_decay = +0.05` — the realm bleeds while the kingship doctrine is being established.
- `monthly_towards_centralization = +0.05`, `monthly_towards_tazik = +0.05`.
- Dīwān `+0.075` (or *ez_priv_sat_large*), Burghers strongly favored; **Amirs `−0.15`, Tribes `−0.10`, Clergy `−0.05`**.
- `monthly_amirs_estate_rebel_growth = +0.005`, `monthly_tribes_estate_rebel_growth = +0.005`.
- `antagonism_received_modifier = +0.15` — every regency state in the Erānzamīn IO gets a casus belli on you (from the event, not the reform).

A note on rationale: the friction is **not theological**. By 1337, *farr*, *ẓill Allāh*, and Anūshīrvān-as-just-king are standard Islamic kingship doctrine — praised in the very mirrors the clergy teach. The friction is institutional (by what right do you crown yourself when you have bypassed the ʿAbbāsid?) and political (a settled Persian *shāh* has no place for the steppe aristocracy that fights his wars).

### `ghazi_sultanate` — sovereignty under the caliphal shadow

The Islamic exit. Legitimacy through *ghazā*. Muslim-religion-group only. Frontier-marcher, mobile, not chancery-coded. Picked via `ilkhanate_flavor.1` option B.

Effects:

- `monthly_legitimacy = +0.1` — quiet, steady stream. Earned through *ghazā* rather than borrowed.
- `antagonism_received_modifier = −0.10`, `global_manpower_modifier = +0.10`, `land_morale = +0.05`, `tolerance_own = +1`.
- **Clergy satisfaction `+ez_priv_sat_large`, `global_clergy_estate_power = +0.50`** — the *ʿulamāʾ*'s preferred patron.
- `monthly_prestige = +0.05`, `army_tradition_from_battle = +0.15`.
- `monthly_towards_turk = +0.05`, `monthly_towards_decentralization = +0.05`, `monthly_towards_spiritualist = +0.10`, `monthly_towards_jurisprudence = +0.10`.

`years = 1` — there is a one-year delay on the reform's adoption (correspondence with the Cairo Caliph takes time).

## Age 1 — the circle of equity (companion)

**`circle_of_equity_reform`** is the settled state's own theory of itself — the *dāʾira-yi ʿadālat* of Ṭūsī and Davānī. **Not exclusive** with the *farr*/*ghazā* options (it reads as the Tāzīk companion to `farr_i_izadi`); **explicitly excluded under `chinggisid_regency`** (the borrowed Chinggisid mandate cannot articulate this doctrine).

Effects: `tax_income_efficiency = +0.15`, `global_manpower_modifier = +0.10`, `court_spending_cost_modifier = +0.10`, Peasants satisfaction `+0.05`, `monthly_towards_centralization = +0.05`.

`years = 10` — a long adoption window.

## Age 2 — the trifurcation

Post-Ilkhanid Iran splits along the dyad. Three primary state-forms; mutually exclusive.

### `timurid_synthesis` — the Shāhrukh / Herāt model

Drops the puppet khan, subordinates *yāsā* to *sharīʿa*, Islamicizes and Persianizes the Tīmūrid state. The dyad-friction reducer: pushes both poles equally, so the net drift cancels.

Effects: Amirs/Dīwān satisfaction both `+ez_priv_sat_major`, `global_amirs_estate_power = +0.10`, `global_diwan_estate_power = +0.10`, `country_cabinet_efficiency = +0.05`, `cultural_tradition_modifier = +0.05`, urban-control bonus, `monthly_towards_turk = +0.025` and `monthly_towards_tazik = +0.025` (matched small pulls), `monthly_towards_centralization = +0.05`.

### `turkmen_confederation` — the Aq/Qara Qoyunlu *ulūs*

Rule as a tribal federation. Uzun Ḥasan is the model. Tribes stay tribesmen.

Effects: `army_heavy_cavalry_power = +0.15`, `army_light_cavalry_power = +0.15`, `land_morale = +0.05`, `global_amirs_estate_power = +0.20`, Amirs satisfaction `+ez_priv_sat_major`, `amirs_estate_levy_size = +0.20`, `tribes_estate_levy_size = +0.20`, **`block_tribal_promotion = yes`, `global_tribesmen_assimilation_blocked = yes`** — the tribes are not converted into a settled population. `monthly_towards_turk = +0.10`, `monthly_towards_decentralization = +0.10`, `global_max_rural_control = −ez_amir_rural_malus`.

### `iranian_kingship` — a settled Persian dynasty on a compact realm

Kart, Muẓaffarid, Injuid. **Requires `has_reform = government_reform:farr_i_izadi`** — you must have already declared the *farr* in Age 1. No Turco-Mongol military aristocracy on top.

Effects: `tax_income_efficiency = +0.10`, `country_cabinet_efficiency = +0.10`, `monthly_legitimacy = +ez_reform_legitimacy_minor`, `global_diwan_estate_power = +0.15`, Dīwān satisfaction `+ez_priv_sat_major`, `monthly_towards_centralization = +0.10`, `monthly_towards_tazik = +0.10`, urban-control bonus. The compact-realm limitation: `global_max_rural_control = −ez_amir_rural_malus_small`, `global_manpower_modifier = −0.10`, `army_heavy_cavalry_power = −0.10`.

## Age 2 — the heterodox axis (overlay)

**`mushasha_messianism`** — the Mushaʿshaʿ–Ḥurūfī–Sarbadār apocalyptic alternative. Muslim-only. Not strictly exclusive with the trifurcation; it overlays whichever primary state-form you chose, and is the thematic bridge to `murshid_i_kamil` in Age 3.

Effects: `land_morale = +ez_reform_morale_big`, `global_manpower_modifier = +0.10`, `monthly_towards_centralization = +0.05` (charismatic concentration), `tolerance_own = −1`, **`global_clergy_estate_power = −0.15`, Clergy satisfaction `−0.10`** (the formal *ʿulamāʾ* are sidelined), `tolerance_heretic = +2`, `stability_cost = +0.10`.

## Age 2 — the universalist overlay

**`sahib_qiran`** — Tīmūr's astrological-conqueror claim, the Lord of the Conjunction. Sits on top of whichever primary state-form you chose; not exclusive with anything.

Effects: `land_morale = +0.05`, `army_tradition_from_battles = +0.25`, `monthly_legitimacy = +ez_reform_legitimacy_minor`, `antagonism_received_modifier = −0.05`, `monthly_war_exhaustion = −0.02`, `stability_cost = −0.05`.

## Age 3 — the military dilemma

Otlukbeli (1473) and Chāldirān (1514) make the cavalry/gunpowder dilemma bleed. The qizilbāsh / ghulām pair is the central rivalry; the *tofangchi-topchi* gunpowder corps coexists with either.

### `qizilbash_aristocracy_reform`

The Türk cavalry aristocracy — heart of early Safavid power and the qizilbāsh *khāns* of Anatolia and Azerbaijan. **Shīʿa-only**. Mutually exclusive with `ghulam_system_reform`.

Effects: `army_heavy_cavalry_power = +0.20`, `army_light_cavalry_power = +0.20`, `land_morale = +0.10`, `global_amirs_estate_power = +0.20`, Amirs satisfaction `+ez_priv_sat_major`, `tolerance_own = −1`, `global_max_rural_control = −ez_amir_rural_malus`, `monthly_towards_turk = +0.10`, `monthly_towards_decentralization = +0.10`.

### `tofangchi_topchi_corps`

The gunpowder answer — muskets and field artillery. Coexists with either qizilbāsh or ghulām. Centralizing, urban-coded, expensive, and resented by the cavalry estates.

Effects: `army_infantry_power = +0.15`, `army_artillery_power = +0.15`, `discipline = +0.05`, `army_maintenance_efficiency = −0.10`, `global_amirs_estate_power = −0.10`, Amirs satisfaction `−0.05`, urban-control bonus, `monthly_towards_centralization = +0.05`, `monthly_towards_tazik = +0.05`.

### `ghulam_system_reform`

ʿAbbās I's Caucasian slave-corps, built specifically to break qizilbāsh power. Salaried, loyal to the *shāh* alone, staffed by Georgian/Circassian/Armenian converts. **Muslim-only**, mutually exclusive with `qizilbash_aristocracy_reform`.

Effects: `discipline = +0.05`, `global_manpower_modifier = +0.15`, `army_maintenance_efficiency = −0.15`, **`global_amirs_estate_power = −0.25` and a further `−0.15` (cumulative malus)**, Amirs satisfaction `−0.10`, `global_diwan_estate_power = +0.20`, Dīwān satisfaction `+ez_priv_sat_major`, `monthly_towards_quality = +0.10`, `monthly_towards_centralization = +0.10`, `monthly_towards_tazik = +0.10`.

## Age 3 — the religious settlement

### `imami_tashayyu` — the Safavid imposition of 1501

Long-term unity gain at the cost of an immediate stability hit. Muslim-only, not Sunni-orthodoxy, **not from chinggisid_regency** (the Safavids exited the regency fiction explicitly).

`on_activate`: `add_stability = −1`. Country modifier: `tolerance_own = +3`, `tolerance_heretic = −1`, `monthly_legitimacy = +ez_reform_legitimacy_minor`, `monthly_towards_centralization = +0.05`, `global_clergy_estate_power = +0.10`, Clergy satisfaction `+ez_priv_sat_major`.

### `sunni_orthodoxy` — the Tīmūrid / Shaybānid road

Institutionalized Ḥanafī orthodoxy. Muslim, non-Shīʿa, not `imami_tashayyu`.

Effects: `tolerance_own = +2`, `tolerance_heretic = −1`, `global_clergy_estate_power = +0.15`, Clergy satisfaction `+ez_priv_sat_major`, `stability_cost = −0.05`, `monthly_towards_centralization = +0.05`.

### `sadr_judiciary_reform`

The *ṣadr* office — state-church bureaucratized. Salaried *qāḍī*s, state-supervised *waqf*. The clergy paid by the throne is happy but tamed.

Effects: `tolerance_own = +1`, `global_diwan_estate_power = +0.20`, **`global_clergy_estate_power = −0.15`** (paid clergy is contained clergy), Clergy satisfaction `+ez_priv_sat_major`, `monthly_towards_centralization = +0.05`, `monthly_towards_tazik = +0.05`.

## Age 3 — the messianic fusion

**`murshid_i_kamil`** — Ismāʿīl I as the perfect spiritual guide, commanding qizilbāsh *murīds*. Pairs with the Age 2 `mushasha_messianism`; thematically what `ghulam_system_reform` + `sadr_judiciary_reform` later supersede when they discipline the fusion.

Shīʿa-only, **not from chinggisid_regency**.

`on_activate`: `add_stability = −1`. Country modifier: `land_morale = +ez_reform_morale_big`, `monthly_legitimacy = +ez_reform_legitimacy_major`, Amirs satisfaction `+ez_priv_sat_huge`, `global_amirs_estate_power = +0.15`, **`global_clergy_estate_power = −0.15`, Clergy satisfaction `−0.10`** (the formal *ʿulamāʾ* are eclipsed by the charismatic master), `tolerance_own = −1`, `stability_cost = +0.10`, `cultural_influence_modifier = +0.05`, `monthly_towards_turk = +0.05`.

## Age 3 — the land-political pair

### `soyurghal_grants_reform` — the drift toward fragmentation

Hereditary, tax-immune, administratively-immune grants to nobles and clergy.

Effects: Amirs satisfaction `+ez_priv_sat_major`, `global_amirs_estate_power = +0.10`, Clergy satisfaction `+ez_priv_sat_major`, `global_clergy_estate_power = +0.10`, `tax_income_efficiency = −0.10`, `global_max_rural_control = −ez_amir_rural_malus`, `province_integration_speed = −0.10`, `monthly_towards_decentralization = +0.10`, `monthly_towards_turk = +0.05`.

### `khassa_crown_demesne` — ʿAbbās I's conversion of *mamālik* into *khāṣṣa*

The rare reform that *raises* rural control — the crown directly runs the country it has just seized. Mutually exclusive with `soyurghal_grants_reform`; **not from chinggisid_regency**.

Effects: `tax_income_efficiency = +0.15`, `global_diwan_estate_power = +0.15`, Dīwān satisfaction `+ez_priv_sat_major`, **`global_amirs_estate_power = −0.20` and a further `−0.10`**, Amirs satisfaction `−0.10`, `global_max_rural_control = +ez_khassa_rural_bonus`, `monthly_towards_centralization = +0.10`, `monthly_towards_tazik = +0.10`.

## A reading map

- **The Tīmūrid road**: Age 1 chinggisid_regency → Age 2 timurid_synthesis (+ optional sahib_qiran overlay) → Age 3 sunni_orthodoxy + sadr_judiciary_reform + ghulam_system_reform.
- **The Safavid road**: Age 1 chinggisid_regency or ghazi_sultanate (and exit the regency at the puppet's death) → Age 2 mushasha_messianism → Age 3 murshid_i_kamil + qizilbash_aristocracy_reform + imami_tashayyu, later disciplined by ghulam_system_reform + sadr_judiciary_reform + khassa_crown_demesne.
- **The Persian-kingship road**: Age 1 farr_i_izadi + circle_of_equity_reform → Age 2 iranian_kingship → Age 3 khassa_crown_demesne + sadr_judiciary_reform.
- **The Türkmen road**: Age 1 chinggisid_regency → Age 2 turkmen_confederation → Age 3 qizilbash_aristocracy_reform + soyurghal_grants_reform + murshid_i_kamil.

These are sketch paths, not rails. The reform tree's branching points are real and most of them are one-way.

See also: [Erānzamīn situation](eranzamin-situation.md), [Türk vs Tāzīk](turk-vs-tazik.md), [Estate privileges](estate-privileges.md), [Persianate Sultanate](persianate-sultanate.md).
