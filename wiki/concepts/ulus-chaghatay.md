# Ulus Chaghatay

> *The khan's seat is the organisation's leader. It need not stay where it is.*

!!! warning "New in 1.4 — not yet verified in play"
    Ulus Chaghatay is new and has had little time in game. The organisation, its roster, the qubchur and the panel load and run; their balance, the AI's handling of them, and everything that follows a khan's death (the Amirs' Regency) are unverified, and the regency's later stages are being reworked.

In 1337 the Chagatai khanate was one *ulus* made of many hereditary followings. The Barlas around Kesh, the Jalayir at Khujand, the Suldus at Balkh, the Qara'unas in the Afghan lands and the Dughlats at Kashgar each held a domain with its own house and its own horsemen. They were *tümens* of one people under one khan, and a strong khan such as Kebek or Tarmashirin could command them and move them about; a weak one — Changshi was the fourth khan in three years — ruled what his amirs let him rule. From 1346 the amir Qazaghan governed the western ulus through khans he kept, and it was out of that generation of regents that Temür of the Barlas rose (the account followed here is Beatrice Manz's). Ordinary vassalage describes none of this, so the mod makes the khanate an **international organisation** whose leader is a country: the realm that holds the khan.

## The roster in 1337

The base game makes eleven amir houses vassals of Chagatai. In the mod they are independent members of the organisation instead, and four more domains are carved by whole provinces out of the khan's own territory, which base draws as a single block of 127 locations from Urumqi to Tashkent.

| Member | Tag | Standing | Notes |
|-|-|-|-|
| Chagatai | CHG | **Khan** (leader) | Court at Almaliq; Changshi Khan, of the Borjigin; Tengri. Keeps 57 locations: the Ili, Zhetysu, the Talas and the road north to the Emil |
| Barlas | BRL | Amir of the Ulus | Kesh; the house of Temür |
| Jalayirs | JLY | Amir of the Ulus | Khujand |
| Yasa'uri | YSU | Amir of the Ulus | — |
| Suldus | SLD | Amir of the Ulus | Balkh |
| Khuttal | KTT | Amir of the Ulus | The Vakhsh valley |
| Arlat | ART | Amir of the Ulus | Maymana |
| Apardi | APD | Amir of the Ulus | Andkhoy |
| Qara'unas | QUN | Amir of the Ulus | Kabul |
| Negüderi | NGD | Amir of the Ulus | Ghazni |
| Besüd | BSD | Amir of the Ulus | The central Afghan highlands |
| Dughlat | DGH | Amir of the Ulus | Kashgar |
| Ulus of Fergana | FGN | Amir of the Ulus | New. Andijan; 16 locations; Sunni (Hanafi) |
| Ulus of Chach | CAC | Amir of the Ulus | New. Tashkent and the middle Syr Darya; 27 locations; Sunni (Hanafi) |
| Ulus of Issyk-Kul | ISQ | Amir of the Ulus | New. Balasagun, the lake and the Chu; 17 locations; Tengri |
| Ulus of Dzungaria | DZG | Amir of the Ulus | New. Urumqi and the northern Tian Shan; 10 locations; Tengri |

The four new domains are named after their land and start with randomly generated rulers, because which house held which eastern valley in 1337 is poorly attested. All sixteen are Steppe Hordes.

Badakhshan (BKH), Karategin (KRG) and Qocho (QCH) are not members. They were tributary dynasties, not tümens, and remain ordinary vassals of Chagatai.

No member of the ulus joins the [Erānzamīn organisation](eranzamin-organisation.md) or counts as a contender in the [Erānzamīn succession](eranzamin-situation.md), although Transoxiana and Tukharistan lie in the region that would otherwise qualify them.

## The two standings

**Khan.** The leader of the organisation is a country, shown as "Khan". In 1337 it is Chagatai. Leadership never changes by vote or by strength; it moves only through the succession events described at the end of this page.

| The khan's realm | |
|-|-|
| Monthly prestige | +0.05, and a further +0.005 for every Amir of the Ulus |
| Monthly horde unity | +0.05 |

**Amir of the Ulus.** Every member that is not the leader holds this status automatically, and loses it automatically on leaving or on becoming the leader. It is not granted or revoked by anyone.

| Each amir | |
|-|-|
| Morale of armies | +5% |
| Monthly horde unity | +0.02 |

Members also see one another with the opinion bonus "Of the same ulus".

## The khan's rights

These are the rules of the organisation while a khan leads it.

