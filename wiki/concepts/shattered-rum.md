# Shattered Rum

> *In Konya the khuṭba is read over an empty throne.*

## What it represents

The Seljuk sultanate of Rūm did not fall in a day. After the Mongol victory at Köse Dağ in 1243 its sultans ruled as clients, confirmed by the Ilkhan's diploma and supervised by his governors; the last of the line died in 1308, and from then on Anatolia was an Ilkhanid province in which Türkmen *begs* held their marches (*uc*) by patent from Tabriz. When Abū Saʿīd died in 1335 the patents stopped meaning anything. What remained was a land of some two dozen beyliks, each as sovereign as its sword, and one open question that strength alone had never answered here: by what *warrant* does a beg become a sultan? Two answers were available in the fourteenth century. The frontier houses pressed the *ghazā* against the Roman coast and sought confirmation from the Abbasid caliph in Cairo, as Bāyezīd I did in 1394. The houses of the interior looked to Konya, the old *dār al-mulk*, where the Karamanids had already tried once in 1277 to raise the Seljuk inheritance and been thrown out within the year.

**Shattered Rum** is the mod's rebuild of the base game's *Rise of the Ottomans* situation around that question. The base race between beyliks is kept; what changes is that winning the race is no longer enough.

## What the mod changes at a glance

- The situation is renamed **Shattered Rum** and its opening events are rewritten. The Ottomans are no longer the presumed winner: whichever beylik is strongest is simply "the strongest of the marches".
- Every beylik is switched to the [Persianate Sultanate](persianate-sultanate.md) government when the situation starts, and is offered a three-way constitutional choice.
- The situation's **victory ending now requires a legitimacy answer**: a vindicated *ghazā* doctrine or a vindicated Seljuk claim. A beylik that conquers Anatolia with neither gets the failure ending.
- A new reform, **Claimant of the Seljuk Inheritance**, opens a new disaster, **The Seljuk Inheritance**, with a four-step state-building programme and its own crown, the **Sultanate of Rum**.
- **Rum** as a formable country now needs one of two "doors" in addition to the base requirements.
- All beyliks start at Duchy rank (the base game gives that rank to the Ottomans alone), and beylik squabbles draw far less outside hostility.

## Who takes part

The participants are the countries holding the **Anatolian Beylik** reform. In 1337 these are the Türkmen marches of the base game:

Ottomans (TUR), Karamanids (KAR), Germiyanids (GRM), Aydınids (AYD), Saruhanids (SRU), Karasids (KRD), Menteşeids (MEN), Candarids (CND), Hamidids (HMD), Teke (TEK), Alaiye (ALY), Dulkadirids (DUL), Sahib Ataids (SHP), İnançids (INA), Tavas (TVS), Ahis (AHI), Kubadids (KBD), Tacettinids (TDJ), Haciemirids (HCI), Bafra (BFR), Artuqids (ATQ) and Dilmaçids (DIL).

Not all of them start free. Germiyan holds the Karasids, Saruhanids and Aydınids as vassals (and Aydın holds the İnançids, Menteşe holds Tavas); the Dulkadirids answer to Egypt, the Dilmaçids to the Sutayids, and four northern marches pay tribute to the Eretnids. Only independent beyliks are ranked in the race.

A beylik founded or freed later (a released *uç bey*, a new Turkish or Türkmen march) takes the Anatolian Beylik reform, joins the roll, and receives the Persianate Sultanate government and Duchy rank on the spot.

**The Eretnids (ERE) are the exception.** The mod starts them as a full Persianate Sultanate with a working chancery (the Ilkhanid provincial administration of Rūm, still running at Sivas), as a vassal of the Jalayirids and a member of Erānzamīn. They hold Sivas and four tributary marches (Kubadids, Tacettinids, Haciemirids, Bafra). The Seljuk claim is open to them through the reform screen, and its third step is cheaper for a realm that already keeps a chancery.

### The Anatolian Beylik reform

| Effect | Value |
|-|-|
| Unjustified war on same religion penalty | −25% |
| Non-culture levy size | +25% |
| Antagonism received | −30% |
| Government size / reform slots | +1 / +1 |
| Tributary subjects | allowed |

The reform cannot be removed before 1340 or while Shattered Rum is active. While a march holds it, the Erānzamīn-style **Unsettled Legitimacy** penalty does not apply: a beg has no khuṭba problem until he claims more than a march.

## How it starts

The situation can begin from April 1337 and before 1350. On the day it starts:

1. Every beylik becomes a **Persianate Sultanate** with *favourite-son* succession. Without a chancery this is mostly dress: the Dīwān and Amirs estates only fill once the realm has the **Persianate Bureaucracy** reform (see [the Dīwān estate](diwan-estate.md)). A march **cannot simply adopt** that reform; it has to be built or bought through one of the two roads below.
2. The strongest independent beylik (by military strength plus tax base) is named, and receives the base game's **Legacy of Osman** reform whoever it is. (In the base game a non-Ottoman leader silently failed to get it.)
3. Five days later every beylik receives **The Marches Without a Master**, the choice of road.

### The Marches Without a Master

| Option | Effect | Leads to |
|-|-|-|
| *"The frontier is our patent. Press the ghaza."* | Adopt the **Ghāzī Sultanate** reform; +10% Clergy satisfaction; +5 legitimacy | [The Ghāzī Burden of the Sword](ghazi-burden-of-sword.md) |
| *"The inheritance of the House of Seljuk waits at Konya. We claim it."* (capital must be in Anatolia) | Adopt **Claimant of the Seljuk Inheritance** | The Seljuk Inheritance disaster |
| *"Our fathers were begs. Their tents are enough."* | +5 stability | Nothing, at a price (below) |

The AI leans towards the *ghazā* when it borders a non-Muslim country, towards the Seljuk claim when it owns Konya, and towards the tents when it is small.

Deferring is a real choice but not a free one. A beylik with none of the four answers (Ghāzī Sultanate, Sword of The Sharia, Claimant of the Seljuk Inheritance, Sultanate of Rum) carries **March Without a Mandate**: **−0.5 legitimacy per month**. Both reforms are designed to remain available from the reform screen afterwards.

## The race

The situation tracks the three strongest independent beyliks and re-ranks them every month. The base game's machinery around the leader is untouched: the offer of **Leader of the Turks** to a non-Ottoman front-runner, the vassalisation and integration events, decaying castles, Bey Fortresses and Seljuk Mints, *The Balkan Wars* once the leader passes 120 locations, and the empire-tier event for a leader who holds Constantinople.

### Actions on the situation panel

| Action | Who can use it | Cost | Effect |
|-|-|-|-|
| **Consolidate the Conquest** | Any beylik | −5 legitimacy, −5 stability; once a year | Fully integrates every location you own in one conquered Anatolian province |
| **Summon to Obedience** | A claimant who has proclaimed custody of Konya | −5 legitimacy; once every 6 months | Grants the **Custody of Rum** casus belli on a neighbouring beylik or any neighbour with its capital in Anatolia (no truce, no alliance with it) |
| **Endow a Chancery** | A vindicated ghāzī (see below), at peace, with no chancery yet | Three years' income, −40 legitimacy, −20 stability; a **Regional Dīwān** must already stand | Grants **Persianate Bureaucracy**, the privileges Land Registers, Muṣādara Right, Iqtāʿ Grant and Right to Retinue, and a Persian court language |
| **Petition the Caliph for Rum** | A vindicated ghāzī with a working chancery who is currently the strongest beylik | One year's income | +25 legitimacy, +10 prestige, and the **Caliph's investiture**: the Cairo door to forming Rum |

"Vindicated ghāzī" means the Burden of the Sword has ended in one of its two successes, **Sword of Islam** or **Guardian of the Thughur**.

**Custody of Rum** is a superiority war in which the attacker can only demand locations in Anatolia, with conquest and subjugation at a reduced war-score cost. The keeper of Konya has no writ over Syria.

## The Seljuk road

### Claimant of the Seljuk Inheritance

Open to any Muslim Persianate Sultanate with its capital in Anatolia that has not taken another answer to the legitimacy question (Ghāzī Sultanate, Chinggisid Regency, *Farr-i Īzadī* and the rest all exclude it). **Owning Konya is not required to declare.** Taking the city is the first step of the programme, and holding it already is the Karamanids' entire head start.

| Effect of the reform | Value |
|-|-|
| Antagonism received | +20% |
| Monthly prestige | +0.1 |
| Clergy satisfaction | +3% |
| Nobles satisfaction | −5% |
| Monthly drift towards centralization | +0.05 |

Once taken, the reform cannot be dropped. The claim ends vindicated or broken, never quietly shelved.

### The Seljuk Inheritance

The disaster begins within months of adopting the reform, and fires only once per country. It follows the same economy as the [Farr Proof of Fortune](farr-proof-of-fortune.md): a claim under audit bleeds legitimacy, and only war and state-building pay it back.

