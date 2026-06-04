# The Mazālim court — the Persianate parliament

The base game gives a Persianate state a parliament slot. The mod fills it with something else: the **Mazālim court**, the *dīwān al-maẓālim*, the king sitting in judgment over the excesses of his own officials.

The institution differs from a European parliament structurally, but it sits in the *same UI slot* and uses the *same engine mechanics*. This page explains what those mechanics actually are, because the Persianate parliament behaves differently from the base-game one in ways that are easy to miss if you only read the tooltips.

## The doctrine, briefly

Persianate political theory has no horizontal legitimacy. There is no oath that binds the ruler, no body of notables whose recognition constitutes him, no estate-general whose consent he must seek. Justice flows downward.

So the Mazālim is not a parliament in the European sense. The ruler is not negotiating with the estates for revenue or consent. He is **prosecuting his own apparatus** under the banner of justice, and he is gaining capital — political, fiscal, legitimating — from the act. Protecting the subject from the very machine that extracts from him is what a Persianate king is *for*. The Mazālim is where you do it.

## The parliament type

The Persianate parliament is `parliament_type:diwan_council`. Every Persianate-specific decree on this page is gated by `allow = { parliament_type = parliament_type:diwan_council }`. Countries with other parliament types (a European *Estates-General*, a representative chamber, etc.) do not see these decrees and cannot debate them.

## How a debate works

When a parliament session opens, you are presented with a list of available decrees, each authored by an estate (the **`estate = crown_estate`** decrees on this page are the ones the crown introduces — the ones we care about here). You pick one to debate. While the debate is open, three things happen:

### 1. The `modifier_when_in_debate` block is active

Each decree has a `modifier_when_in_debate = { ... }` block. The modifiers inside that block apply to the country **for as long as the debate is open** — the period during which the debate is being made and the resolution is pending. They are removed when the debate resolves, win or lose.

Examples from the decree file:

- `decree_centralize_administration` — `global_max_control = +0.05` while debated.
- `decree_royal_progress` — `monthly_legitimacy = +0.5` while debated.
- `decree_imperial_audit` — `tax_income_efficiency = +0.05` while debated.
- `decree_renew_the_khutba` — `clergy_estate_target_satisfaction = +0.05` while debated.

These are the "lobbying" or "pending" effects. They are real and they stack across whatever else you have running. A multi-month debate on the Royal Progress is, mechanically, a multi-month legitimacy boost — independent of whether the decree finally passes.

### 2. The decree resolves on a roll against `chance`

Each decree has a `chance = N` (the engine resolves debates probabilistically; higher `chance` = more likely to pass per resolution tick). The base-game decrees here typically use 30–40; the Persianate-specific decrees range from 25 (Audit, Pardon, Shāhnāma) to 30 (Progress, Khuṭba, Caravanserai). The most centralizing / structurally consequential decrees have lower base `chance` and so spend more time pending — meaning the `modifier_when_in_debate` runs longer before resolution.

### 3. `on_debate_passed` or `on_debate_failed` fires

If the decree passes, **`on_debate_passed`** fires. For these decrees it always does two things:

1. Adds a country modifier for a defined duration (years).
2. Adds an instant bump — `add_legitimacy = 5`, `add_stability = 5`, or `add_army_tradition = 5`, depending on the decree's character.

If it fails, **`on_debate_failed`** fires. For these decrees it is always `parliament_debate_failed_effect = yes` — the engine's standard parliamentary-failure handling.

The duration of the post-pass country modifier is **the main strategic dimension of the decree**. A 1-year modifier is a short burst of intense effect. A 10-year modifier is a long-haul commitment to a particular state-form. See the table below.

## The decree catalog

The decrees that fire in the *diwan_council* parliament are gated to the Persianate parliament type. There are two layers — five engine-standard crown decrees (which a base-game parliament also sees, but here gated to the diwan_council slot) and six Persianate-specific crown decrees built around the historical instruments of the *maẓālim*.

### Engine-standard crown decrees (10-year passed modifier)

| Decree | While in debate | On pass (instant) | Country modifier |
|---|---|---|---|
| `decree_centralize_administration` | `+0.05` max control | `+5` legitimacy | `decree_centralization_mod` (10y) |
| `decree_reform_army` | `+0.05` land morale | `+5` army tradition | `decree_army_reform_mod` (10y) |
| `decree_fiscal_overhaul` | `+0.05` tax efficiency | `+mild` inflation | `decree_fiscal_mod` (10y) |
| `decree_infrastructure_expansion` | `−0.05` build cost | `+5` stability | `decree_infra_mod` (10y) |
| `decree_royal_justice` | `−0.05` rebel join threshold | `+5` stability | `decree_justice_mod` (10y) |

