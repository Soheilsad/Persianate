# Ulus and regency numbers

Every price, cooldown and threshold of the steppe systems built in November 2026, in one place: [Ulus Chaghatay](../concepts/ulus-chaghatay.md), [the Amirs' Regency](../concepts/amirs-regency.md), [the Ṣāḥib-qirān](../concepts/sahib-qiran.md) and [the Beglerbeg's Regency](../concepts/beglerbegs-regency.md). The concept pages explain what the numbers mean.

All of these are first settings. The mod's own files describe them as values to tune after watching the AI play, and none has been through a full campaign; see [Known issues](known-issues.md).

"Months of income" is the game's scaled gold price. PI is political influence.

## Actions: price and cooldown

### On the Ulus Chaghatay panel

| Action | Who | Price | Cooldown |
|-|-|-|-|
| **Pledge Our Tümen** | Amir or client king | 5 PI | 5 years |
| **Take Back Our Pledge** | A pledged house | 5 prestige | 2 years |
| **Ask for a Pledge** | Amir | 10 PI | 2 years |
| **Ask a Lord to Stand with the Seat** | The khan, no regency | 5 PI and 2 months of income | 1 year |
| **Seek a Patron Outside the Ulus** | Amir | 10 PI | 3 years |
| **Rise Against the Khan** | Amir among the three likeliest kingmakers, a bar met, no regency | 25 PI | 10 years |
| **Lead a Raid** | Amir or regent | 5 PI | 3 years |
| **Claim the Khan** | Amir, regency stage II or later | 10 PI | 10 years |
| **Press the Feud** | Amir in a bloc, regency stage II or later | 10 PI | 5 years |
| **Back the Khan's Purge** | Amir, during a regency | 15 PI | 10 years |

### For a country outside the ulus

| Action | Who | Price | Cooldown |
|-|-|-|-|
| **Back an Amir of the Ulus** | Any country bordering a member | 3 months of income | 5 years |

### On the Amirs' Regency panel

| Action | Price | Cooldown |
|-|-|-|
| **Recall the Darughas** | 10 PI | 10 years |
| **Marry into the Line** | 6 months of income and 10 PI | 5 years |
| **Distribute Largesse** | 12 months of income | 1 year |

### On the Beglerbeg's Regency panel

| Action | Price | Cooldown |
|-|-|-|
| **Distribute Largesse** | 12 months of income | 2 years |
| **Marry into the Line** | 6 months of income and 10 PI | None set |
| **Recall the Darughas** | 10 PI | 10 years |

### On the Rise of Timur panel

| Action | Price | Cooldown |
|-|-|-|
| **Divide the Plunder** | 12 months of income | 1 year |
| **Declare Conquest Ambition** | As in the base game | 5 years |

### In events

| Choice | Price |
|-|-|
| Enthrone another khan when the kept khan dies | 20 PI |
| Enthrone a khan of the regent's own in-law line | 10 PI |
| Set a kinsman over an amir house | 15 PI; 30 PI for a regent |

## Weight and score

| A realm's weight (all members together make 100) | Out of |
|-|-|
| Military strength, as a share of the whole ulus | 40 |
| Tax base | 30 |
| The ruler's administrative, diplomatic and military skill added together | 20 |
| Prestige | 10 |

| Added to a house's weight | |
|-|-|
| A pledged tümen, or a subject inside the ulus | Its whole weight |
| A subject outside the ulus | Host and tax base on the ulus's scale, whole |
| An outside ally | 25% of the same (each friend reckoned at 15 at most) |
| An outside patron who is not an ally | 15% |
| All outside friends together | +10 at most |
| Largesse given (regent) | +3 for 24 months |
| A raid won | +2 for 36 months |

| Kingmaker score | |
|-|-|
| Share of all the amirs' weight | × 400 |
| Ruler's military skill | × 0.5 |
| Ruler's administrative skill | × 0.2 |
| A wife of the line | +25 |
| A patron or ally of the line outside the ulus | +10 |
| Renown | × 2, to 60 |
| The khan, for being of the line (panel ranking) | +50 |

| Renown | |
|-|-|
| A great battle won during a regency | +3 |
| A siege won during a regency | +1 |
| A war won as regent; the khan taken by force | +3 |
| A raid won | +2 |
| A kinsman confirmed over a tümen | Starts at 5; +3 more if he later yields it back |
| The first coup of a regency | +5 |

## The regency bar

| | |
|-|-|
| Nobles' estate power in the khan's realm | 50%, and at least twice the crown's |
| Three greatest amirs' weight ÷ the khan's | 4.00 |
| After a child khan's accession | Both × 0.667 |
| After a Khan Triumphant | No regency for 15 years |
| After a failed rising | No regency for 10 years |
| The AI rises only after a bar has been met for | 36 months running |

## The legitimacy gap and the clock

These values serve both regencies unless marked.

