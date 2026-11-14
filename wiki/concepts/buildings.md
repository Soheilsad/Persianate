# Buildings, goods and materials

> *The pen writes the land onto the register; the sword takes it off again.*

!!! warning "New in 1.4 — not yet verified in play"
    The **Unaudited Iqṭāʿ** and **Tuyul** tiers, the waqf endowments' yearly reassessment and the qanāt pair were built or rebuilt for 1.4 and their numbers are a first draft. The **Kāshī Guild** currently has inputs but no output defined (see below).

## What it represents

A Persianate state in 1337 is held together by two kinds of paper. One is the chancery's own: the *dīwān* with its registers, audits and provincial branches, the institution every dynasty from the Buyids to the Ilkhans inherited and none could rule without. The other is the paper by which the chancery gives land away: the *iqṭāʿ*, a registered assignment of a district's revenue to an *amīr* in return for his cavalry, and the *waqf*, a pious endowment that puts property beyond the reach of tax collector and confiscation alike. Both began as instruments of the state and both tended, over generations, to become the private property of the people they were issued to. Underneath all of it lies the water: the *qanāt*, the underground channel that makes the plateau farmable and that has to be dug out again after every war.

This page is the reference catalogue for every building the mod adds or changes, followed by the changes to goods, construction costs and markets.

## The Dīwān chain

Three chancery buildings and the court. All require the **Persianate Sultanate** government and are removed if the country leaves it. Nobles staff them.

| Building | Where | Requirements | Limit |
|-|-|-|-|
| **Local Dīwān** | Town, city or megalopolis that is not the capital | Local control above 10% | One per province |
| **Regional Dīwān** | The capital, if it is a city or megalopolis. An empire-rank realm may also seat one in a city in each area that has none | Duchy rank or higher | One per site |
| **Dīwān of the Realms** | The capital, if it is a city or megalopolis | Kingdom rank **and** one of: Türk–Tāzīk axis at 50 or more toward Tāzīk; the **Restore Persian Bureaucracy** action taken; empire rank | One |
| **Royal Court** | The capital (town or larger) | None beyond the government | One |

### Local Dīwān

The provincial chancery branch: the *wālī*'s secretariat, with the tax rolls, the land registers and the *qāḍī*'s records of endowment and contract.