| Rule | In play |
|-|-|
| The amirs ride with the khan | When the khan is attacked, every member joins his defence. When he declares a war, every member is called. Amirs cannot call one another |
| The khan protects his amirs | An amir attacked by an outsider can call the khan, and the khan is called automatically |
| Passage | Members have military access through one another's lands in wartime |
| No war inside the ulus | No member may declare war on another, with or without a casus belli |
| Nobody leaves | A member cannot leave the organisation |
| Closed membership | Nobody can apply, be invited or found a rival; the organisation dissolves only if fewer than two members remain |
| The qubchur | Every amir pays the khan (below) |

The ban on internal war and the ban on leaving are both designed to be lifted during the Amirs' Regency.

The whole ulus is drawn as one realm on the political map, the amirs in a lighter tint of the khan's colour.

## The qubchur

**Qubchur for the Khan** is a monthly payment from every amir to the leader.

- The total is **5% of the amirs' combined tax-and-trade income**. Each amir's part is in proportion to his own tax-and-trade income, and the whole sum goes to the khan.
- Like other organisation payments it has a slider. What an amir chooses to send has consequences for him:

| Share of the qubchur paid | Effect on the amir, per month |
|-|-|
| In full | +0.02 prestige |
| Between half and full | A proportional part of that +0.02 |
| Half | Nothing |
| Below half | Growing penalties, reaching **−0.30 prestige and −0.10 horde unity** at nothing paid |

The AI always pays in full. The payment's in-game description and tooltip still read "one part in a hundred"; the rate actually charged is 5%, raised because 1% left the khan insolvent.

## The panel

Ulus Chaghatay has its own organisation panel. The header strip shows three figures, and the Overview tab three cards. All of it is recalculated at the start of each month.

**Header**

| Figure | Meaning |
|-|-|
| **Amirs** | The number of junior members |
| **Weight of the Begs** | The power of the nobles estate in the khan's own realm, as a percentage |
| **Great Amirs to Khan** | The combined weight of the three greatest amirs divided by the khan's own. Near 1.00 he is their match; at 2.00 they outweigh him twice over |

**A realm's weight** is the measure behind most of the panel. It is 50% military strength, 35% tax base and 15% prestige, each taken as the realm's share of the total for the whole ulus. Empty land counts for nothing.

**The Khan** card shows the seat, its ruler and the heir its own succession law names today.

**The Succession** card shows, while a khan leads the ulus:

- **Weight of the begs** — the nobles' power in the khan's realm against the line at which they can make a khan of their own: half of all estate power, provided they also hold twice the crown's.
- **The three greatest amirs against the khan** — the ratio from the header against its line of 2.00.
- **If the khan died today** — the three amirs with the highest kingmaker standing, with their scores.

Both lines stand a third lower after a child khan's reign, and return to normal once a grown khan is seated without a regent.

**Kingmaker standing** of an amir:

