# Ghāzī: Burden of the Sword

> *Heaven's reward attends the holy warrior — the umma is checking.*

Choosing `ghazi_sultanate` in Age 1 places the dynasty under the caliphal shadow as *sword of the faith*. The reform is cheap and quiet — `monthly_legitimacy = +0.10`, clergy and manpower bonuses, a softer hostility ambient. The catch is that the doctrine the dynasty has just publicly avowed is a hunger. A *ghāzī* who is not fighting *ghazā* is a *ghāzī* in name only.

The **Ghāzī Burden of the Sword** disaster (`ghazi_burden_of_sword`) is the umma's audit. It is automatic, unavoidable, and structurally inverted from the Farr Proof: where *farr* is paid off in continuous conquest, *ghazā* is paid off in **continuous war against the right kind of enemy**.

## The hunger

The disaster fires within months of the reform's adoption. On start:

- `add_legitimacy = -60` — the khuṭba now names you *ghāzī*; the world is waiting to see it. Larger initial hit than *farr*, because the claim is more specific.
- `trigger_event_non_silently = ghazi_burden.1` — the opening event.

Standing modifier while active:

| Field | Value | Reading |
|-|-|-|
| `monthly_legitimacy` | **−0.5** | Calibrated so that one true *ghazā* removes the penalty. |
| `clergy_estate_target_satisfaction` | −0.05 | Jurists withhold endorsement. |
| `global_levy_size_modifier` | −0.10 | Volunteers absent — the *mutaṭawwiʿa* don't come to a quiet court. |
| `monthly_religious_influence` | −0.10 | Pulpits cool. |
| `monthly_prestige` | −0.05 | Foreign chanceries omit the title. |

Each line is a specific in-world silence. Together they are the cost of having publicly avowed the *ghāzī* claim without yet visibly executing on it.

## The defining mechanic — `ghazi_lord_at_war`

The Ghāzī disaster's signature is **decay-at-rest**. The peacetime bleed is offset by a single, large auto-modifier that fires *only* while the dynasty is at war with a qualifying target:

**`ghazi_lord_at_war`** — `in_game/common/auto_modifiers/03_eranzamin_legitimacy_crisis.txt`:

- `monthly_legitimacy = +0.75`
- `monthly_prestige = +0.10`
- `global_levy_size_modifier = +0.25`
- `global_manpower_modifier = +0.25`

Trigger condition: the dynasty has `ghazi_sultanate`, is `at_war = yes`, and the war includes a country whose `religion != root.religion`.

Net while at qualifying war during the disaster: **+0.25** legitimacy/month. Net at peace: **−0.5**. The doctrine's wager is the policy commitment to never being at peace for long.

Two softer variants cover edge cases (`03_eranzamin_legitimacy_crisis.txt`):

- **`ghazi_lord_at_war_yasa`** — at war with a country holding `mongol_law_policy`. A Muslim target whose retention of *yāsā* the doctrine refuses to recognize. `+0.5` leg, `+0.05` prestige, `+0.125` levy and manpower — half the credit, but real.
- **`ghazi_lord_at_war_lax`** — at war with a country holding `lax_hisba_enforcement`. The din-panāh inference: a court that tolerates vice is legible prey. `+0.25` leg, `+0.025` prestige, `+0.125` levy/manpower — quarter credit. This is the *Mubāriz al-Dīn at Shīrāz* doctrine, priced.

And one explicit penalty:

- **`ghazi_lord_has_yasa_law`** — fires whenever a `ghazi_sultanate` realm itself holds `mongol_law_policy`. Mongol customs are not law to be respected; for the *ghāzī* to hold them is blasphemy. `monthly_legitimacy = −0.25`, `monthly_prestige = −0.10`, `−0.25` levy and manpower. **Purge the tent's law first** — this is the design's point.

## Tier classification of war targets

War credit on `on_winning_war` is sorted by the scripted trigger family `ghazi_target_is_tier_X` (`05_ghazi_triggers.txt`):

