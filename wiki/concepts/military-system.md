# The military system

> *The sultan pays, the amir serves, and the peasant is left to his plough.*

!!! warning "New in 1.4 — not yet verified in play"
    The Amirs' private regiments and the **Summon the Amirs' Tümens** action use the 1.4 estate-army system and have not been tested in a full campaign. Unit damage values were rebalanced for 1.4.7 and may change again.

## What it represents

The post-Ilkhanid state does not arm its taxpayers. The cultivator pays the land tax and the townsman pays the market dues, and in the political theory of the age that revenue is what keeps an army in the field to protect them: the Circle of Justice. The fighting is done by people whose calling it is. There are the *amīrs*, mounted and armoured, who hold *iqṭāʿ* assignments in place of a salary and answer the muster with their retinues. There are the tribes, Türkmen and Mongol on the plains and Kurd, Lur and Baluch in the mountains, who are summoned, never conscripted. Later there are the *ghulāms*, purchased and salaried, loyal to the household that owns them. The mod builds the levy around those three and takes the mass peasant army away.

## Who is raised from what

Every levy in the game draws a share of one kind of pop. In a country with the Persianate chancery the table reads like this:

| Pops | Unit raised | Type | Share of the pop | Conditions |
|-|-|-|-|-|
| Nobles of the Amirs estate | **Amir Cavalry**, then **Frontier Amir Cavalry**, then **Reformed Amir Cavalry** | Heavy cavalry | 30% | One unit per age (Traditions, Renaissance, Discovery) |
| Turkic, Mongol and Tatar tribesmen | **Nomadic Skirmishers**, then **Turkoman Light Cavalry** | Light cavalry | 10% | Traditions, then Renaissance |
| The same tribesmen | **Qizilbash Cavalry** | Heavy cavalry | 10% | Age of Discovery |
| Iranian tribesmen (Kurds, Lurs, Baluch and others) | **Zagros Skirmishers**, then **Tofang Levies** | Light infantry | 10% | Tofang Levies from the Age of Discovery |
| Iranian tribesmen | **Frontier Amir Cavalry** (the "Retinue of the Mir") | Heavy cavalry | 2% | All ages |
| Soldiers in a location with a **Tamma Garrison** | **Ilkhanate Garrison Cavalry** | Heavy cavalry | 75% | Age of Traditions only |
| Clergy in a location with a **Mutaṭawwiʿa Lodge** | **Ghazi Volunteers** | Light cavalry | 20% | **Sword of The Sharia** reform |
| Burghers in a location with a **Zūrkhāna** | **Shahr Militia** | Heavy infantry | 10% | **ʿAyyār Militia Recognition** privilege |
| Peasants; nobles and burghers of the Dīwān estate | Base-game levies | | −90% levy size | |

For comparison, the base game raises 10% of noble pops as knights and 2% of peasants as foot. A Persianate state raises three times the cavalry from its military nobles, five times the base rate from its tribes, and almost nothing from its villages.

Points that follow from the table:

- **Which nobles count.** A noble pop belongs to the Amirs estate if it is Muslim and does not qualify for the Dīwān. Literate Iranian and Arab nobles in cities, province capitals and bazaar towns belong to the Dīwān estate and are not levied (Iraqi Arabs are as much part of the scribal class as urban Iranians). Non-Muslim nobles fall to the ordinary nobles estate unless the Amirs hold **The Open Muster Rolls**.
- **Arab tribesmen** have no levy in a Persianate state outside Yemen. Only Turkic, Mongol, Tatar and Iranian tribesmen ride for the chancery.
- The base game's generic tribal levies are switched off for the Persianate Sultanate, the Commonwealth of Martyrs and the Iranic Tribal Polity, and base knights are switched off for any country with an Amirs estate.
- The same Iranian tribal levies serve the [Kurdish emirates](kurdish-emirates.md) and the [Commonwealth of Martyrs](commonwealth-of-martyrs.md).

### Light and heavy cavalry

Since 1.4 the game treats light and heavy cavalry as separate arms with their own modifiers. In this mod the **amirs are heavy cavalry** and the **tribes are light cavalry** until the Age of Discovery, when the Qizilbash become heavy. The **Right to Retinue** privilege gives +20% combat power to both.

## What changes the size of the levy

Levy size is set per estate. These are the main levers.