| Term | Score |
|-|-|
| His ruler's military skill | × 2 |
| His ruler's administrative skill | × 1 |
| His domain's share of all the amirs' weight | × 250, to a limit of 60 (a quarter of the amirs' weight earns the full 60) |
| A wife of the line of Chinggis | +25 |
| Renown from battles and sieges won during a regency | To a limit of 60; nothing before a regency |

**The Amirs** card lists every amir, strongest first, with his share of the amirs' combined weight.

The Members tab lists the members by standing as in any organisation.

## The khan's own house

Chagatai is a Steppe Horde under a Borjigin khan, so everything on the [Hordes](hordes.md) page applies to it: the yam, darugha seats, shares for princes, and **The Törü of the Ulus** as its succession law. Two things bind those rules to this page:

- Every Darugha's Seat adds to the nobles' power in the khan's realm, which is the **Weight of the begs** bar.
- A share granted to a Borjigin prince weakens the khan's own weight against his amirs today, but puts a man of the line with an army into the field.

The amirs keep their own succession. The horde succession poll is not run for them, only for the seat of the ulus.

## The Amirs' Regency (in development)

What follows is the part of the system that is still being written and rebalanced. It is described here in outline only, without numbers, because they are changing.

When the khan dies, the ordinary horde poll for the seat of the ulus has two additional outcomes:

- **The amirs raise a khan.** If either bar on the Succession card is over its line and there is a man of the Borjigin line to enthrone, the best-placed kingmaker takes a khan into his keeping. The leadership of the organisation moves to his state, which takes the **Beglerbeg's Regency** reform, and the old seat must acquiesce or break away.
- **A child khan.** If the successor is under age and the begs are under the bar, the realm has an ordinary regency, and both bars are lowered for the next succession.

From the first of these begins **The Amirs' Regency**, a disaster on whichever state holds the khan. It is meant to run in four stages — *The Beglerbeg's Peace*, *The Amirs Fall Out*, *The Shock from Outside* and *The Ṣāḥib-qirān* — during which the regent must keep filling a gap in his legitimacy with victories and gold, the amirs become free to fight one another and later to leave, and neighbours acquire claims. It is meant to end in one of three ways: the khan recovers his power, one amir masters the rest as *Ṣāḥib-qirān*, or the ulus dissolves in a *bulqaq*. During a regency the Succession card changes to show the regent, the khan he holds, his heir's standing against the best rival, the legitimacy gap and the stage. The later stages in particular are being reworked and should not be relied on yet.

**Beglerbeg's Regency** itself is defined and stable. It is a Steppe Horde reform that cannot be chosen; only the regency's onset grants it.

| Beglerbeg's Regency | |
|-|-|
| Monthly horde unity | +0.10 |
| Monthly prestige | −0.10 |
| Political influence gain | −20% |
| Maximum control | −3% |

A regent's state counts as a khan's for the horde systems: it keeps the yam, the darugha seats and the right to grant shares.

**Casus belli.** Four exist, all handed out by the regency's events and none of them fabricable:

| Casus belli | Held by | Against |
|-|-|-|
| **Restore the Ulus** | A realm of the khan's line | The beg who rules through a khan of his own |
| **Take the Khan** | A member of the ulus | The member that holds the khan; the goal is his capital |
| **The Ulus in Disarray** | The regent's neighbours | The regent |
| **The Ṣāḥib-qirān's Reckoning** | The Ṣāḥib-qirān | Amirs who did not submit; subjugation is cheap, land is dear |

## Timur is not scheduled

In the base game the historical Temür appears by date: between 1360 and 1400 an event places him at the head of the Timurid tag (TIM), released around Samarkand, and starts the *Rise of Timur* situation. The mod turns this off.

What is implemented now:

- The base spawn event can no longer fire, nor can the two base events that favoured the historical man beforehand (his childhood chain of 1345–50 and the "Lame" nickname with its military bonus).
- Temür Barlas still exists as a character at the start, but without the base game's extended life expectancy. He can die young like any other amir's son.
- The Timurid tag and the *Rise of Timur* situation are instead designed to go to whoever ends the Amirs' Regency as Ṣāḥib-qirān — Temür or another man, in which case the realm is named after his own house. If some realm has already consolidated Erānzamīn, the Ṣāḥib-qirān still takes power in the ulus (as **Güregen of the Ulus**) but the Timurid tag is not released. This depends on the regency's last stage and is unverified.
- When the Timurid realm settles through the situation's own reform action, it becomes a [Persianate sultanate](persianate-sultanate.md) rather than a generic monarchy: an empire with the dīwān in its cabinet, Persian as court language, designation-then-contest succession, and the rebuilt Timurid Empire reform (see [Government reforms](government-reforms.md)).

The practical consequence: **if the regency never happens, or ends with the khan triumphant or in dissolution, there is no Timur.**

## Playing it

**As the khan (Chagatai).** You start with 57 locations, fifteen amirs who must answer your wars, and their qubchur. Your danger is on the Succession card. Keep the nobles in your own realm under half of estate power — every darugha seat pushes them up — and keep your own weight (army first, then tax base, then prestige) above half that of your three greatest amirs together. The amirs cannot be attacked, so you grow at the expense of outsiders or not at all. Have a grown heir.

**As an amir.** You cannot leave and cannot fight your neighbours in the ulus, but you are protected by the khan and by every other member when he is attacked, and you may make your own wars outside. Pay the qubchur in full; withholding costs far more prestige and horde unity than it saves. If you want to be the kingmaker, the panel tells you exactly what counts: a ruler who is a soldier first and an administrator second, a domain that is a large share of the amirs' weight, and a Borjigin wife.

**As a neighbour.** Attacking any member while a khan leads the ulus calls the khan to its defence, and attacking the khan brings in all fifteen amirs.

See also: [Hordes](hordes.md), [Custody of the Ulus](borrowed-mandate.md), [The Erānzamīn succession situation](eranzamin-situation.md), [The Erānzamīn organisation](eranzamin-organisation.md), [Persianate sultanate](persianate-sultanate.md), [Countries and tags](../reference/countries-and-tags.md), [Known issues](../reference/known-issues.md), [What's new in 1.4](../whats-new-in-1-4.md).