| The gap | |
|-|-|
| Starts at | 50 (35 after a rising; 60 for the heir of a house that holds the Beglerbeg's office) |
| Filled at | 60 |
| Drain per month, stages I–IV | 0.15 / 0.30 / 0.45 / 0.60 |
| No khan in keeping | × 2 |
| Amirs' Regency: an amir outweighs the regent | × 1.5 |
| Beglerbeg's Regency: a prince with a share has the larger army | × 1.5 |
| Beglerbeg's Regency: a wife of the line | × 0.75 |
| Great battle / siege / war won | +4 / +2 / +10 |
| Largesse | +10 |
| War lost | −15 |
| Filled for 60 months running in stage IV | Ṣāḥib-qirān (with a khan and a wife of the line), or The House Holds (with a khan) |
| Empty for 36 months running | Bulqaq, or The Partition |

| The clock (100 to a stage) | Amirs' Regency | Beglerbeg's Regency |
|-|-|-|
| Monthly, begs over the bar | +1 | +1 |
| Monthly, crown above nobles | −0.5 | −0.5 |
| Kept khan dies and is replaced | +10 | — (the gap −10 instead) |
| Regent dies | +15 | +20 |
| War lost | +10 | +25 |
| Ruling without a khan by choice | +25 | — |
| Failed purge | Next stage at once | +25 |
| Recall the Darughas | −15 | −15 |
| Marry into the Line | −20 | — |
| A share granted to a prince | −10 | — |

| Other regency values | |
|-|-|
| Regent's heir keeps the khan at | 80% of the best rival's kingmaker score |
| Qubchur under a regent | Halved |
| Regent's murder, yearly | 2% with one or two rivals at half his score; 4% with three or more; doubled under 40% nobles' satisfaction; none within 12 months of a great battle won |
| Khan's purge succeeds | 30%; 50% at military skill 70 or more. Needs skill 50 |
| Failed purge: the khan is killed | 75% |
| Imposed kinsman refused, from stage II | 50% |
| Cadet coup, yearly per eligible house | 3%; 12% for six years after a coup. Needs 15 more military skill than the chief |
| Old chief returns / dies on the road | 70% / 30%, after one to three years |
| Beglerbeg's Regency: a prince declares, yearly | 10%, +10% from stage III, +15% with the gap under 30; × 0.25 for two years after largesse |
| Beglerbeg's Regency: the khan tries to rule, yearly | 6%, +8% with the gap under 30, +4% from stage III |
| Beglerbeg's Regency: each share breaks away at stage III | 50% |

## A rising

| | |
|-|-|
| Casus belli lasts | 5 years |
| Won: the gap starts | 15 lower |
| Lost: the amir | −20 prestige, −15 horde unity, 12 months of tax-and-trade income, two locations |
| Lost: each house pledged to him | 6 months of income, one location |
| Lost: the khan | +15 prestige, +10 horde unity |
| Lost: each lord pledged to the khan | +10 prestige |
| Lost: the amir is executed | 50% |
| A house that pledged to the winner of the khan | 20 favours, +10 prestige |
| A patron of the winner | 20 favours |

## A raid

| | |
|-|-|
| On unbelievers | +5% clergy satisfaction |
| On our own faith without a cause | −10 prestige, −5% clergy satisfaction |
| Plunder | 2 × the target's tax base; the target loses half of it |
| Ransom | 2 × the target's tax base, paid by the target |
| Sale | 3 × the target's tax base; between Muslims −10 prestige, −10% clergy satisfaction |
| Won | +5 horde unity, +2 renown, +2 weight for 36 months |
| Lost | −10 prestige, −10 horde unity |

## Casus belli

None of these can be fabricated. All are handed out by an action or an event.

| Casus belli | Held by | Against | Lasts | The peace |
|-|-|-|-|-|
| **Rising Against the Khan** | An amir who rose | The khan's seat | 5 years | Goal: his capital |
| **Take the Khan** | An amir who claimed the khan; a house that lost him at a regent's death; a house that refused a kinsman | The regent | 10 years for a claim | Goal: his capital |
| **Feud of the Tümens** | A house in a bloc | A house in another bloc | 5 years | Land costs a quarter more |
| **The Tümen's Raid** | A raiding chief | A neighbour outside the ulus | Declared at once | Land costs double; fast-ticking war score |
| **Restore the Ulus** | The eastern khanate; a Jochid prince who declared himself khan; after a Bulqaq, the eastern khan against each former member | The regent, or the orphaned tümen | Does not expire for the eastern khanate; 15 years for a Jochid prince | Subjugation at half cost |
| **The Ulus in Disarray** | The regent's strongest neighbours at stage III | The regent | 10 years | Land at half cost |
| **The Ṣāḥib-qirān's Reckoning** | The Ṣāḥib-qirān | Each amir who did not swear | 20 years | Goal: his capital. Subjugation at a quarter cost, land at one and a half |
| **Break the Tümens** | Neighbours of a former member after a Bulqaq, or after the Ṣāḥib-qirān's army is lost | The former member | 25 years | Subjugation at half cost |

## The Ṣāḥib-qirān's fortune

| | |
|-|-|
| Starts at | The regency's legitimacy gap at the ending |
| High band / low band | 60 or more / under 30 |
| Drain per month | 0.6; × 0.5 at war; × 2 after 36 months of peace |
| Great battle / siege / war won | +4 / +2 / +10 |
| Divide the Plunder | +10 |
| An ambition made good (60% of the region's locations, subjects included) | +15 |
| War lost | −15 |
| Empty for 24 months | The sworn amirs ride away; −25 prestige, −25 horde unity; fortune reset to 15 |
| An heir starts at | 25; 50 once the Conjunction has held |
| The Conjunction Holds | 2 ambitions made good; +50 prestige |
| The Sons Divide | An heir under 30 for 60 months running |
| Gold in the new state's treasury | 1,000 |
| Political influence at the founding | 50 |

## Modifiers

| Modifier | Lasts | Effect |
|-|-|-|
| **Beglerbeg's Regency** (reform) | While held | +0.10 monthly horde unity, −0.10 monthly prestige, −20% PI gain, −3% maximum control |
| **Güregen of the Ulus** (reform) | While held | +0.15 monthly horde unity, +5% land morale, −0.05 monthly prestige, −10% PI gain, −2% maximum control |
| **Client of the Ulus** (reform) | While a client king | +0.05 monthly legitimacy, −0.02 monthly prestige |
| **The Amirs' Regency** / **The Beglerbeg's Regency** (disaster) | While it runs | −0.02 monthly horde unity, −5 subject loyalty |
| **The Regency Under Strain** | Amirs' Regency | −0.03 monthly horde unity and prestige per stage |
| Keeper of the khan (Amirs' Regency) | Stages I–III | +20% PI gain; +0.75 / +0.50 / +0.25 PI a month |
| **The Beglerbeg's Office** | With the khan | Per step, to three: +5% crown power, +0.03 monthly horde unity and prestige |
| **Darughas Recalled** | 10 years | −15% nobles' estate power, −10% nobles' target satisfaction |
| **Largesse Remembered** | 24 months | +10 subject loyalty |
| **The Khan Triumphant** | 20 years | +20% crown power, −15% nobles' power, +0.10 monthly horde unity |
| **Lord of the Conjunction** | 10 years | +10% land morale, +0.10 monthly horde unity, +0.10 monthly prestige |
| **Fortune of the Ṣāḥib-qirān** | Fortune 60 or more | +20 subject loyalty, +0.10 monthly horde unity, +5% land morale, −30% antagonism received, +100% loot, −10% separatism, occupied land is taken at once |
| **A Failing Fortune** | Fortune under 30 | −15 subject loyalty, −0.15 monthly horde unity |
| **His Name Goes Before Him** | While he has a fortune | −60% antagonism received, −20% PI gain |
| **The Plunder Divided** | 3 years | +10 subject loyalty |
| **The Tümens Distributed** | 30 years | +20% manpower, +15% levy size |
| **The Tümens in Our Service** | Permanent | +10% levy size, +5% land morale, +1 cultures capacity |
| **The Office Is the House's** | Permanent | +0.05 monthly horde unity, +0.02 monthly prestige |
| **The Khanate Partitioned** | 20 years | −0.05 monthly horde unity, −0.05 monthly prestige |
| **Hereditary Tümens** (privilege) | While granted | +50% nobles' estate power, −10% PI gain, −5% maximum control, nobles may keep a private army |
| **Bound to the Tümen** (privilege) | While granted | +40% nobles' estate power, −10% tribesmen food consumption, +5% levy size |

## Opinions

| Opinion | Value | Fades by |
|-|-|-|
| Keeps the khan who is ours as much as his | −100 | 2 a year |
| The amirs have fallen out | −100 | 3 a year |
| Two khans of one ulus | −100 | 1 a year |
| Set a kinsman over our house | −75 | 3 a year |
| A beg rules in the khan's place | −60 | 2 a year |
| A pledged tümen was talked away | −40 | 4 a year |
| The seat's opinion of an outside backer | −30 | 3 a year |
| Raised us to our place | +50 | 2 a year |
| Confirmed our chief / Their chief holds his tümen of us | +40 | 4 a year |
| Confirmed our succession | +30 | 2 a year |
| A lord pledged to the khan, and the khan (each of the other) | +30 | 3 a year |
| A patron and his house (each of the other) | +30 | 3 a year |
| Largesse to the amirs | +25 | 12 a year |
| Married into the line | +15 | 1 a year |

See also: [Ulus Chaghatay](../concepts/ulus-chaghatay.md), [The Amirs' Regency](../concepts/amirs-regency.md), [The Ṣāḥib-qirān](../concepts/sahib-qiran.md), [The Beglerbeg's Regency](../concepts/beglerbegs-regency.md), [Hordes](../concepts/hordes.md), [Known issues](known-issues.md).