- **Tier-3 — true *dār al-ḥarb*.** Non-Muslim states (Christian, Hindū, Tengri, polytheist). Native food. **`+10` legitimacy per won war**, increments `ghazi_tier3_wins`, applies `ghazi_conquest_glory` for 12 months (`monthly_legitimacy = +0.4`, `land_morale_modifier = +0.05`, mode add_and_extend). No caveats.
- **Tier-2 with fatwā** — yāsā-holders and heterodox Muslim states, *after* the Jihad-Within apparatus has been claimed (`ghazi_fatwa_acquired` variable set). `+5` legitimacy, six months of `ghazi_conquest_glory`. The fatwā provides the doctrinal weight to call the war legitimate.
- **Tier-2 without fatwā** — same target class, but the apparatus not yet acquired. `+2` legitimacy + a jurist-complaint event (`ghazi_burden.102`). Half credit, with public theological cost.
- **Ordinary Sunni** — no credit, jurist complaint event fires. The umma will not endorse a *ghāzī* warring on fellow Sunnīs.

The `ghazi_tier3_wins` counter feeds the Sword of Islam resolution gate. The Sword cannot be claimed on tier-2 victories alone.

## Defeats

`ghazi_defeat_shame` (on losing a war): `monthly_legitimacy = −1.0`, `land_morale_modifier = −0.05`. Six months. Heaven's reward visibly withheld.

`ghazi_capital_lost` (capital changes hands): `monthly_legitimacy = −0.3`, `monthly_prestige = −0.10`. Permanent until the seat is recovered. Less catastrophic than the Farr version (the *ghāzī* doctrine survives capital loss better than the *farr* doctrine — frontier mobility is its native condition) but still painful.

## The frontier-designation system

The disaster supports three frontier designations — `ghazi_frontier_caucasus`, `ghazi_frontier_rum`, `ghazi_frontier_hindustan`. Each grants:

- `global_manpower_modifier = +0.10`
- `global_levy_size_modifier = +0.05`

A designation is the dynasty publicly committing to a theater. Volunteers stream toward it. The catch is that the commitment must be **executed on** — the disaster ticks a `designation_expectation` counter when a frontier is designated with no recent progress, and after enough ticks fires the `ghazi_designation_failed_scar` modifier (`monthly_legitimacy = −0.2`, `−0.05` levy) and increments `ghazi_designation_failures`. Two failures recorded is one of the preconditions for the Dervish Rising resolution.

Tier-3 conquest in the designated theater resets the expectation counter.

## Apparatus claims (50 / 65 / 80 / 90+)

Four buttons on the disaster panel, each a deliberate institutional commitment that **costs** legitimacy and pays back a permanent **refund** plus an irreversible **legacy**. The refund cancels its slice of the standing bleed; the legacy persists past resolution (stripped only by Dervish Rising).

The wiring (effects in `04_ghazi_effects.txt`, generic actions in `ghazi_burden_actions.txt`):

### `claim_jihad_within` — leg ≥ 50, no `chinggisid_regency` (costs **−10** leg)

The *jihād al-akbar* — the censor walks the bazaar in the sultan's name; jurists concede that the dynasty is at least cleaning its own house. Fires `ghazi_burden.50`. Sets `ghazi_fatwa_acquired` (which is the unlock for the tier-2 fatwā path).

- **Refund** `ghazi_jihad_within_refund`: `monthly_legitimacy = +0.10`, clergy satisfaction `+0.05`.
- **Legacy** `ghazi_hisba_apparatus`: `monthly_religious_influence = +0.05`, `tolerance_own = +1`, clergy satisfaction `+0.03`. The *muḥtasib*'s office now a permanent feature. Also the precondition for the internal-campaign action.

The yāsā / Chinggisid-regency exclusion is explicit — a Türk-descended ghāzī must purge the tent's law before this rung is available.

### `claim_ribat_network` — leg ≥ 60, gold ≥ 100 (costs **−15** leg, **−100** gold up front)

Endows the frontier *khānqāhs* / *ribāṭ*s. Volunteers now have somewhere to muster. Fires `ghazi_burden.65`.

- **Refund** `ghazi_ribat_network_refund`: `monthly_legitimacy = +0.10`, `global_levy_size_modifier = +0.10`.
- **Legacy** `ghazi_the_lodges_endowed`: `global_levy_size_modifier = +0.03`, `global_manpower_modifier = +0.05`, Tribes satisfaction `+0.05`. Also the precondition for the Dervish Rising — the constituency must exist before it can defect.

