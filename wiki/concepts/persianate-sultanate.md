# The Persianate Sultanate

The Persianate Sultanate is the baseline government type for almost every state on the Iranian plateau and across the wider Persianate sphere in 1337. It is not a European monarchy with reskinned art. It is a different political settlement, and most of the mod's other mechanics are interlocked with it.

## What it represents

A Persianate state, as the term is used here, is one that runs on the post-Ilkhanid synthesis: a Turco-Mongol military aristocracy of *amīrs* and *noyans*, a Persian scribal class staffing the *dīwān*, sharīʿa jurists and Sufi shaykhs filling the religious slot, and a ruler whose legitimacy is a project rather than an inheritance. The administrative manuals are written in Persian. The salute to the throne, where there is a throne, is done on Mongol custom. The Friday khuṭba is read in Arabic.

The Sultanate is everything from the Jalayirid–Chobanid successor states down to the smallest mountain *amīrate*. The Mamlūks of Egypt, the early Ottomans, and the Delhi Sultanate are governed by adjacent but distinct forms; on the plateau itself, the Persianate Sultanate is the default, and only the regency states (see [the Erānzamīn situation](eranzamin-situation.md)) sit in a different government slot.

## What it does differently

The Persianate Sultanate's baseline differs from a European monarchy in several ways that you will feel within the first months of play.

### Two nobilities, not one

The single base-game noble estate is replaced by [**the Dīwān**](diwan-estate.md) and [**the Amirs**](amirs-estate.md). They are not two flavors of the same thing. They have different tax behaviors, different privilege suites, and different positions on the [Türk–Tāzīk axis](turk-vs-tazik.md).

### Categorical prohibitions

Two booleans are off by default and govern which estate can hold which kind of office:

- **`diwan_estate_allowed_leading_military = no`** — the Dīwān may not command armies.
- **`amirs_estate_allowed_in_cabinet = no`** — the Amirs may not sit in the cabinet.

These are the lines neither estate's foundational political text permits the other to cross. Both can be unlocked by privileges, and each unlock is expensive — not in money, but in the other estate's fury. See [estate privileges](estate-privileges.md).

### A parliament that is not a parliament

The parliament slot is occupied by **the Mazālim court** — the king sitting in judgment over the excesses of his own officials. It works backwards from a European parliament: you do not go there to ask the estates for money, you go there to prosecute them, and you gain capital by disciplining your own apparatus under the banner of justice. See [the Mazalim court](mazalim-court.md).

### No mass peasant army

The settled population is demilitarized at the baseline. Your manpower comes from two reservoirs — the iqṭāʿ class and the tribes — and your third force, the *ghulām* corps, is bought. See [the military system](military-system.md).

### The Türk–Tāzīk axis

Underneath everything runs the societal value between the Türk and Tāzīk poles. It gates reforms, privileges, and tribal loyalty. Almost nothing in the Persianate Sultanate is value-neutral on this axis. See [Türk vs Tāzīk](turk-vs-tazik.md).

## In game

You start as a Persianate Sultanate (or, if you took a Regency, in one of the regency variants — see [government reforms](government-reforms.md)). The government type is set in the country definition and is inherited by successor states formed from Iranian-plateau cultures and the Persianate civilization.

The Age 1 reform tree is the way out of the baseline. Each of the three Age 1 branches commits you to a particular doctrine of legitimacy and unlocks the Age 2 reforms downstream of it. See [government reforms](government-reforms.md) for the full tree.