**On start:** −40 legitimacy. Your fathers' patents ran from the Ilkhan's chancery; the claim voids your own paperwork.

**While it runs:**

| Effect | Value |
|-|-|
| Monthly legitimacy | **−1.0** |
| Minting income | −30% |
| Court spending efficiency | −10% |
| Nobles satisfaction | −5% |
| Diplomatic reputation | −1 |

**What feeds legitimacy:**

| Source | Effect |
|-|-|
| Being at war | +0.3 legitimacy per month and +7.5% Nobles satisfaction for as long as the war lasts |
| Winning a war | +5 legitimacy and **Glory of the Claimant's Arms**: +0.4 per month for 12 months, extended by each further victory |
| Winning a major battle | +1 |
| Gaining a location | +1 |
| Losing a battle | −2 |
| Losing a location | −3 |
| Losing your capital | −20 |
| Losing a war | −10 and **Shame of the Claimant's Arms**: −1.0 per month for 6 months |

Each of these arrives as a short notification event with three buttons: acknowledge, silence that kind of notice, or silence them all. The legitimacy change is applied either way.

### The Program of the Inheritance

Four buttons on the disaster panel, taken in order. Each costs gold and a rising amount of legitimacy up front, and pays back twice: a **permanent** modifier, and **The Claim Advances**, a relief of **+0.5 legitimacy per month for five years** that each further step extends.

| # | Step | Requires | Cost | Permanent reward |
|-|-|-|-|-|
| 1 | **Proclaim Custody of the Old Capital** | Own Konya | 3 months' income, −10 legitimacy | **The Old Capital**: +0.2 monthly legitimacy, +0.05 monthly prestige; +10 prestige; unlocks **Summon to Obedience** |
| 2 | **Strike the Sikka** | Step 1; own Konya | 6 months' income, −20 legitimacy | **The Sikka of Konya**: +0.15 monthly legitimacy, +15% minting income; +5 prestige |
| 3 | **Restore the Diwan of Rum** | Step 2; a **Regional Dīwān** and two **Local Dīwāns** built | One year's income, −30 legitimacy, −5 stability, and a further −10 stability when the chancery is constituted | The **Persianate Bureaucracy** reform; **The Diwan of Rum**: +0.15 monthly legitimacy, +5% cabinet efficiency; the privileges Land Registers, Muṣādara Right, Iqtāʿ Grant and Right to Retinue; Persian court language |
| 4 | **Reopen the Trunk Road** | Step 3; own Konya and Sivas | 8 months' income, −40 legitimacy | **The Trunk Road Reopened**: +0.1 monthly legitimacy, +5% tax efficiency, +2% maximum rural control; +5 prestige |

A realm that already has the Persianate Bureaucracy (the Eretnid case) pays only −10 legitimacy for step 3 instead of −30 and −5 stability, and receives no new privileges; the follow-up −10 stability still applies.

With all four standing, the permanent rewards return +0.6 of the −1.0 bleed, and the relief covers the rest for as long as it lasts.

**Losing Konya un-builds the claim.** If the city leaves your hands after step 1, the step is revoked, The Old Capital modifier is removed, and you lose 15 legitimacy and 10 prestige. The other steps stay, but you must retake the city and proclaim again (paying again) before you can be vindicated.

### How it ends

The disaster panel shows two counters: **The Program of the Inheritance** (0–4) and **The Vindication Clock** (months at legitimacy 60 or more, out of 36; cumulative, not consecutive).

| Ending | Condition | Result |
|-|-|-|
| **Vindicated** | All four steps standing; 36 months on the clock; legitimacy 60 or more now; and either 60+ locations with your capital in Anatolia, or 3+ subjects | The claimant reform is replaced by **Sultanate of Rum**; +25 legitimacy, +15 prestige; the Konya door to forming Rum |
| **Broken** | Legitimacy falls to 5 or below | The claim is stripped; −25 legitimacy, −25 prestige; the country can never declare it again |
| **Abandoned** | The claimant reform is lost by other means | The disaster ends quietly |

A broken claimant keeps whatever he built: the modifiers of completed steps and, if he reached step 3, the chancery. The apparatus outlives the claim.

### Sultanate of Rum

The crown that sits on top of the chancery. On adoption: +15 stability and promotion to Kingdom rank if lower.

| Effect | Value |
|-|-|
| Monthly legitimacy | +0.10 |
| Tax efficiency | +10% |
| Cabinet efficiency | +15% |
| Dīwān estate power | +15% |
| Dīwān satisfaction | +5% |
| Amirs satisfaction | +1.5% |
| Monthly drift towards centralization | +0.10 |
| Maximum urban control | +5% |
| Cultural tradition | +5% |
| Diplomatic reputation | +1 |