### `claim_caliphal_investiture` — leg ≥ 60 (costs **−15** leg)

The diploma from Cairo. Fires `ghazi_burden.80`.

- **Refund** `ghazi_investiture_refund`: `monthly_legitimacy = +0.10`, `monthly_religious_influence = +0.10`.
- **Legacy** `ghazi_caliphal_diploma`: `diplomatic_reputation = +1`, `monthly_prestige = +0.05`, clergy satisfaction `+0.05`. Also unlocks the **Sultan of the Ghazis** claim at the lower (75) threshold.

### `claim_sultan_of_ghazis` — leg ≥ 75 with investiture, else leg ≥ 90 (costs **−25** leg)

The title in your own right — the Tabrīz-1358 move. Fires `ghazi_burden.90`.

- **Refund** `ghazi_sultan_of_ghazis_refund`: `monthly_legitimacy = +0.20`, `monthly_prestige = +0.05`. With all four refunds standing, the bleed is fully nulled (`+0.10 + 0.10 + 0.10 + 0.20 = +0.50`).
- **Legacy** `ghazi_sultan_of_ghazis_in_protocol`: `monthly_prestige = +0.10`, `antagonism_received_modifier = −0.15`, `diplomatic_reputation = +1`.

> The two paths: take investiture and then assume *sultan* at 75 (the historical ladder, Cairo to Tabrīz), or skip the diploma entirely and assume the title at 90 in the dynasty's own right (the proud path: never bind the dynasty to Cairo). Both are valid.

## Internal campaigns (tier-1)

The fifth disaster-panel button, **`launch_internal_campaign`**, is a different shape from the apparatus buttons. It is **repeatable** (up to 3 times, the cap encoded as `var:ghazi_internal_campaigns < 3`) and represents the *ghāzī* turning the sword *inward* — vice campaigns, heterodoxy campaigns, sectarian campaigns.

**Gates** (`ghazi_can_launch_internal_campaign` in `05_ghazi_triggers.txt`):

- Disaster active.
- `ghazi_hisba_apparatus` legacy held (must have claimed Jihad Within).
- Realm on the strict side of `hisba_law` — either `strict_hisba_enforcement` or `muhtasib_regime`. The lax / customary postures will not back a public morals campaign.
- At least one `hisba_office` building owned somewhere — the censor needs a desk.
- Counter `< 3`.

**Cost**: 50 gold and −3 legitimacy up front. Fires `ghazi_burden.500`, which branches into the three campaign types (vice / heterodoxy / sectarian).

**Diminishing returns** (`ghazi_apply_internal_campaign_credit`):

| Campaign # | Legitimacy | Clergy satisfaction |
|-|-|-|
| 1 | +5 | +0.08 |
| 2 | +3 | +0.05 |
| 3 | +1 | +0.03 |

Each branch also applies a permanent scar reflecting the political cost the campaign pays:

- **`ghazi_vice_campaign_scar`** — `burghers_estate_target_satisfaction = −0.05`, `tax_income_efficiency = −0.025`, `global_monthly_prosperity = −0.001`. Hāfeẓ's Shīrāz, quantified.
- **`ghazi_heterodoxy_campaign_scar`** — `tolerance_heretic = −1`, `monthly_religious_influence = +0.05`, peasants `−0.03`. Ghulāt circles dispersed; the orthodox jurists pleased, the heterodox poor remember.
- **`ghazi_sectarian_campaign_scar`** — `global_pop_conversion_speed_modifier = +0.10`, `tolerance_heretic = −1`, `monthly_religious_influence = +0.05`. Conversion edge on home religion; mixed-religion provinces simmer.

The design's "the realm runs out of sin" — the third campaign reads as theater, not righteousness.

## The hisba_law axis

The `hisba_law` law-category sits beside the *ghāzī* disaster (`008_muhtasab_laws.txt`). It is not part of the disaster but it gates the internal-campaign system and pairs with the doctrinal posture.

