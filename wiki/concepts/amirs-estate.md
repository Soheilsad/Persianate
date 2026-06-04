# The Amirs estate

The Amirs are the Turco-Mongol military aristocracy. They are one of the two estates that replace the base game's single noble estate in Persianate states; the other is [the Dīwān](diwan-estate.md). They do not behave the same way and you should not treat them the same way.

## What it represents

An *amīr* is, by origin, a commander. In the post-Ilkhanid synthesis the word covers a wide range of figures: the great Mongol *noyans* of the old Ilkhanid *tümen* commands, their descendants who hold provincial governments by inherited right, the tribal chieftains who married into the Chinggisid order, the *qarachu* "black bone" lineages who serve a princely line, and the rising warlord-amīrs of the fourteenth century who would, in time, become the Chobans, the Jalayirs, the Aq Qoyunlu, the Qara Qoyunlu, and ultimately Tīmūr.

What they share: a household of armed retainers, a claim on the iqṭāʿ (the assignment of tax revenue from a district in lieu of a salary), and a self-understanding as carriers of a steppe political tradition that the Persian chancery is meant to serve, not direct. Their language is Turkic — Chaghatai in the east, Oghuz in the west — and they expect to be addressed in it. Their patronage chain runs through marriage alliances, tribal confederations, and the household formation called the *qosh* or *qorchi*.

## What makes the Amirs different from the Dīwān

Three things, structurally:

### 1. Tax assessment is almost nothing

Amir assessment is calibrated at roughly **a tenth of a European noble's**. This is not a balancing concession. It is a historical claim. Amir wealth sits behind force: the taxpayer is also the bailiff, the assessor is also the man being assessed, and the practical limit of state extraction on the iqṭāʿ class is what the iqṭāʿ class will tolerate. Mongol-period attempts to push them harder produced revolts and dead vazīrs.

This makes the Amirs the most fiscally opaque elite in your realm. The Dīwān fund the state ([see Dīwān estate](diwan-estate.md)). The Amirs are the state's instrument and the state's headache.

### 2. The privilege suite erodes rural control

Where the Dīwān trade efficiency, the Amirs trade **autonomy**. Their privileges:

- The **iqṭāʿ grant** — formal recognition of revenue rights over a province or set of provinces; satisfies the Amirs and gives you cavalry, but the registers go dark on that province.
- **Tribal autonomy rights** — the *ʿashīrat* live by their own custom; the state stops trying to push religious orthodoxy on the steppe edge.
- **Hereditary military commands** — a *tümen* command becomes a family possession rather than a royal appointment.

Every grant is a piece of countryside the state goes blind on. The cavalry is good. The price is that your tax map gets darker every time you write one.

### 3. The categorical prohibition: no seat in the cabinet

By baseline, the Persianate Sultanate sets `amirs_estate_allowed_in_cabinet = no`. The Amirs may command armies, govern provinces, sit at the *quriltai*, hold the iqṭāʿ — but they may not staff the civilian administration. The cabinet is the Dīwān's domain. The Amirs hold the sword. The Dīwān hold the pen. Crossing the line is possible (via the **Umarāʾ at the Dīwān** privilege; see [estate privileges](estate-privileges.md)), and the Dīwān will tell you, in fluent Persian, exactly what they think of it.

## In game

The Amirs estate is on your country panel as **`amirs_estate`**. The mechanics that govern it:

- **Power** — `global_amirs_estate_power` and the local variant. The iqṭāʿ privilege and tribal-autonomy privilege shift it up; aggressive Tāzīk-leaning reforms shift it down.
- **Satisfaction / loyalty** — `amirs_estate_target_satisfaction`. The Amirs are particularly sensitive to the Dīwān being allowed to command armies, to centralizing reforms that compress their tax shelter, and to the seizure of iqṭāʿ holdings.
- **Türk/Tāzīk pull** — privileges that strengthen the Amirs almost always carry `monthly_towards_turk`. The estate is the social base of the Türk pole.
- **Manpower** — Amir satisfaction and the iqṭāʿ privilege gate access to the iqṭāʿ manpower reservoir (see [the military system](military-system.md)). An angry Amir estate or a missing iqṭāʿ privilege means you are fielding a smaller cavalry force than the map suggests.

A heavily Amir-leaning state runs on horses. Its army is large, mobile, and cheap to maintain. Its tax revenue is thin. Its administration is sparse. Its peripheral provinces are autonomous in everything but the formal claim — which is, by tradition, how the steppe ruled the plateau.

See also: [Dīwān estate](diwan-estate.md), [Türk vs Tāzīk](turk-vs-tazik.md), [Estate privileges](estate-privileges.md).
