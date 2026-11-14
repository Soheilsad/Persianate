# The Amirs estate

> *The men of the sword: the state does not own an army, it borrows theirs.*

!!! warning "New in 1.4 — not yet verified in play"
    The amirs' private regiments and the **Summon the Amirs' Tümens** action were added for 1.4 and have not yet been confirmed in a played campaign. They are described here as designed.

The Amirs are the military service aristocracy of a Persianate state. Together with [the Dīwān](diwan-estate.md) they take the place the nobility holds in a European realm. In game they appear on the estate panel as **The Amirs Estate**.

## What it represents

An *amīr* is a commander. In the post-Ilkhanid world the word covers the Mongol *noyans* and their heirs, the chiefs of the Turkic and Mongol tribal followings, and the warlord houses (Chobanid, Jalayirid, later Qara Qoyunlu, Aq Qoyunlu and Timurid) who made and unmade khans. What they share is a household of armed retainers and a claim on the *iqṭāʿ*, the assignment of a district's revenue in place of a salary. The *umarāʾ* are a service order whose rank is in principle revocable, not a landed nobility by right of descent; the long drift of the revocable grant into hereditary property is the political story of the estate, and the privilege list follows it step by step.

## Who belongs to it

Since 1.4 an estate's power comes from the pops that belong to it.

A **noble pop** is an amir pop when:

| Condition | Detail |
|-|-|
| The state has a chancery | The owner carries the **Niẓām al-Mulk Chancery** flag (Persianate Bureaucracy and the other chancery reforms listed on the [Dīwān](diwan-estate.md) page). |
| It is not a dīwān pop | The Dīwān test is applied first; literate urban Iranian and Arab nobles go to the pen. |
| Religion | Muslim, unless you hold **The Open Muster Rolls**, which opens the corps to every creed. |

Non-Muslim noble pops stay in the base **Nobility**, which the Persianate Bureaucracy reform holds at −90% power. From time to time (about 1% a year) a Muslim Persianate Sultanate with such pops is petitioned to open the rolls.