- **`lax_hisba_enforcement`** — Inju Shīrāz under Abū Isḥāq. Bazaar and dīwān flourish; piety demobilizes (`global_levy_size_modifier = −0.10`, `land_morale_modifier = −0.10`). A `ghazi_sultanate` court flipped to lax should pay a legitimacy / *farr*-ledger cost. The din-panāh inference makes such a court *legible prey* — the `ghazi_lord_at_war_lax` auto-modifier above is the wire.
- **`customary_enforcement`** — the qāḍī enforces what the quarter expects, ʿurf and discretion. Default posture for most courts.
- **`strict_hisba_enforcement`** — the *muḥtasib* with a stick. Piety converts to manpower (`global_levy_size_modifier = +0.10`, `land_morale_modifier = +0.25`); merchants pay for it in fines and fled custom.
- **`muhtasib_regime`** — `unique = yes`, gated on `ghazi_sultanate` AND `dar_al_jihad`. Mubāriz al-Dīn's actual practice: enforcement *as the throne's identity*. `+0.25` levy, `+0.25` land morale, `+0.10` religious influence, `+0.25` conversion speed — but Hāfeẓ's complaint, quantified: prosperity `−0.001`, tax `−0.025`, burghers `−0.10`.
- **`zill_allah_regime`** — `unique = yes`, Shīʿa-only, requires `mysticism_vs_jurisprudence <= −50`. The Safavid murshid posture: legitimacy through charisma, not enforcement. `tolerance_heretic = +1` — the ghulāt drink at the same table.

The interaction with the disaster is two-fold. The internal-campaign action requires `strict` or `muhtasib_regime`. The `ghazi_lord_at_war_lax` auto-modifier credits war against `lax`-holding states. The full mobilized-vs-monetized piety axis runs underneath the *ghāzī* claim.

## The four resolutions

The disaster polls monthly. Four endings; mutually exclusive.

### Sword of Islam — `ghazi_sword_of_islam`

**Gate** (`ghazi_can_resolve_sword_of_islam`): legitimacy ≥ 75, `ghazi_high_months >= 60`, **`ghazi_tier3_wins >= 2`**. The doctrine requires the wars *actually happened* — high legitimacy alone is not enough.

The Ghāzī Corps institutionalized. Modifier `ghazi_sword_of_islam` — permanent:

- `monthly_legitimacy = +0.20`
- `global_levy_size_modifier = +0.10`, `land_morale_modifier = +0.10`, `global_manpower_modifier = +0.10`
- `tolerance_own = +2`, `monthly_prestige = +0.10`.

Identity locked as *dār al-ḥarb*'s neighbor. All apparatus legacies retained.

### Guardian of the Thughur — `ghazi_guardian_of_thughur`

**Gate** (`ghazi_can_resolve_guardian`): 25 years elapsed (`ghazi_burden_months >= 300`), realm intact (no `ghazi_capital_lost`), AND the realm **borders *dār al-ḥarb*** directly. **Interior states cannot claim** — this is the *murābiṭ*'s answer, geographically gated.

Modifier `ghazi_guardian_of_thughur` — permanent: `monthly_legitimacy = +0.10`, `+0.05` levy / morale / prestige. Smaller than Sword but the doctrine stands.

### Doctrine Lapses — `ghazi_doctrine_lapsed`

**Gate** (`ghazi_can_resolve_doctrine_lapse`): `ghazi_low_months >= 60` *without* the Dervish Rising's preconditions met.

The quiet failure. Title goes ceremonial. `muhtasib_regime` law option lost. Bleed ends. `ghazi_doctrine_lapsed_scar` permanent: `monthly_prestige = −0.10`, `monthly_legitimacy = −0.05`, clergy satisfaction `−0.05`. The court keeps "ghāzī" in the protocol and everyone knows it is furniture.

### Dervish Rising — `ghazi_dervish_rising`

**Gate** (`ghazi_can_resolve_dervish_rising`): `legitimacy <= 25`, `ghazi_low_months >= 60`, `ghazi_the_lodges_endowed` held (the constituency must exist before it can defect), AND `ghazi_designation_failures >= 2`.

The ribāṭ network defects to a charismatic shaykh. Reform stripped. **Legacies stripped** — the only outcome that wipes them. Scar `ghazi_dervish_rising_scar` permanent: `monthly_legitimacy = −0.10`, `tolerance_heretic = −2`, clergy `−0.10`, `monthly_religious_influence = −0.10`.