Under the Sultanate of Rum, literate Muslim Turkic notables of the towns can enter the Dīwān estate. Elsewhere the chancery class is drawn from Iranian, Arab and Indian Muslim pops only; the restored sultanate trains its own.

## The ghāzī road

The frontier answer reuses the Erānzamīn machinery unchanged: **Ghāzī Sultanate**, the [Burden of the Sword](ghazi-burden-of-sword.md) disaster, and its successful endings. It is the natural road for the coastal and north-western marches that border Byzantium and the Latin lordships. What it does not give you is a chancery. A vindicated ghāzī who wants one must buy it with **Endow a Chancery** at full market rate (three years' income against the claimant's one), and only then can he send the embassy to Cairo with **Petition the Caliph for Rum**.

## How the situation ends

Shattered Rum ends when one of these is true:

- the year 1565 has passed;
- no beylik is left;
- the strongest beylik is independent and owns more than 500 locations and at least 50 towns or cities;
- after 1400, the strongest beylik owns fewer than 100 locations and is at peace.

**Victory** needs the leader to have passed the size test *and* to hold a completed legitimacy answer: Sword of Islam, Guardian of the Thughur, or the vindicated Seljuk Inheritance. The winner then receives the base game's rewards (*The Rise of the Turks*: the Pashas reform, the Eyalet Division policy, and the Legacy of the Ottomans or Legacy of the Turks). If the winner is not the Ottomans and the Ottomans no longer exist, the winner is also made into **Rum** at once.

**Failure** (*Stagnation of the Turks*) is what happens otherwise, including to a leader of any size who never answered the question. He has conquered a province, not founded a sultanate.

## Forming Rum

The formable keeps its base requirements: a Turkic, Muslim country that owns 85% of Anatolia and has concluded the situation as its winner. The mod adds a second gate, shown as *"You hold a completed claim to Rum"*:

- **the Konya door**: the vindicated Seljuk Inheritance, self-declared; or
- **the Cairo door**: the Caliph's investiture from **Petition the Caliph for Rum**.

Forming Rum raises the country to Empire rank.

## The Ottomans

The Ottomans are one march among many. Their starting population is reduced to the frontier norm and made markedly more pastoral, while Karaman's towns (Konya and Larende above all) are strengthened; see [Demography and cultures](demography-and-cultures.md). Their AI is still pushed to annex, and the base Ottoman content remains theirs.

Because the Ottomans run a Persianate Sultanate for the whole campaign, base content gated on the monarchy government would otherwise go missing. The mod keeps the **Imperial Harem** reform available to them, lets the capital **Sergeantry** building be built by Persianate Sultanates, and ships a twin of the base event *The One True Emperor* (from 1537, for an Ottoman empire holding Constantinople) that fires under the new government.

## Advice

- **Decide early.** Every month on the fence costs 0.5 legitimacy. If you mean to stay a small march, accept that and find an overlord.
- **Karaman is the natural Seljuk claimant**: it owns Konya on day one and can proclaim immediately. Everyone else must take the city first, and declaring before you can take it means bleeding at full rate with no step to show for it.
- **Do not start the programme at peace.** The +0.3 for being at war and the +0.4 for each won war are what keep you above the Broken line while the −40 opening hit heals.
- **Build the offices before you need them.** Step 3 needs a Regional Dīwān and two Local Dīwāns standing; see [Buildings](buildings.md).
- **Step 4 needs Sivas**, which the Eretnids hold. Plan that war, or that vassalage, from the start; **Summon to Obedience** gives you the casus belli once Konya is proclaimed.
- **Garrison Konya.** Losing it costs a step, 15 legitimacy, and the price of proclaiming again.
- **On the ghāzī road**, budget for the chancery. Three years' income and −20 stability is a peacetime purchase.
- The size test for victory (500 locations, 50 towns or cities) is the base game's and is larger than Anatolia: the winner is expected to have crossed into the Balkans or Syria.

See also: [The Ghāzī Burden of the Sword](ghazi-burden-of-sword.md), [Farr Proof of Fortune](farr-proof-of-fortune.md), [Persianate Sultanate](persianate-sultanate.md), [Government reforms](government-reforms.md), [The Dīwān estate](diwan-estate.md), [Buildings](buildings.md), [Erānzamīn situation](eranzamin-situation.md), [Kurdish emirates](kurdish-emirates.md), [Countries and tags](../reference/countries-and-tags.md).