Tribesmen are not amirs. They form the separate **Tribes** estate, which the mod strengthens: each tribesman pop carries a power weight of 1 (the base game's is 0.25) and the estate is taxed at 1 per pop (base 0.01). The two are linked, as the next table shows.

## Where its power comes from

| Source | Effect |
|-|-|
| Pops | Each amir noble pop carries the standard noble weight (25 per pop). |
| **Tribal Power Base** (any chancery state) | Amirs power rises with the share of your population that is tribesmen: +250% for every 10% |
| Base values of any chancery state | +30% Amirs power |
| **Amirs Base Values for any civilized nation** (Persianate Sultanate) | +5% Amirs power, +40% target satisfaction |
| **Amirs With a Mission** | +2.5% target satisfaction while at war |
| Privileges and laws | See below and [Estate privileges](estate-privileges.md) |

The tribal population is the real foundation of the estate. A realm that has absorbed large pastoral populations has powerful amirs whether or not it has granted them anything; one that settles or loses its tribes weakens them more surely than any decree.

## Tax and the estate's own modifiers

The Amirs are assessed at **25 per pop**: a quarter of a base-game noble (100) and an eighth of a dīwān man (200). They are paid by the state far more than they pay it. They have dynasties, run no bank, and supply mercenary captains.

The estate's effects scale with its satisfaction and with how far its power stands above or below the engine's thresholds; the figures are the listed strengths.

| | Satisfied Amirs | Powerful Amirs | Weak Amirs |
|-|-|-|-|
| Levies | +25% levy combat efficiency, +10% levy size | −10% levy size | +5% levy size |
| Morale | +15% land morale | | −20% land morale |
| Cavalry | +10% heavy and light cavalry power | +5% heavy and light cavalry power | |
| Loot | +50% | | |
| Manpower | | −25% | +10% |
| Tax efficiency | | −15% | |
| Control | | −7.5% max urban, −15% max rural | |
| Decentralization | | +0.2 per month | |
| Amirs' own max tax | | | +25% (the iqṭāʿs are being recalled) |

Note the shape: you want the amirs content, not strong. Satisfaction gives you the army; power takes the countryside, the manpower pool and the tax register.

## The pen and the sword

Under the Persianate Bureaucracy reform amir characters may lead armies and may not sit in the cabinet; the reverse holds for the Dīwān. The privilege **Umarāʾ at the Dīwān** admits them to the cabinet (and is the condition one of the Matter of Tork outcomes checks for); **Tāzīk Command of Arms** lets chancery men command. Amir privileges almost all push the [Turk vs Tazik](turk-vs-tazik.md) value toward Turk.

At game start every Persianate Sultanate receives two amir characters of the country's own culture with strong military ability.

Where a country has an Amirs estate, its noble pops raise amir cavalry levies in place of the base game's mailed knights; the units themselves are covered under [the military system](military-system.md). Several privileges raise the size of the amirs' and the tribes' levies.

## Retinues: the amirs' own regiments

1.4 lets an estate keep a private army bought from its own treasury. The amirs gain that right through the privilege **Right to Retinue**, which both Persianate starting templates hold from 1337.

To call those regiments under the royal standard, use **Summon the Amirs' Tümens** in the estate actions panel.

| | |
|-|-|
| Requires | An Amirs estate, the Right to Retinue, and at least one regiment the amirs have not yet raised |
| Legitimacy | −10 |
| Political influence | −15; reduced to −5 when the Dīwān holds more estate power than the Amirs |
| Amirs | −10% satisfaction |
| Cooldown | Three years |

The discount is the point of the design: a chancery strong enough to outweigh the camp turns the muster into a matter of the registers; a weak one has to beg and pay for it.

## The law on the umarāʾ

A law category, **Rights of the Persian Nobility**, is open to any country with an Amirs estate.

| Policy | Favoured by | Effects |
|-|-|-|
| **Curtail the Umara** | Dīwān | Amirs: −5% target satisfaction, −10% power, −20% levy size; tribes levy size −10%; tax efficiency +50%; max control +5%; Tazik +0.05 per month |
| **Rights of the Umara** | Amirs | Amirs: +10% target satisfaction, +10% power, +10% levy size; Turk +0.05 per month |
| **Amir Autonomy** | Amirs | Amirs: +30% power, +5% target satisfaction, +20% levy size; tribes levy size +10%; tax efficiency −20%; max control −5%; decentralization +0.1 and Turk +0.1 per month |

## The amirs before the court

In the [Maẓālim court](mazalim-court.md) the amirs answer for land seizure, illegal tolls, forced billeting, phantom horsemen on the muster rolls and private justice. Convictions cost them 10–25% satisfaction and often a quarter to two fifths of the estate's treasury, which goes to yours. They can also petition: to fortify the borders, to expand the cavalry, and to have the summer pastures written into the register.

The Dīwān's petition **Audit Iqta Holders** takes a fifth of the Amirs' treasury if it passes.

## Estate events

While the Amirs hold at least 25% of estate power, three events can come up on the Persianate flavour pulse:

| Event | Choices |
|-|-|
| **Demands of the Sword** (only without Amīr al-Umarāʾ) | Grant **Amīr al-Umarāʾ** and gain 15% Amirs satisfaction, or refuse and lose 20% |
| **Contented Amirs** | +10% Amirs satisfaction |
| **Amir Encroachment** | In a location the Amirs dominate: allow it and lose 10% control there, or uphold the centre and lose 5% Amirs satisfaction |

## The estate after the Matter of Tork

The [Matter of Tork](matter-of-tork.md) can end with the Turco-Mongol order dissolved. The estate does not disappear; its charter changes. The tribal privileges (**Tribal Hosts (Yurt)**, **Tribal Autonomy Rights**, **Umarāʾ at the Dīwān**, **Amir-Held Commands**, **Iqtaʿ Commutation**) are withdrawn from the list, and where the order was removed by force the three **Dehqan Revival** privileges take their place. See [Estate privileges](estate-privileges.md) for the entries.

## Playing with the Amirs

- Keep them satisfied and keep their power moderate. War, the Iqtāʿ Grant and the Right to Retinue raise satisfaction cheaply; Tribal Hosts and Soyurghal Grants raise power steeply.
- Count your tribesmen. The Tribal Power Base outweighs most privileges, so conquest of pastoral country is a political decision about your own court.
- If you mean to use the retinues, build the Dīwān's power above the Amirs' first; the political influence saved on each summons is ten points.
- An amir-heavy realm fields large cavalry levies on a thin tax base and a dark countryside. That is a workable state, and historically the usual one, but plan your income around it.

See also: [Dīwān estate](diwan-estate.md), [Estate privileges](estate-privileges.md), [The Maẓālim court](mazalim-court.md), [Turk vs Tazik](turk-vs-tazik.md), [Matter of Tork](matter-of-tork.md), [The military system](military-system.md), [Hordes](hordes.md).
