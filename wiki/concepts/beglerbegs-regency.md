# The Beglerbeg's Regency

> *The khan reigns. We shall see to the rest.*

!!! warning "New — untested in play"
    This is the newest system in the mod. It loads; it has not been played. Every number on this page is a first setting, shared with the Amirs' Regency. See [Known issues](../reference/known-issues.md).

When Berdibek Khan was killed in 1359 the line of Batu ran out, and the Rus chronicles call the twenty years that followed the *Great Trouble*. The man who mattered through most of it was Mamai, a commander married into the khan's house and not a Chinggisid. He could not be khan, so he kept one: a succession of princes was raised at his camp, coin was struck in their names, and the orders carried his seal. In 1378 Tokhtamysh, a prince of the line with a share of his own in the left wing, declared himself khan, and by 1380 he had beaten Mamai and joined his share to the khanate. A generation later Edigü held the same office for twenty years, and the khanate that came out the other side was no longer one realm.

The Jochid *ulus* was not an organisation of tümens. It was one realm, and the rivals of a beg who ruled it were its own princes. So this is a separate disaster from [the Amirs' Regency](amirs-regency.md) of Ulus Chaghatay. The two share an idea and their numbers, but here the khan does not pass from house to house: a rival raises himself and fights for the throne.

## How it begins

At a khan's death the succession law may seat a man who is not of Chinggis's line. On the Golden Horde (GLH) **The Törü of the Ulus** scores every noble of the realm beside the princes, and a capable beg in a realm where the nobles hold much of the power can outscore them (see [Hordes](hordes.md#the-toru-of-the-ulus)).

When that happens on a Steppe Horde **whose throne a Chinggisid has held**, outside Ulus Chaghatay, he does not become khan. Thirty to eighty days after his accession:

- he takes a prince of the line into keeping — the youngest boy in the realm, failing that the least able grown man, and if every man of the line is ruling a share of his own, a lesser prince is found;
- his state takes the reform **Beglerbeg's Regency** (+0.10 monthly horde unity, −0.10 monthly prestige, −20% political influence gain, −3% maximum control);
- the disaster **The Beglerbeg's Regency** begins (−0.02 monthly horde unity, −5 subject loyalty) with the event *The Beglerbeg*.

Before this change the same accession cost 20 horde unity and seated a khan of an invented dynasty. A horde that never had a Chinggisid on its throne is not affected, and if no man of the line is left alive anywhere in the realm the older outcome *There Is No One Left to Raise* applies instead.

## The legitimacy gap

The regent's standing among the begs and the princes is a measure from 0 to 100 on the disaster's panel. It starts at 50 and counts as **filled** at 60 or more.

| It drains each month | |
|-|-|
| Stage I / II / III / IV | 0.15 / 0.30 / 0.45 / 0.60 |
| No khan in keeping | × 2 |
| A prince with a share has a larger army than the regent | × 1.5 |
| The regent has a wife of the line | × 0.75 |

| It is filled by | |
|-|-|
| A great battle won | +4 |
| A siege won | +2 |
| A war won | +10 |
| A war won against a prince who had claimed the throne | A further +10 |
| **Distribute Largesse** | +10 |
| **Marry into the Line** | +5 |
| A war lost | −15 |
| A new khan raised after the old one dies | −10 |
| The regent dies and his heir takes over | −15 |

When the kept khan dies there is one month with none, and the next month another prince is raised (*Another Khan*).

## The four stages

The clock runs from 0 to 100 in each stage.

| What moves the clock | Amount |
|-|-|
| Each month the nobles hold 50% or more of estate power in the realm | +1 |
| Each month the crown holds more power than the nobles | −0.5 |
| A war lost | +25 |
| The khan's attempt to rule fails | +25 |
| The regent dies | +20 |
| **Recall the Darughas** | −15 |

| Stage | What it opens |
|-|-|
| **I. The Beglerbeg's Peace** | One beg rules through a khan and the princes are quiet |
| **II. The Princes Stir** | Every prince with a share takes −60 opinion of the regent ("A beg rules in the khan's place"). Each year the strongest of them may declare himself khan |
| **III. The Shock from Outside** | Every independent neighbour with an army more than half the size of the regent's holds **The Ulus in Disarray** on him for ten years. Each prince with a share has an even chance of breaking away at once |
| **IV. The Office or the Shares** | The endings are counted |

### A prince declares himself khan

From stage II, once a year, while some prince of the line holds a share and no claimant is already in the field:

| | Chance |
|-|-|
| Base | 10% |
| Stage III or IV | +10% |
| The legitimacy gap under 30 | +15% |
| Within two years of **Distribute Largesse** | The total × 0.25 |

The prince with the largest army breaks with the regent, ceases to be his subject and holds **Restore the Ulus** on him for fifteen years (*A Prince Declares Himself Khan*). An AI prince declares war at once; a player prince is told (*The Felt Is Ours to Take*) and chooses his moment. If the regent wins that war the claim is dead.

### The khan tries to rule

Once a year, while the kept khan is a grown man with military skill of 50 or more:

| | Chance |
|-|-|
| Base | 6% |
| The legitimacy gap under 30 | +8% |
| Stage III or IV | +4% |

If he tries, he succeeds three times in ten, or one time in two if his military skill is 70 or more (*The Khan Rules*). If he fails (*The Khan's Friends*) the clock moves 25 toward the next stage and three times in four he is put to death. Unlike in Ulus Chaghatay, nobody outside needs to back him.

## The regent's actions

All three are on the disaster's panel.

| Action | Effect |
|-|-|
| **Distribute Largesse** | The gap +10. Nobles +5% satisfaction. Every prince with a share gains +25 opinion of us. For two years a prince is a quarter as likely to declare himself khan |
| **Marry into the Line** | Needs a living khan in keeping. The ruler takes a wife of Chinggis's house: +10 prestige, the gap +5, and it drains a quarter slower while this ruler lives. His heir must marry again |
| **Recall the Darughas** | For ten years −15% nobles' estate power and −10% nobles' target satisfaction; at once −15% nobles' satisfaction and −10 stability; the clock −15 |

A landless prince can also be given a share with the character action **Grant a Share of the Ulus** (see [Hordes](hordes.md)). It buys him off at the price of giving him a base: a prince with a share is the one who can declare himself khan.

## The regent dies

His heir keeps the khan and the stage (*The Beglerbeg's Heir*): the gap loses 15, the clock moves 20, and the wife of the line was the dead man's. If instead the succession seats a prince of the line, the regency is over without a blow (*The Line Returns*, +10 horde unity, the reform ends).

## How it ends

| Ending | Condition | Result |
|-|-|-|
| **The Khan Triumphant** | The kept khan's attempt succeeds; or a prince who declared himself khan beats the regent in war (*A Khan of the Line*) | A khan of the line rules and the beglerbeg is put to death. If it was a prince's war, his share and the khanate are one realm again under him. The reform ends. **The Khan Triumphant** for twenty years (+20% crown power, −15% nobles' power, +0.10 monthly horde unity) and +25 horde unity |
| **The House Holds** | Stage IV, a living khan in keeping, and the gap at 60 or more for **five years running** | The disaster ends; the khan and the reform stay. +20 horde unity, +15 prestige, and **The Office Is the House's** permanently (+0.05 monthly horde unity, +0.02 monthly prestige). At the ruler's death his heir begins the regency again from the first stage, with the gap already at 60 |
| **The Partition** | The gap empty for **three years running**; or the clock full in stage IV with the gap under 60 | Every share becomes an independent khanate under its prince, at −60 opinion of the regent. He keeps what he holds directly, with no khan and no office: −30 horde unity, −25 prestige, and **The Khanate Partitioned** for twenty years (−0.05 monthly horde unity and prestige) |

There is no Ṣāḥib-qirān here. Mamai's and Edigü's power was the Horde's own army and never became a following that could leave.

## Playing it

**As the beglerbeg.** The danger is a prince with a share and an army. Each share you leave standing is a possible claimant from stage II and an even chance of secession at stage III; each one whose army is larger than yours drains your standing half as fast again. Largesse every two years keeps the princes quiet and fills the gap. Marry into the line as soon as you hold a khan. Keep the crown stronger than the nobles in your own realm and the clock runs back; recall the darughas if the begs are what is driving it. Win wars: a lost one costs fifteen points and a quarter of a stage. The aim is to reach the fourth stage and hold the gap at 60 for five years.

**As a prince with a share.** If you are of the line and the man at the great camp is not, the yearly roll may raise you. Win the war and you rule the whole khanate with your share joined to it.

**As the khan of the Golden Horde, before any of this.** The regency starts when the Törü elects a beg. Read the line of succession: if a darugha or a great noble stands above your sons, the next accession is his.

See also: [Hordes](hordes.md), [The Amirs' Regency](amirs-regency.md), [Ulus Chaghatay](ulus-chaghatay.md), [Ulus and regency numbers](../reference/ulus-and-regency-numbers.md), [Known issues](../reference/known-issues.md).