The disaster's generative clause feeds the *murshid-i kāmil* lineage. The frontier-volunteer pool the dynasty endowed has turned into a movement; this is the Ṣafavī-origin moment in code, and the path to Age 2 `mushasha_messianism` and Age 3 `murshid_i_kamil` opens.

## How to manage the disaster

The arithmetic dictates the strategy: **never be at peace with no qualifying enemy**.

The standing posture:

1. **First six months** — absorb the −60 hit. Identify a tier-3 neighbor. Designate the corresponding frontier (`ghazi_frontier_caucasus`, `_rum`, or `_hindustan`).
2. **Through 50** — fight one tier-3 war. The +10 leg per win plus the `ghazi_conquest_glory` pulse (+0.4/mo for 12 months) is the platform. Claim Jihad Within the first time you can hit 50. This is also the precondition for everything else: it sets `ghazi_fatwa_acquired`, unlocks the tier-2 fatwā path, and opens the internal-campaign system.
3. **Through 60** — claim Ribāṭ Network when you have the gold spare (the 100-gold cost is genuinely expensive in the first decade) and Caliphal Investiture as soon as 60 holds. The investiture unlocks the 75-threshold path to Sultan of the Ghāzīs, which is a much easier wager than the 90-threshold proud path.
4. **Through 75** — keep the tier-3 counter accumulating. Sword of Islam requires `ghazi_tier3_wins >= 2` — plan two real conquests against dār al-ḥarb, not skirmishes.
5. **Hold legitimacy ≥ 75 for 60 months** — with all four refunds standing the disaster's bleed is fully cancelled and the floor holds. Vindicated.

**The yāsā problem.** A Türk-descended *ghāzī* who starts the disaster with `mongol_law_policy` is in a deep hole — the `ghazi_lord_has_yasa_law` penalty stacks under everything else. Repealing the yāsā is the first action.

**The strict-law tradeoff.** Going `strict_hisba_enforcement` or `muhtasib_regime` opens the internal-campaign system (the easiest legitimacy in the disaster — +5 leg for 50 gold the first time), but at a real economic cost (tax / prosperity malus, burghers irritated). The internal campaigns are best held in reserve as legitimacy first-aid when conquest stalls.

**Border arithmetic for Guardian.** A dynasty that has been holding the disaster for 20+ years without resolving Sword or breaking should check `ghazi_borders_dar_al_harb`. If interior, Guardian is unreachable and the only routes out are Sword (still possible — push to that border) or eventual lapse.

**Sword vs Dervish Rising.** The Dervish path is only available to a dynasty that took Ribāṭ Network (the lodges exist to defect). A dynasty avoiding the Safavid endgame can simply *not* claim the network — but at the cost of leaving the disaster's `global_levy_size_modifier = −0.10` slice un-cancelled. The trade is real.

## Payoffs in plain numbers

A Sword of Islam dynasty that has claimed all four apparatus and held the disaster through stands at:

- `monthly_legitimacy = +0.20` (Sword) + apparatus legacy traces — the dynasty's permanent legitimacy floor.
- `global_levy_size_modifier = +0.13` (`+0.10` Sword + `+0.03` lodges).
- `global_manpower_modifier = +0.15` (`+0.10` Sword + `+0.05` lodges).
- `land_morale_modifier = +0.10`, `tolerance_own = +3` (`+2` Sword + `+1` hisba), `monthly_prestige = +0.25` total across Sword + diploma + protocol.
- `antagonism_received_modifier = −0.15`, `diplomatic_reputation = +2`.
- Religious influence `+0.05` ambient, internal-campaign route still available (up to 3 uses).
- Standing as a recognized *ghāzī* sultanate; identity locked.

A Guardian of the Thughur dynasty stands at roughly half those numbers, with the geographic flavor — the frontier-defender, not the standard-bearer.

A Doctrine-Lapsed dynasty has lost the *muḥtasib regime* option, holds a permanent prestige scar, and cannot re-declare.

A Dervish Rising dynasty has lost the reform itself, the legacies, and is now likely the seed-state of a successor messianic movement.

See also: [Government reforms](government-reforms.md), [Erānzamīn situation](eranzamin-situation.md), [Türk vs Tāzīk](turk-vs-tazik.md), [the Farr Proof of Fortune](farr-proof-of-fortune.md) (the parallel disaster for the *farr* path).