| Source | Amirs levy | Tribes levy | Other |
|-|-|-|-|
| **Persianate Bureaucracy** (the baseline reform) | +30% | +10% | Peasants −90%, Dīwān −90% |
| **Iqtāʿ Grant** privilege | +50% | | |
| **Hereditary Tuyul** privilege | +15% | +10% | |
| **Right to Retinue** privilege | +30% | | |
| **Tribal Hosts (Yurt)** privilege | +20% | +10% | |
| **Tribal Autonomy Rights** privilege | | +10% | |
| **Quriltai Convocation** privilege | +15% | +10% | |
| **The Dehqan Revival** privilege | +15% | | |
| **Chinggisid Regency** reform | | +15% | |
| **Amīr Sultanate** reform | +20% | | |
| **Türkmen Confederation** reform | +20% | +20% | |
| Law: **Amir Recruitment** | +50% | | −10% tax efficiency, drift toward Türk |
| Law: **Tribal Host** | | +15% | Drift toward Türk |
| Law: **Ghulam Corps** (needs the Ghulām Corps reform) | | | −20% to all levies, +5% discipline |
| Law: **Curtail the Umara** | −20% | −10% | |
| Law: **Rights of the Umara** | +10% | | |
| Law: **Amir Autonomy** | +20% | +10% | −20% tax efficiency |
| Each **Iqṭāʿ Grant** building | | | +20% levy size in its location |
| Each **Tribal Pasture** level | | | +10% levy size in its location |
| **Post-Ilkhanid Chaos** (see below) | | | +10% levy size in the location |

Both standard starting setups begin with the **Iqtāʿ Grant** privilege, so the opening army of a typical successor state is its amir cavalry at +80% or more, plus whatever tribesmen it rules. The buildings themselves are described on [the buildings page](buildings.md).

## The units

All of these are levies. They take their size and base combat power from the standard unit of their age and type; the table lists what the mod changes. "Losses taken" is strength damage and "morale taken" is morale damage; a negative number is good for the unit.

### Amirs and garrisons

| Unit | Age | Losses taken | Morale taken | Initiative | Terrain |
|-|-|-|-|-|-|
| Amir Cavalry | Traditions | −15% | −30% | 2 | Hills +10%, sparse +10%, grasslands +5%, wetlands −10%, mountains −25% |
| Frontier Amir Cavalry | Renaissance | −7.5% | −30% | 2 | Hills +10%, sparse +10%, grasslands +5%, mountains −5% |
| Reformed Amir Cavalry | Discovery | +10% | −30% | 2 | Hills +10%, sparse +10%, grasslands +5% |
| Ilkhanate Garrison Cavalry | Traditions | +15% | −30% | 2 | Hills +10%, sparse +10%, grasslands +5%, wetlands −10% |

The base game's mailed knights take 25% fewer losses and 25% less morale damage. Amir Cavalry is a little less armoured, steadier, at home in dry hills and bad in mountains.

### The tribes

| Unit | Age | Damage dealt | Losses taken | Morale | Initiative | Other | Terrain |
|-|-|-|-|-|-|-|-|
| Nomadic Skirmishers | Traditions | −2.5% | | +15% morale taken | 3 | −15% supply weight | Sparse +25%, flatland +10%, hills −10%, mountains −20%, Qanat Farmlands −10% |
| Turkoman Light Cavalry | Renaissance | +7.5% | +10% | | 3 | −15% supply weight | Sparse +15%, flatland +10%, hills −10%, mountains −20% |
| Qizilbash Cavalry | Discovery | +5% | | +25% morale dealt, −15% morale taken | 2 | | Sparse +15%, flatland +10%, hills −10%, mountains −20% |
| Zagros Skirmishers | Traditions, Renaissance | | +10% | +10% morale dealt, −15% morale taken | 2 | | Hills +30%, mountains +30%, plateau +15% |
| Tofang Levies | Discovery onward | +10% | | +10% morale dealt, −10% morale taken | 2 | | Hills +30%, mountains +30%, plateau +15% |

The steppe horse is fast and fragile and wins on open, dry ground. The mountain foot is the opposite: little use on the plain, very hard to shift in the Zagros.

### Units of other systems

| Unit | Raised by | Type | Changes | Terrain | See |
|-|-|-|-|-|-|
| Ghazi Volunteers | Clergy at a Mutaṭawwiʿa Lodge | Light cavalry | +20% morale dealt, −20% morale taken, +20% losses taken, −10% damage dealt, initiative 1, −15% supply weight | Sparse +15%, flatland +10%, desert +10%, forest −15%, wetlands −15% | [The ghāzī state](ghazi-burden-of-sword.md) |
| Shahr Militia | Burghers at a Zūrkhāna | Heavy infantry | −30% morale taken, −10% losses taken, +20% flank defence, −10% damage and morale dealt, −15% movement speed, +10% supply weight | Mountains +20%, farmland +20%, hills +10%, wetlands +10%, sparse −20%, flatland −15%, grasslands −15% | [The ghāzī state](ghazi-burden-of-sword.md) |
| Dervish Corps | Soldiers of the Commonwealth (50% of the pop); can also be recruited as regulars | Heavy infantry | +30% morale dealt, −30% morale taken, +15% losses taken, initiative 2, −30% supply weight; double the strength of ordinary first-age foot | Farmland, hills and mountains +20%, Seasonal Irrigation +10%, sparse −10%, grasslands −10% | [Commonwealth of Martyrs](commonwealth-of-martyrs.md) |
| Divani Cavalry | Recruited as regulars once the tribes have been dissolved through the Matter of Tork | Light cavalry | +10% morale dealt, −10% morale taken, −5% losses taken | | [The Matter of Tork](matter-of-tork.md) |
| Qabīlī Highlanders | Highland peasants and tribesmen of the Zaydi imamate (5%) | Light infantry | +15% damage dealt, +10% morale dealt, −25% morale taken, +10% losses taken, initiative 2 | Mountains +35%, hills +30%, plateau +15% | [The Zaydi imamate](zaydi-imamate.md) |
| Tribal Horse of the Jawf | Tribesmen, nobles and clergy of the imamate where horses are traded (10%) | Light cavalry | Fast, initiative 2 | Small bonuses in plateau, sparse, hills, mountains and desert | [The Zaydi imamate](zaydi-imamate.md) |
| Tihama Arab Horse / Foot | Lowland tribesmen under the **Rasulid Chancery** or **The Imam's House** (5% / 4%) | Light cavalry / light infantry | +10% morale taken | Good on flat and desert ground, poor in mountains | [The Zaydi imamate](zaydi-imamate.md) |