- Acts as a **proximity source of 30** (a governor's seat gives 80), so control radiates outward from it.
- **+10** maximum literacy for local nobles and burghers; **+0.75** local Dīwān estate power; draws nobles, clergy and burghers to the town.
- Upkeep: 0.3 paper, 0.1 books, 0.1 fine cloth.
- On completion: a small Farsi noble pop settles, the realm moves **+1 toward Tāzīk**, the Dīwān gains 3% satisfaction and the Amirs lose 2%.
- It can only be demolished once local control has fallen **below 30%**, and doing so costs 5% Dīwān satisfaction.

### Regional Dīwān

The chancery of a middling realm, of the kind the Injuids ran from Shīrāz, and under an empire the regional office of a great provincial city.

- **Proximity source of 66**; **+10** maximum literacy for local nobles and burghers; **+0.33** local Dīwān estate power.
- When it stands in the capital it also gives the country **+1.5% maximum control**, **+5% crown power**, **+15% Dīwān estate power** and **+1.5% tax efficiency**.
- Upkeep: 0.5 paper, 0.2 books, 0.2 fine cloth.
- On completion: a Farsi noble pop and **+2.5 toward Tāzīk**.
- Building the Dīwān of the Realms in the same city replaces it.

### Dīwān of the Realms

The *Dīwān al-Mamālik*, the central chancery of a kingdom or empire: the office of the Juvaynīs and Rashīd al-Dīn.

| Effect (country-wide) | Value |
|-|-|
| Maximum control | +4% |
| Crown estate power | +20% |
| Dīwān estate power | +50% |
| Tax efficiency | +4% |
| Monthly political influence gain | +10% |

It also gives **+1.0** local Dīwān estate power in the capital. Upkeep is 0.8 paper, 0.3 books and 0.3 fine cloth. Founding it settles a Farsi noble pop in the capital and moves the realm **+5 toward Tāzīk**. The requirements only apply to building it: once standing it stays until the city stops being the capital or the government changes.

### Royal Court

The *bārgāh*, the audience hall and household. It gives **+2% cabinet efficiency**, **+10% crown power** and a slow monthly drift toward absolutism, and it is expensive to keep: 1 paper, 1 fine cloth, 0.5 books, 0.15 furniture, 0.1 glass and 0.05 tools.

### Where the chanceries stand in 1337

| Building | Location (owner) |
|-|-|
| Dīwān of the Realms | Tabrīz (Chobanids, CHB), Delhi (DLH), Cairo (Mamluks, MAM) |
| Regional Dīwān | Baghdad (Jalayirids, JAL), Damascus (MAM), Daulatabad and Multan (DLH) |
| Local Dīwān | Aleppo and Alexandria (MAM) |

Within Erānzamīn itself there is exactly one Dīwān of the Realms, at Tabrīz, and one Regional Dīwān, at Baghdad. Everyone else builds from nothing.

## The iqṭāʿ and its decay

### Iqṭāʿ Grant

A chancery-registered grant of a rural district's revenue to an amir, who settles there with his household and retinue.

| | |
|-|-|
| Who builds it | The crown. Estates cannot |
| Where | Rural settlements only |
| Requirements | Persianate Sultanate; the Amirs hold the **Iqtāʿ Grant** or **Hereditary Tuyul** privilege; local control **below 60%** |
| Levels | Up to 3 |
| Cost | Very cheap (about half a month's income) |
| Upkeep | 0.1 horses, 0.2 weaponry, 0.2 leather, 0.2 cloth, 0.1 fine cloth, 0.05 paper |
| Demolition | Only when local control is **above 80%**; costs 5% Amirs satisfaction |

Effects:

- **+20% local levy size**, more local noble pops (a flat +0.1 plus a share scaled to population) and +10% local noble growth.
- **+1.0 local Amirs estate power**, **−5% local maximum control**, **−10** maximum noble literacy, and a slight permanent drag on Dīwān satisfaction. These are carried by a separate location modifier, "Offsetting Iqta Grant Effects", so read both tooltips. They are designed to scale with the level of the grant.
- The building tooltip shows a tiny manpower bonus. It is cancelled by the same modifier and is there only so the AI will build grants; an iqṭāʿ gives levies and no manpower.
- On completion: a noble pop of your primary culture and religion settles and the realm moves very slightly toward Türk.

Both standard Persianate starting setups begin with the **Iqtāʿ Grant** privilege already held, so most countries can register grants from the first day.

**The Amirs Ask for Land.** In the first year, and every ten years after while fewer than fifteen of your locations carry a grant, the Amirs petition for land. Accepting gives them the Iqtāʿ Grant privilege if they lack it, registers **three grants at once and free of charge** in eligible rural locations, and adds 10% Amirs satisfaction. Refusing costs 15% Amirs satisfaction and pleases the Dīwān by 5%. The AI always accepts.

### Unaudited Iqṭāʿ and Tuyul

The Amirs build these themselves on top of an existing grant. They are how a revocable assignment turns into a patrimony.

| | Unaudited Iqṭāʿ | Tuyul |
|-|-|-|
| Built by | The Amirs estate | The Amirs estate |
| Needs | An Iqṭāʿ Grant in the location; local control below 30% | An Unaudited Iqṭāʿ in the location; the **Hereditary Tuyul** or **Soyurghal Grants** privilege. Replaces the Unaudited Iqṭāʿ |
| Local Amirs power | +0.5 | +1.5 |
| Local maximum control | −15% | −30% |
| Local levy size | −10% | no change |
| Amirs' satisfaction equilibrium | +1% each | +2% each |
| On completion | −0.25 toward Türk; Dīwān −1%, Amirs +1% | −0.5 toward Türk; Dīwān −2%, Amirs +2% |
| You may demolish it when | Local control is above 70% (Amirs −5%) | Local control is above 90% (Amirs −10%) |

The first Unaudited Iqṭāʿ in the realm announces itself with the event **The Audit That Never Came**. The remedy short of raising control is the [maẓālim court](mazalim-court.md)'s **Decree: Reopen the Audit**, which forces about a quarter of the unaudited grants back onto the register at a quarter of the usual resentment, moves the realm +0.5 toward Tāzīk and gives +5 legitimacy. It cannot touch a Tuyul.

## Waqf endowments

Waqf buildings are raised by the estates, not by you. They appear only in a Persianate Sultanate that holds the **Muṣādara Right** privilege: the endowment is the shelter against confiscation, so it exists only where confiscation does.

| Building | Estate | Where | Grand form unlocked by |
|-|-|-|-|
| **Aʿyān Waqf** | Dīwān | Towns and cities | **Inviolable Endowments** |
| **Urban Waqf** | Burghers | Towns and cities | **Charter of the Bazaar Awqāf** |
| **Clerical Waqf** | Clergy (Muslim countries) | Anywhere, including rural | **Sanctity of the Endowments** |

Each has up to ten levels and gives its estate **+0.25 local power**. The **Grand** form of each replaces the ordinary one once the charter privilege is granted.

What they cost you is worked out once a year for the whole realm. For each estate the game adds up, over every location holding its waqf, the location's tax base × the estate's local share of power × the waqf's level (grand levels count double), and expresses the total as a percentage of the country's tax base. That percentage sets the size of a country modifier:

| Per point of share | Aʿyān ("Tax Lost to Waqf Exemptions") | Urban ("The Bazaar Endowments") | Clerical ("The Clerical Endowments") |
|-|-|-|-|
| The estate's maximum tax | −0.5% | −0.5% | −0.5% |
| Estate enrichment | +0.25% | +0.25% | +0.25% |
| Loan capacity | −0.5% | −0.5% | −0.5% |
| Tax efficiency | −0.2% | none | none |
| Clergy estate power | +0.25% | +0.25% | +0.25% |

In addition:

- Each ordinary waqf level pays its estate **0.1 gold a month**, each grand level **0.2**.
- The same share shelters the estate's treasury from you: muṣādara and corruption fines take that much less, up to a ceiling of 90%.
- The first endowment in the realm fires the event **Given to God, Forever**.

**Getting rid of them.** Demolishing a waqf costs the owning estate 2.5% satisfaction (5% for a grand one) and the clergy 1% (2%). While the matching charter is in force the endowments cannot be demolished at all. The maẓālim court's **Decree: Reclaim the Illegal Waqf** dissolves the waqf in roughly a fifth of the locations that have one, at a quarter of the usual resentment and with +5 legitimacy, but it is only available while you hold the Muṣādara Right and **no** charter has been granted to any estate. The charters are attractive (each gives its estate +10% satisfaction equilibrium and +0.025 monthly legitimacy) and that is the trap.

## Qanāts

The mod adds three kinds of land to the map: **Qanat Farmlands** (165 locations on the plateau), **Seasonal Irrigation** (190 locations) and **Crumbling Qanats** (defined, but no location starts as one).

| Land | Population capacity | Food | Development growth | Supply limit |
|-|-|-|-|-|
| Qanat Farmlands | 65 | +22% | +4% | 2 |
| Seasonal Irrigation | 80 | +28% | +6% | 3 |
| Crumbling Qanats | 45 | +10% | +2% | 0 |

On top of the land sit two buildings:

| | Qanāt Network | Damaged Qanāt |
|-|-|-|
| How it appears | Present at the start in every Qanat Farmlands location owned by a member of the Erānzamīn organisation, except those with a Damaged Qanāt. Can be built elsewhere on qanāt land | Present at the start in forty locations of the Khurāsān–Balkh belt, among them Merv, Marv al-Rūdh, Qūchān, Bojnord, Esfarāyen, Maymana, Sheberghān, Kunduz and Baghlān. Cannot be built |
| Levels | Up to 3 | 1 |
| Population capacity | +5 | −15 |
| Food | +2% | −10% |
| Development growth | +0.66% | −4% |
| Supply limit | +0.33 | −1.5 |
| Maximum RGO size | none | −5% |
| Upkeep | 0.3 masonry, 0.1 tools | none |

A **Damaged Qanāt** cannot be demolished. It goes away in two ways: the location grows past 50 development on its own, or you build a Qanāt Network over it.

Building a **Qanāt Network** takes **ten years**. It is cheap to commission and the cost is the wait and the upkeep. It needs local control above 30% and either a Türk–Tāzīk axis of at least 25 toward Tāzīk or the Dīwān's **Land Registers** privilege. Completing one removes the Damaged Qanāt, gives the peasants 3% satisfaction and moves the realm +1 toward Tāzīk. Neither building can be demolished, and the base game's irrigation building is removed from any location that has one of them.

In the current build the damaged belt is fixed at the start of the game. War and sack do not yet turn a working network into a damaged one.

## Economic buildings

| Building | Where | Who can build | Inputs → output | Notes |
|-|-|-|-|-|
| **Desert Clay Pit** | Any rank; desert, sparse or qanāt land without a clay deposit | Anyone | 0.107 tools → 1.5 clay, or nothing → 0.5 clay | Lets the plateau dig its own clay |
| **Adobe Kilns** | Same land, without a lumber deposit | Anyone | 0.4 clay + 0.2 tools → 1.0 lumber | Brick standing in for timber as the building material |
| **Kāshī Guild** | Town or larger | Countries whose capital is in the Persia region | 1.0 sand, 0.4 clay, 0.2 glass, 0.55 coal, 0.05 tools | Stonepaste ware, designed to supply porcelain. Its output is not defined in the current files. Starts in Kāshān (level 2) and Sāveh |
| **Kāshī Manufactory** | Town or larger | Same | 1.6 sand, 0.6 clay, 0.35 glass, 0.7 coal, 0.25 tools → 2 porcelain | Later upgrade that replaces the guild |
| **Naqshband Guild** | Town or larger | Same | 0.8 silk → 0.75 fine cloth | The drawloom. Starts in Tabrīz, Baghdad, Herāt and Yazd |
| **Ilkhanid Mint** | Only Ganja, Solṭāniyeh, Nāʾīn and Jīroft, and only where there is no governor's seat or dīwān | Whoever owns the city | 0.1 paper, 0.25 books, 0.15 silver, 0.1 copper | Proximity source of 33, +100% maximum RGO size, +0.1 local crown power, a little development. All four exist at the start |
| **Caravanserai** (changed) | Any rank | Countries with the caravanserai advance | 0.01 jewelry, 0.01 cloth | Now up to 5 levels and also buildable in the Persia region; gives +0.5 trade range per level |
| **Lumber mill** (changed) | Now also on Seasonal Irrigation land | Anyone | Base recipe | |

The base game has plateau states cutting timber from forests that are not there. The clay pit and the kiln let construction run on fired brick instead.

## Military and pastoral buildings

| Building | Where | Who can build | Effects |
|-|-|-|-|
| **Ghulam Barracks** | Town or larger; up to 3 levels | Countries permitted ghulām barracks: the **Dīwān al-ʿArḍ** or **Amir-Held Commands** privilege, or the Age of Discovery **Ghulām Corps** reform. See [the Matter of Tork](matter-of-tork.md) | Slave pops work it. +0.015 local manpower; regiments can be recruited here. Upkeep 0.15 leather, 0.1 cloth, 0.15 weaponry, 0.1 slaves |
| **Tamma Garrison** | Cannot be built | Nobody | An Ilkhanid inheritance. +0.05 local manpower per level, +0.25 local crown power, and its soldier pops raise **Ilkhanate Garrison Cavalry**. At the start: Baghdad, Sāmarrāʾ, Yazd, Ṭūs, Diyarbekir and Astarābād |
| **Sergeantry** (changed) | Capital | Now also Persianate Sultanates | Base effects |
| **Tribal Pasture** | Rural; arid, cold-arid or continental grassland, sparse or seasonally irrigated land in Persia, Khurāsān, the Fertile Crescent, Anatolia, the Caucasus and the steppes. Needs more than 5,000 tribesmen and local control below 33%. Up to 5 levels | Anyone | Employs 5,000 tribesmen a level. Produces 1.8 horses or 3 livestock with no inputs. −7.5 population capacity, +1.5 local tribes power, +10% local levy size |
| **Steppe Tribal Pasture** | Rural; Khurāsān and the steppes; more than 1,000 tribesmen. Up to 20 levels | Anyone | Employs 1,000 tribesmen a level. 0.45 horses or 0.75 livestock. −2 population capacity, +0.3 local tribes power, +2% local levy size |
| **Registered Pasture** | A location with a Tribal Pasture | Persianate Sultanates on the assimilating or dissolving paths of the Matter of Tork | 0.5 horses. +10% maximum rural control, −0.5 local tribes power, a little manpower. Costs 5% tribes satisfaction |
| **Cantonment of the Hosts** | Rural or town; more than 5,000 tribesmen. Up to 2 levels | Persianate Sultanates that have dissolved the tribes through the Matter of Tork | +0.02 local manpower, +5% maximum rural control |

The base game's horse breeder is tied to Mediterranean and oceanic climates and feeds its horses wheat. The pastures are how the plateau and the steppe actually produce horses: on grass, with tribesmen, at the expense of ploughland.

## Religious buildings

| Building | Where | Who can build | Effects |
|-|-|-|-|
| **Madrasa** (changed) | Town or larger; one | Muslim countries | +15 maximum clergy literacy, +5 maximum noble literacy, +10% conversion speed |
| **Ḥisba Office** | Town or larger; one | Muslim countries | +5% local maximum control, +5% conversion speed, +0.15 local clergy power, some burgher unrest |
| **Āstāna** | Any rank; one per province; needs a Sufi lodge in the location | Muslim countries with Sufism | +0.5 clergy pops, +10 maximum clergy literacy, +20% conversion speed, +0.5 local clergy power, a little prosperity |
| **Ḥawza ʿIlmiyya** | Town or larger with at least 10% Shia population | Shia countries | +20 maximum clergy literacy, +10% conversion speed |
| **Mashhad of the Imām** | Cannot be built | Nobody | +1.0 clergy pops, +15 maximum clergy literacy, +15% conversion speed, +1.0 local clergy power, prosperity. At the start: Karbalāʾ, Baghdad (al-Kāẓimiyya), Kūfa (Najaf), Sāmarrāʾ, Mashhad and Qom |

Madrasas are placed at the start in Baghdad, Mosul, Tabrīz, Solṭāniyeh, Shīrāz, Iṣfahān, Herāt, Bukhārā and Samarqand; ḥawzas in Qom and Ḥilla; āstānas in Ardabīl, Torbat-e Jām, Basṭām, Chisht, Kāzerūn, Konya and Yasī.

## Buildings that belong to other systems

| Building | In brief | Explained on |
|-|-|-|
| **Mutaṭawwiʿa Lodge** | Needs the **Sword of The Sharia** reform. Its clergy raise Ghazi Volunteers | [The ghāzī state](ghazi-burden-of-sword.md) |
| **Zūrkhāna** | Needs the chancery and **ʿAyyār Militia Recognition**, or the Commonwealth. −1 local unrest; its burghers raise the Shahr Militia | [The ghāzī state](ghazi-burden-of-sword.md), [Commonwealth of Martyrs](commonwealth-of-martyrs.md) |
| **Dervish Khānaqāh** | Commonwealth only, up to 5 levels. Manpower, garrison and the Dervish Corps | [Commonwealth of Martyrs](commonwealth-of-martyrs.md) |
| **Mission of the Liberated** | Commonwealth only. Converts to Shia Islam, −0.1 unrest | [Commonwealth of Martyrs](commonwealth-of-martyrs.md) |
| **Sarbadar Preachers** | Placed by events in other countries' towns. Unrest, lost control and Shia conversion until paid off | [Commonwealth of Martyrs](commonwealth-of-martyrs.md) |
| **Tariqa Lodge**, **Ghulāt Khānaqāh**, **Grand Khānaqāh**, **Tribal Devotion Circle**, **Rural Zāwiya**, **Endowed Waqf**, **Qizilbash Lodge**, **Dervish Takiya**, **Futuwwa Brotherhood** | Built by a Sufi order inside other countries. They convert, pay the order and lower the host's control | [Ṭarīqa orders](tariqa-orders.md) |
| **Darugha's Seat** | Steppe hordes under a Chinggisid khan or a beglerbeg's regency. Proximity source of 60 in a town or city, with no road needed; each seat strengthens the begs | [Hordes](hordes.md) |

## Goods, construction and markets

**Naphtha and tar.** Tar can now be gathered as a raw material, and the Absheron seeps at **Baku** produce it. A new first-age advance, **Naphtha Gathering**, permits the extraction; it sits directly after bronze working at a low research cost.

**Horses.** Horses no longer count as food, and their transport cost falls from 2 to 0.5: herds walk to market. Camels are left as the base game has them.

**Building materials.** Base output per worker is doubled for clay (0.02), stone (0.012) and lumber (0.01), and raised for sand (0.01).

**Demand.** Paper, books and fine cloth are demanded at **1.5 times** the normal rate in the Persia, Khurāsān and Fertile Crescent regions. Tribesmen now buy modest amounts of tea, salt, weaponry, cloth, tools and jewelry, eat more wheat and millet, and buy no lumber or leather on the market.

**Construction costs.** Glass is no longer needed to build the common town buildings (temples, madrasas, hospitals, markets and the rest) or a market centre; masonry of equal value replaces it. A caravanserai is built from masonry, livestock and horses and no longer needs lumber or camels.

**Trade range.** Every country in the world has **+300 trade range**.

**Markets in 1337.** Herāt has its own market. In the north the Kazan market sits at Bolghar instead, and the base game's markets at Sarāy-Jük and Chimgi-Tura are removed.

**Start of game.** Every Erānzamīn member's farmland and Seasonal Irrigation locations begin with the base game's irrigation building.

## Practical advice

- Build a **Local Dīwān** in every province you mean to keep. It is the only building here that raises control at a distance, and each one nudges the realm toward Tāzīk.
- Register **iqṭāʿ grants** where control is poor anyway. A grant costs 5% maximum control in a place that had little, and gives 20% more levies there.
- Watch for the **Unaudited Iqṭāʿ**. It needs control below 30%, so a Local Dīwān or a governor nearby is the prevention, and the decree is the cure. Do not grant Hereditary Tuyul or Soyurghal Grants unless you accept that the Tuyul tier will follow.
- Decide early whether you will ever want to dissolve waqf. Once one charter is granted, the decree is closed to you until the charter is revoked.
- Repair the Khurāsān qanāts if you hold them for the long term. Ten years is slow, but a Damaged Qanāt costs a location 15 population capacity and a tenth of its food.

See also: [Dīwān estate](diwan-estate.md), [Amirs estate](amirs-estate.md), [Estate privileges](estate-privileges.md), [The maẓālim court](mazalim-court.md), [The military system](military-system.md), [Türk vs Tāzīk](turk-vs-tazik.md), [The Matter of Tork](matter-of-tork.md).