### Persianate-specific crown decrees

These are the historical instruments of the Persianate sovereign — itineration, the khuṭba, infrastructure, high-culture patronage, ritual pardon, and the imperial audit. Durations vary deliberately.

| Decree | While in debate | On pass (instant) | Country modifier | Duration | Notes |
|---|---|---|---|---|---|
| `decree_royal_progress` | `monthly_legitimacy = +0.5` | `+5` legitimacy | `decree_royal_progress_mod` | **1 year** | The shortest duration in the chain. A burst of itineration: hear petitions on the road, be seen by your subjects. The *eshteghāl* of the Sasanian–Mongol–Tīmūrid courts. |
| `decree_renew_the_khutba` | `clergy_estate_target_satisfaction = +0.05` | `+5` legitimacy | `decree_renew_khutba_mod` | **3 years** | Muslim-only: `religion_group = religion_group:muslim`. The renewal of the Friday khuṭba in the Shāh's name across the realm. |
| `decree_caravanserai_network` | `−0.05` build cost | `+5` stability | `decree_caravanserai_mod` | **10 years** | The Ilkhanid *yam*, the Tīmūrid *ribāṭ*, the Safavid *chāpārkhāna*. Infrastructure of commerce and surveillance both. |
| `decree_sponsor_shahnameh` | `+0.05` cultural tradition | `+5` legitimacy | `decree_shahnameh_mod` | **10 years** | Patronage of the Persianate high tradition. The *Shāhnāma* copied and presented, the court chronicle commissioned. |
| `decree_yarligh_of_pardon` | `−0.05` rebel join threshold | `+5` stability | `decree_pardon_mod` | **10 years** | *Yarligh-i ʿAfv* — the ritual pardon, a Mongol form turned to Persianate sovereign mercy. |
| `decree_imperial_audit` | `+0.05` tax efficiency | `+5` legitimacy | `decree_audit_mod` | **5 years** | *Estimsāḥ* — the *mustawfī*'s inquisition into the books of the realm. The Dīwān's instrument par excellence; the Amirs feel it as a noose tightening. |

The duration variation is the structural design. A Royal Progress is a sovereign moment, short and intense; a Caravanserai Network is a generational infrastructure commitment. The Khuṭba renewal sits between — three years of refreshed legitimacy before it needs renewing again.

## Strategic implications

A few things follow from how the engine handles these.

- **The `modifier_when_in_debate` effects are free** in the sense that you pay no estate cost for the lobbying period — only for the resolution. A decree with a strong while-in-debate modifier and a low `chance` (so it stays pending longer) is, in effect, a long active modifier even if it never passes. The Imperial Audit's `+0.05` tax efficiency runs for the full debate even if the *amīrs* eventually block it.
- **The post-pass modifiers stack** with each other and with everything else. You can have multiple decree modifiers active simultaneously, each on its own duration timer.
- **The decree slot is contested.** Only one debate runs at a time. Picking the Royal Progress (1-year modifier) over the Caravanserai (10-year) is a choice about cadence: short-but-renewable vs long-and-fire-and-forget.
- **The Khuṭba renewal is your three-year clergy patron-act**, on a clean timer, and the only Persianate decree gated by religion. Plan it as a periodic renewal rather than a one-off.

## What the Mazālim is *not*

A base-game parliament is a venue for asking the estates to grant the crown more revenue or more power in exchange for concessions. The Mazālim is not that. It does not approve succession. It does not levy taxes by consent. It does not procedurally bind the ruler. The Dīwān council does not constrain the crown; it is the crown's instrument for constraining everyone else.

That is the doctrine of Persianate kingship rendered in script: legitimacy is not earned by the ruler being bound, it is earned by the ruler being the only force that can bind everyone else.

A state that uses the Mazālim well disciplines its own apparatus, gains capital from the act, and projects justice outward. A state that ignores it accumulates a corrupt elite, an alienated subject population, and eventually a peasant revolt that the corrupt elite cannot put down.

See also: [Persianate Sultanate](persianate-sultanate.md), [Government reforms](government-reforms.md), [Estate privileges](estate-privileges.md).