Steppe hordes raise **10% of their tribesmen** (the base game raises 2% of everyone) as the base game's horde cavalry; see [Hordes](hordes.md).

## The Amirs' own regiments

With the **Right to Retinue** privilege the Amirs estate may keep private regiments, paid for from the estate's own gold. They are the Amirs' until you call them. **Summon the Amirs' Tümens** puts the estate's unraised regiments under your command at the price of some legitimacy, 10% Amirs satisfaction and a heavy cost in political influence; if the Dīwān estate is more powerful than the Amirs the influence cost is light. The action has a three-year cooldown. See [the Amirs estate](amirs-estate.md).

## Ghulāms

There is no slave corps to buy in 1337. The ghulām system opens through [the Matter of Tork](matter-of-tork.md), when a realm chooses to reduce its reliance on the tribes, or late through the Age of Discovery **Ghulām Corps** reform. It needs three things:

1. **An administrator**: the Dīwān's **Dīwān al-ʿArḍ** privilege, the Amirs' **Amir-Held Commands** privilege (the two exclude each other), or the Ghulām Corps reform. Any of them permits **Ghulam Barracks**.
2. **A fostering layer**: the peasants' **Fostering Households** privilege.
3. **Barracks**: one level in the realm for the first purchase, three for the second, six for the third. The second and third also need a slave route.

**Purchase Ghulam Levies** then costs about six months of income, has a two-year cooldown and raises the corps one tier, creating a burst of demand for slaves in your market.

| Corps tier | Manpower | Discipline |
|-|-|-|
| Palace Ghulam Corps | +5% | +1% |
| Ghulam Regiments | +10% | +2% |
| The Army Within the Army | +15% | +3% |

The barracks themselves add manpower and a place to recruit regulars. The corps is a standing army paid in coin, which is why it suits a rich Tāzīk-leaning treasury and why the Amirs resent it: the Dīwān al-ʿArḍ costs 10% of their satisfaction equilibrium and feeds their unrest.

## Forts and sieges

The Mongol conquest pulled down city walls across Iran and forbade their rebuilding, and the Ilkhanate's collapse left nobody to pay for garrisons. In play this is one modifier, **Post-Ilkhanid Chaos**, placed at the start on every location owned by a member of the Erānzamīn organisation:

| Post-Ilkhanid Chaos | |
|-|-|
| Fort defence | −66% |
| Supply limit | +50% |
| Levy size | +10% |
| Prosperity and development | Slowly falling |

It lasts forty years and fades as it goes. While it is strong, sieges in the region are short and large armies can be fed, so wars are settled by field battles and the towns follow the winner. As it fades, and as realms pick up fort defence of their own (the **Ilkhanate Governorate** reform gives +20%, the Amirs' **Frontier Governorship** privilege +15% and a fifth more garrison), walls begin to matter again.

## Practical advice

- Count your Amir nobles and your tribesmen, not your population. A populous farming province with no amirs raises almost nothing.
- Keep the **Iqtāʿ Grant** privilege unless you have something to replace the cavalry with. Revoking it removes its +50% to the amir levy and, unless Hereditary Tuyul is held, the right to register grants.
- Fight tribal cavalry on sparse and flat ground and avoid taking it into hills or mountains. Take mountain foot the other way.
- Amir Cavalry is only strong for its age. Each age replaces it with a new unit, and the Age of Discovery version is the weakest relative to its peers; plan for ghulāms or Qizilbash by then.
- In the first decades, win the battle and march on the capital. Do not plan a campaign around long sieges until the chaos has faded.

See also: [Buildings, goods and materials](buildings.md), [Amirs estate](amirs-estate.md), [Estate privileges](estate-privileges.md), [Government reforms](government-reforms.md), [Türk vs Tāzīk](turk-vs-tazik.md), [The Matter of Tork](matter-of-tork.md), [The Erānzamīn succession](eranzamin-situation.md).
