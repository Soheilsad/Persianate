# The Dīwān estate

The Dīwān is the Persian scribal class. It is one of the two estates that replace the base game's single noble estate in Persianate states; the other is [the Amirs](amirs-estate.md). The two should never be treated as flavors of the same thing.

## What it represents

The *dīwān* is, originally, a register — a book of accounts, the ledger of a department of state. By the post-Ilkhanid period the word names both the books and the men who keep them: the chancery scribes, the fiscal officials, the *mustawfīs*, the *vazīrs*, the great service families whose sons are tutored from age six to inherit a post. Their language is administrative Persian. Their patronage chain runs through other scribal families. Their wealth is in cash, urban real estate, agricultural rent rights, and increasingly in **waqf** endowments — pious foundations whose assets are inviolable in law and conveniently hereditary in practice.

The model Dīwān figure is Rashīd al-Dīn: physician, vizier, historian, immensely wealthy, finally executed at eighty after a generation of indispensability. The story repeats. The Dīwān as a class survives every dynasty that uses it, because the dynasty cannot run without it.

## What makes the Dīwān different from the Amirs

Three things, structurally:

### 1. Tax assessment is high

Dīwān assessment is calibrated at roughly **double a European noble's**. Their wealth is ledger-visible — recorded land grants, registered urban property, documented cash holdings — and militarily defenseless. The state can find it. The state can tax it. The Dīwān cannot, in the ordinary case, ride out and resist.

This makes them, paradoxically, the most extractable elite in your realm. The Amirs are almost untouchable for tax (see [the Amirs](amirs-estate.md)). The Dīwān are the engine that funds the state.

### 2. The privilege suite is one repeated transaction

Almost every Dīwān privilege is a variant of: **we will squeeze the realm harder, and exempt ourselves a little more.** Tax efficiency on everyone else goes up. The Dīwān's own exposure to that same efficiency comes down. They will help you build the bureaucracy, the cadastral survey, the muḥtasib's office in every market — and each step makes the realm a little more transparent to the state, except for them.

The endgame of that transaction is the waqf privilege: the Dīwān build their wealth into pious endowments — madrasas, hospitals, caravanserais, public fountains — which are genuine public goods *and* permanent shelters that the next ruler cannot touch. The state benefits visibly. The Dīwān benefit invisibly. Both true.

### 3. The categorical prohibition: no command of armies

By baseline, the Persianate Sultanate sets `diwan_estate_allowed_leading_military = no`. The Dīwān may staff the chancery, run the treasury, sit in the cabinet, write the dispatches, and assess the iqṭāʿ — but they may not lead troops. The Amirs hold the sword. The Dīwān hold the pen. Crossing the line is possible (via the **Tāzīk Command of Arms** privilege; see [estate privileges](estate-privileges.md)), and the Amirs will tell you exactly what they think of it.

## In game

The Dīwān estate is on your country panel as **`diwan_estate`**. The mechanics that govern it:

- **Power** — `global_diwan_estate_power` and the local variant for province-level effects. Privileges shift it up. Loyalty crises shift it down.
- **Satisfaction / loyalty** — `diwan_estate_target_satisfaction` is the level the satisfaction value drifts toward over time. The Dīwān are particularly sensitive to Amirs being granted prerogatives that should be theirs (cabinet seats, especially).
- **Türk/Tāzīk pull** — privileges that strengthen the Dīwān almost always carry `monthly_towards_tazik`. The estate is the social base of the Tāzīk pole.

A heavily Dīwān-leaning state runs on cash. Its army is bought, its administration is dense, its tax is high. It is also fragile in two directions: a peasant revolt in a rural province with no military Amir nearby has no one to put it down, and a foreign army that breaks the field force walks into a realm whose elite has no military capacity to resist occupation.

See also: [Amirs estate](amirs-estate.md), [Türk vs Tāzīk](turk-vs-tazik.md), [Estate privileges](estate-privileges.md).
