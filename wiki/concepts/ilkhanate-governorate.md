# The Ilkhanate Governorate — the deferral

> *We are governors, not kings. Let the others break themselves on the throne.*

Below the legitimacy-contenders sits a third tier: the realm that does **not** claim the ulus, but administers a corner of it and waits to see who wins. Historically this is the Injuid fiscal governors of Fars, the Kart maliks of Herat, the local dynasties that were literally continuations of Ilkhanid provincial administration and never reached for the khanship. The mod makes it a deliberate posture — the **fourth option** at the opening stance event (`ilkhanate_flavor.1`), beside Regency, Ghāzī, and Farr.

## The reform

`ilkhanate_governorate` (Age 1, `01_persian_reforms.txt`) is mutually exclusive with the four contender reforms and unavailable to a flagged `eranzamin_contender` — you cannot defer and contend at once. It is the administrator who keeps his head down:

| Field | Value | Reading |
|-|-|-|
| `monthly_legitimacy` | +0.1 | a recognized governor's lawful place — modest, no pump |
| `stability_cost` | −0.10 | solvent and steady |
| `fort_defence` | +0.20 | defensible in your corner |
| `land_morale` | +0.05 | |
| `tax_income_efficiency` | +0.10 | a well-run province |
| `antagonism_received_modifier` | −0.20 | nobody marches on the humble governor |
| `monthly_prestige` | −0.1 | a governor is not a king |
| `province_integration_speed` | −0.20 | no reach |
| `diplomatic_reputation` | −1 | |

AI weighting at the stance event heavily favours deferral for the weak: a realm with `country_total_army_levy_size < 5` is ten times likelier to choose it. A realm that cannot field an army has no business claiming the ulus.

## Declaring fealty

A governorate can pledge to a steward and become his vassal of a dedicated subject type, **`ulus_governorate`**. Two paths converge on it:

- **The governorate's own choice.** *Declare Fealty* (`ilkhanate_collapse_actions.txt`) lets a governorate pick a steward from the roll of those who hold a khan — regency, Borjigin, or serious contender. The picker *is* the lightweight "see the khans" view. There is also a **monthly pulse** (`custody.30`, the governorate fealty pulse): at most once every five years a non-subject governorate is pressed to choose, offered the **top three stewards by levy potential** (ranked via `ordered_in_list`) — or "Not yet. We were made governors by Abū Saʿīd."
- **The custodian's demand.** A regent running the [Borrowed Mandate](borrowed-mandate.md) uses *Demand Fealty* to call a governorate to swear, sending khalʿat and gifts (see that page).

## The `ulus_governorate` subject

Not a conquered vassal — a deferring administrator who keeps its own house. High autonomy, hard to annex, sworn to the overlord's wars. The defining feature: **governorates fight each other** (the daimyo pattern):

```
allow_declaring_wars = { always = yes }
can_attack = { NOT = { scope:defender = scope:overlord } }
```

A governorate may make war on anyone except its own custodian — fellow governorates above all (the Ilkhanid successor melee), and outsiders too. The one bond it keeps is the khan's name in the khutbah.

## Dropping the khan

The exit: **Drop the Khan from the Khutbah** (`custody_drop_khan`, `ilkhanate_collapse_actions.txt`). The governorate ceases reading the custodian's khan, and the overlord cancels the relation (`cancel_subject`) — a clean, near-peaceful renunciation fitting the governorate's autonomy. An AI does it when strong enough to stand alone, or when its overlord can no longer shield it.

## Files

`government_reforms/01_persian_reforms.txt` (`ilkhanate_governorate`) · `subject_types/ulus_governorate.txt` · `generic_actions/ilkhanate_collapse_actions.txt` (Declare Fealty, Drop the Khan) · `events/custody_events.txt` (`custody.30`–`.33`) · `on_action/09_custody_governorate_pulse.txt` · `events/flavor/ilkhanate_events.txt` (`ilkhanate_flavor.1` option F).
