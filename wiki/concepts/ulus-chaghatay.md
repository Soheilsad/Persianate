# Ulus Chaghatay

> *The khan's seat is the organisation's leader. It need not stay where it is.*

!!! warning "New in 1.4 — largely untested in play"
    The organisation, its roster, the qubchur and the panel load and run. Pledges, risings, raids, client kings and the broken-tümen event were built in November 2026 and have had only spot tests; their balance and the AI's handling of them are unverified. See [Known issues](../reference/known-issues.md).

In 1337 the Chagatai khanate was one *ulus* made of many hereditary followings. The Barlas around Kesh, the Jalayir at Khujand, the Suldus at Balkh, the Qara'unas in the Afghan lands and the Dughlats at Kashgar each held a domain with its own house and its own horsemen. They were *tümens* of one people under one khan, and a strong khan such as Kebek or Tarmashirin could command them and move them about; a weak one ruled what his amirs let him rule. Six khans sat at Almaliq in the twelve years after 1334.

In 1346 the amir Qazaghan of the Qara'unas did not wait for a khan to die. He rose, killed Qazan Khan in battle, raised a khan of his own choosing at his own camp and governed the western ulus in that man's name. It was out of that generation of regents that Temür of the Barlas came (the account followed here is Beatrice Manz's, *The Rise and Rule of Tamerlane*). Ordinary vassalage describes none of this, so the mod makes the khanate an **international organisation** whose leader is a country: the realm that holds the khan. This page covers the ulus while a khan leads it, and how an amir comes to take him. What follows is on [The Amirs' Regency](amirs-regency.md) and [The Ṣāḥib-qirān](sahib-qiran.md); every price and threshold is collected in [Ulus and regency numbers](../reference/ulus-and-regency-numbers.md).

## The roster in 1337

The base game makes eleven amir houses vassals of Chagatai. In the mod they are independent members of the organisation, four more domains are carved by whole provinces out of the khan's own territory, and two settled mountain dynasties sit in the ulus as client kings.

| Member | Tag | Standing | Notes |
|-|-|-|-|
| Chagatai | CHG | **Khan** (leader) | Court at Almaliq; Changshi Khan, of the Borjigin; Tengri. Keeps 57 locations: the Ili, Zhetysu, the Talas and the road north to the Emil |
| Barlas | BRL | Amir of the Ulus | Kesh; the house of Temür |
| Jalayirs | JLY | Amir of the Ulus | Khujand |
| Yasa'uri | YSU | Amir of the Ulus | Samarkand and Bukhara |
| Suldus | SLD | Amir of the Ulus | Balkh |
| Khuttal | KTT | Amir of the Ulus | The Vakhsh valley |
| Arlat | ART | Amir of the Ulus | Maymana |
| Apardi | APD | Amir of the Ulus | Andkhoy |
| Qara'unas | QUN | Amir of the Ulus | Kabul |
| Negüderi | NGD | Amir of the Ulus | Ghazni |
| Besüd | BSD | Amir of the Ulus | The central Afghan highlands |
| Dughlat | DGH | Amir of the Ulus | Kashgar |
| Ulus of Fergana | FGN | Amir of the Ulus | New. Andijan; 16 locations; Sunni |
| Ulus of Chach | CAC | Amir of the Ulus | New. Tashkent and the middle Syr Darya; 27 locations; Sunni |
| Ulus of Issyk-Kul | ISQ | Amir of the Ulus | New. Balasagun, the lake and the Chu; 17 locations; Tengri |
| Ulus of Dzungaria | DZG | Amir of the Ulus | New. Urumqi and the northern Tian Shan; 10 locations; Tengri |
| Badakhshan | BKH | Client King of the Ulus | A Persianate court; its state religion is set to Sunni at the start |
| Karategin | KRG | Client King of the Ulus | A Persianate court; Tajik |

The four new domains are named after their land and start with randomly generated rulers, because which house held which eastern valley in 1337 is poorly attested. Each starts with a Kurultai in its capital. The khan's seat and the fifteen amirs are Steppe Hordes; the two client kings are Persianate Sultanates.

Qocho (QCH) is not a member. It remains an ordinary vassal of Chagatai.

No member of the ulus joins the [Erānzamīn organisation](eranzamin-organisation.md) or counts as a contender in the [Erānzamīn succession](eranzamin-situation.md), although Transoxiana and Tukharistan lie in the region that would otherwise qualify them. The same holds for any state whose capital stands on a tümen's ground while the ulus exists.

**Culture.** The khan's seat, the eight western houses (Apardi, Arlat, Barlas, Jalayirs, Khuttal, Qara'unas, Suldus, Yasa'uri) and the four carved domains are **Chaghatay** by culture, not Mongolian. The Dughlat and the Negüderi stay Mongolian and the Besüd Persianized Mongol. See [Demography and cultures](demography-and-cultures.md#chaghatay).

## The three standings

**Khan.** The leader of the organisation is a country, shown as "Khan". In 1337 it is Chagatai. Leadership never changes by vote. It moves only by script: when the amirs raise a khan of their own, when an amir wins a rising, and by the events of the regency.

| The khan's realm | |
|-|-|
| Monthly prestige | +0.05, and a further +0.005 for every Amir of the Ulus and every Client King |
| Monthly horde unity | +0.05 |

**Amir of the Ulus.** Every member that is not the leader and not a client king holds this status automatically, and loses it automatically on leaving or on becoming the leader.

| Each amir | |
|-|-|
| Morale of armies | +5% |
| Monthly horde unity | +0.02 |

**Client King of the Ulus.** A settled house that keeps its own court and law under the ulus. Badakhshan and Karategin hold it from the start, and it is what the ulus gives a settled house raised on a broken tümen's ground (below).

| Each client king | |
|-|-|
| Government | Persianate Sultanate with Persianate Bureaucracy and the reform **Client of the Ulus**: +0.05 monthly legitimacy, −0.02 monthly prestige. The khan's name answers the legitimacy question for it, so it carries no Unsettled Legitimacy |
| Status | +0.02 monthly legitimacy |
| What it does | Pays the qubchur. May pledge its whole weight to an amir |
| What it cannot do | It is not an amir. It has no kingmaker score, is not counted among the amirs, and cannot rise, claim the khan, raid, ask for pledges or be pledged to |
| When it ends | A client that is no longer in the ulus loses the reform and becomes an ordinary Persianate ruler with the ordinary question to answer |

Members also see one another with the opinion bonus "Of the same ulus".

## The khan's rights

These are the rules of the organisation while a khan leads it.

| Rule | In play |
|-|-|
| The ulus rides with the khan | When the khan is attacked by an outsider, every member joins his defence. When he declares a war, every member is called |
| The khan protects his amirs | An amir attacked by an outsider can call the khan, and the khan is called automatically |
| A pledged tümen rides for its house | A house can call the tümens pledged to it into its own wars, offensive and defensive. Nobody can be called against the house he is pledged to |
| Wars inside the ulus | When the khan is attacked by one of his own members, only the lords pledged to the seat are bound to join him; the rest may be asked |
| Passage | Members have military access through one another's lands at all times |
| No war inside the ulus | No member may declare war on another without a casus belli, and before the regency's second stage not at all — except with one of the ulus's own claims: Rising Against the Khan, Take the Khan, Restore the Ulus, Feud of the Tümens |
| Nobody leaves | A member cannot leave the organisation until the regency's third stage |
| Closed membership | Nobody can apply, be invited or found a rival; the organisation dissolves only by a regency's ending, or if fewer than two members remain |
| The qubchur | Every amir and client king pays the khan (below) |

The whole ulus is drawn as one realm on the political map, the amirs in a lighter tint of the khan's colour.

## The qubchur

**Qubchur for the Khan** is a monthly payment from every junior member to the leader.

- The total is **5% of the junior members' combined tax-and-trade income**. Each member's part is in proportion to his own tax-and-trade income, and the whole sum goes to the leader.
- **Under a regent the total is halved.** The amirs sent Qazaghan gifts, not the khan's due.
- Like other organisation payments it has a slider:

| Share of the qubchur paid | Effect on the payer, per month |
|-|-|
| In full | +0.02 prestige |
| Between half and full | A proportional part of that +0.02 |
| Half | Nothing |
| Below half | Growing penalties, reaching **−0.30 prestige and −0.10 horde unity** at nothing paid |

The AI always pays in full. The payment's in-game description still reads "one part in a hundred"; the rate charged is 5%.

## A realm's weight

Most of what happens in the ulus is decided by **weight**. Every member is weighed on one scale each month, and all members' weights together make 100.

| Part | Out of | Measured as the member's share of the whole ulus's total |
|-|-|-|
| Host | 40 | Military strength |
| Tax base | 30 | Tax base |
| Ruler | 20 | The ruler's three abilities added together |
| Prestige | 10 | Prestige |

Land is not counted. A hundred empty pastures weigh nothing against Samarkand.

A house's **effective** weight, the number the panel shows and the bars read, adds and subtracts what stands behind it:

| | Counts for |
|-|-|
| A tümen pledged to it | The pledger's whole weight |
| A subject that is itself a member of the ulus | The subject's whole weight. The subject has none of its own, and any pledge of its own is void |
| A subject outside the ulus | Its host and tax base reckoned on the ulus's scale, counted whole |
| An ally outside the ulus | A quarter of what he would weigh (host and tax base only; no single friend is reckoned at more than 15 before the quarter is taken) |
| A patron outside the ulus who is not an ally | 15% of what he would weigh, with the same limit |
| All outside allies and patrons together | At most +10 |
| Largesse given as regent | +3 for two years |
| A raid won | +2 for three years |
| Its own pledge to another house or to the khan | Its whole weight leaves it |

Hovering any house on the panel lists these parts one by one.

## The two bars

The amirs can raise a khan of their own when **either** of two readings is at its line:

| Bar | Reading | Line |
|-|-|-|
| **Power of the begs** | The nobles' estate power in the khan's own realm | At least 50% of estate power **and** at least twice the crown's |
| **The three greatest amirs against the khan** | The effective weights of the three heaviest amirs added together, divided by the khan's own | 4.00 |

- Both lines stand **a third lower** after a child khan's accession (*A Boy on the Felt*), and return to normal once a grown khan is seated without a regent.
- The bar cannot be met for **15 years** after a Khan Triumphant, or for **10 years** after a failed rising.

The bars are tested in two places only: at a khan's death, and by **Rise Against the Khan**. On the 1337 map the second bar read 5.25 on the first day and 3.5 after the first month in the author's test, so the first succession can go either way.

## Kingmaker score

The panel ranks the khan and the three amirs best placed to take a khan under **Standing in the ulus**. The ranking is for reading; the bars decide whether there is a regency, and the score decides who gets it.

| Term | Score |
|-|-|
| The house's effective weight as a share of all the amirs' weight | × 400 (a quarter of the amirs' weight scores 100) |
| The ruler's military skill | × 0.5 |
| The ruler's administrative skill | × 0.2 |
| A wife of the line of Chinggis | +25 |
| An ally or patron outside the ulus whose ruler is of Chinggis's line | +10, once |
| Renown | 2 per point, to a limit of 60 |
| Of the line himself (the khan's seat only, on the panel) | +50 |

**Renown** belongs to the ruler and dies with him. He gains 3 for a great battle won and 1 for a siege won while a regency lasts, 2 for a raid won at any time, and a kinsman confirmed over a tümen starts with 5 (see [the regency page](amirs-regency.md#the-cadet-takes-the-tumen)).

A house that has pledged its tümen, or is another house's subject, is out of the ranking.

## The panel

Ulus Chaghatay has its own organisation panel, recalculated at the start of each month.

| Where | What it shows |
|-|-|
| Header | **Amirs** (the number of amirs), **Weight of the Begs** (nobles' estate power in the khan's realm) and **Great Amirs to Khan** (the second bar's ratio) |
| **The Khan** | The seat, its ruler and the heir its own succession law names today. During a regency: the held khan and his age, then the state and regent that keep him, and the regent's heir |
| **The Succession** | The two bars with their lines, the khan's weight by part, the three greatest amirs by weight, **Standing in the ulus**, and one line saying what the bars come to today: "his heir would succeed" or "the amirs would raise a khan of their own". During a regency it shows the stage, the legitimacy gap and the regent's heir against the best rival instead |
| **Pledges** | Every house that has pledged its tümen and to whom, and every house with a patron outside |
| **The Amirs** | Every amir, heaviest first, with his weight and his share of the amirs' combined weight |

The actions described below are on this panel.

## Pledges

A pledge puts a house's whole weight behind another. It has no term: it stands until it is taken back, until the house it was given to leaves the ulus or takes the seat itself, or until a rising that house leads is broken.

| Action | Who | What it does |
|-|-|-|
| **Pledge Our Tümen** | Any amir or client king not already pledged | All our weight counts as the chosen house's, in the bar of the three greatest amirs and in its kingmaker score. We drop out of the kingmaker ranking. We cannot pledge to the khan's seat, to a client king, or to a house that has itself pledged. If that house takes the khan we gain 20 favours with it and 10 prestige |
| **Take Back Our Pledge** | A pledged house | Our weight is our own again from the next monthly reckoning |
| **Ask for a Pledge** | An amir who has not himself pledged | Ask another house to stand behind us. An AI house agrees if what it weighs comes to 0 or more; the list shows, for each house, what it will answer and why before we pay, and a refusal still costs the asking. A player's house is asked by event (*An Amir Asks for Our Tümen*). A house that is another house's subject cannot be asked |
| **Ask a Lord to Stand with the Seat** | The khan, while no regency stands | Ask a house that is not among the three likeliest kingmakers and has not pledged. If it agrees its whole weight counts as the khan's against the three greatest amirs, it gains 5 prestige, and khan and lord gain +30 opinion of each other. Pledges to the khan lapse when a regency begins |

**What an AI house weighs when asked for a pledge**

| Term | Value |
|-|-|
| A tümen is not lent for nothing | −25 |
| Its opinion of us | A sixth of it |
| A royal marriage between the houses | +25 |
| An alliance | +15 |
| Rivalry | −100 |
| We are at least twice its weight | +30 |
| We are at least a quarter heavier | +15 |
| We are the lighter house | Down to −100 by how much lighter (half its weight −50, a tenth −90) |
| It is itself among the three likeliest kingmakers | Down to −66, most for the likeliest |
| We are among the three likeliest kingmakers | +10 |
| It has already pledged elsewhere | −30, and a sixth of the difference between its opinion of us and of the house it stands behind |

A house talked away from another leaves that house with −40 opinion of both ("A pledged tümen was talked away").

**What a lord weighs when the khan asks**

| Term | Value |
|-|-|
| A lord's caution | −15 |
| Its opinion of the seat | A sixth of it |
| A royal marriage / an alliance / rivalry | +25 / +15 / −100 |
| The seat is at least twice its weight | +25 |
| The seat still outweighs it | +10 |
| It outweighs the seat | −20 |
| How near the amirs are to overruling the khan (the second bar against its line) | Down to −30 |
| One of the three greatest amirs is its neighbour | +15 |
| A cautious ruler / an opportunistic ruler | +10 / −10 |

## Friends outside the ulus

An ally outside the ulus already counts for a quarter of his weight. Two actions add a lighter tie, the **patron**: he owes no riders and is owed none, counts for 15% of his weight, and is owed 20 favours if his house comes to hold the khan. A house can have one patron, and a patron can back one house.

| Action | Who | Notes |
|-|-|-|
| **Seek a Patron Outside the Ulus** | An amir without a patron | The candidates are the outside neighbours of any member. A player is asked by event |
| **Back an Amir of the Ulus** | Any country outside the ulus that borders a member | Choose an amir who has no patron and is not our rival or at war with us. It takes effect at once |

Backer and house gain +30 opinion of each other; the seat of the ulus takes −30 of the backer.

**What an outsider weighs when asked**

| Term | Value |
|-|-|
| A stranger's caution | −20 |
| Its opinion of the house | A sixth of it |
| It is a rival of the house | −100 |
| It is a rival of the khan's seat / borders it / is its ally | +30 / +10 / −100 |
| The house's kingmaker score is at least half the best amir's, but under nine tenths | +25 |
| The house is the strongest, or nearly | −10 |
| The house is no contender | −30 |
| Temperament | Opportunistic +15, expansionist +10, cautious −10, isolationist −30 |

A patron of Chinggis's line is worth a further +10 kingmaker score, as Tughluq Temür's confirmation was to Temür in 1360. A patron cannot be raided by the house he backs, and backing an amir gives every other chief of the ulus a cause to raid the backer.

## Rise Against the Khan

An amir who has done everything right need not wait for a funeral.

| | |
|-|-|
| Who | An amir among the three likeliest kingmakers, at peace, while no regency stands |
| When | One of the two bars is at its line |
| Effect | The casus belli **Rising Against the Khan** on the khan's seat for five years. The goal is his capital. The khan is told (*An Amir Has Risen*) |
| Who fights | The tümens pledged to us can be called. On the khan's side only the lords pledged to the seat are bound to join |

**If we win**, the khan is put to death, we take a prince of the line into our keeping and [the Amirs' Regency](amirs-regency.md) begins with us as regent, whoever tops the ranking. The legitimacy gap starts at 35 instead of 50: we killed a khan.

**If we lose**, the khan has broken the begs:

| Who | Pays |
|-|-|
| The amir who rose | −20 prestige, −15 horde unity, twelve months of his tax-and-trade income to the khan, and two locations other than his capital |
| Every house pledged to him | Six months of income and one location. Its pledge is void |
| The land | Goes one place at a time to the lords pledged to the khan, whoever has had least so far first; to the khan himself if there are none |
| The khan | +15 prestige, +10 horde unity |
| Each lord pledged to the khan | +10 prestige |
| The ulus | No regency can begin for 10 years |
| The amir himself | One chance in two he is executed. If he lives, his house is asked whether a kinsman should take the tümen in his place |

## Lead a Raid

In 1337 the khan led nobody anywhere, and the tribes on the edges never stopped. The Qara'unas and the Negüderi went down every winter into Sistan, Kirman and the Indus country. A raid was for herds, silver, captives to ransom or sell, and a payment not to return; almost never for land.

| | |
|-|-|
| Who | An amir, or the regent. The khan on his seat does not raid, and client kings do not |
| Against | One of our own neighbours outside the ulus: no truce, not an ally, not our subject, not our patron |
| Effect | War is declared at once with **The Tümen's Raid**. The realm we ride against holds a claim to answer us for five years |
| The war | Won in the field. Land costs double in the peace, and the war score ticks fast |

**The faith.** A free Muslim may not be enslaved and war on Muslims wants a cause.

| The target | At the declaration |
|-|-|
| Unbelievers, to a Muslim raider | A *ghazā*: +5% clergy satisfaction |
| Of our own faith, both Muslim, and we have a cause | Nothing |
| Of our own faith, both Muslim, and no cause | −10 prestige, −5% clergy satisfaction |

A cause is that they are our rival, that they back an amir of the ulus, or that they are at war with the seat of the ulus.

| If the raid | |
|-|-|
| Is won | Gold worth twice their tax base at once (they lose half as much). +5 horde unity, +2 renown, +2 weight in the ulus for three years. Then the captives (*The Spoils*): ransom them to their lord for twice their tax base, which he pays, or sell them for three times their tax base — at −10 prestige and −10% clergy satisfaction if we and they are both Muslim |
| Is lost | −10 prestige, −10 horde unity |

A regent's raid counts as a war won for his legitimacy gap.

## The ground of a broken tümen

A horde whose armies are all destroyed shatters; the engine turns it into a settled country. Inside the ulus the mod intervenes. If the broken house's old capital is still loose, one house is asked to dispose of the ground (*The Ground of a Broken Tümen*): the member of the ulus at war with it (the heaviest, if several), failing that the member that beat it in a war within the last three years, and only if nobody broke it at all, the seat.

| Option | Result |
|-|-|
| **The pastures are ours.** | Every place the broken house held that nobody else has taken becomes ours as conquered land |
| **Raise a chief of our choosing over a new tümen.** | The ground becomes a Steppe Horde and an Amir of the Ulus again, with a Kurultai and two regiments of horse archers. Its chief is our vassal with +50 opinion of us, and its whole weight counts as ours |
| **Set a settled house over it, under the ulus.** | The ground becomes a Client King of the Ulus, our vassal with +50 opinion, its whole weight counted as ours. It can never contend for the khan |

## The khan's own house

Chagatai is a Steppe Horde under a Borjigin khan, so everything on the [Hordes](hordes.md) page applies to it: the yam, darugha seats, shares for princes, and **The Törü of the Ulus** as its succession law. Three things bind those rules to this page:

- Every Darugha's Seat adds to the nobles' power in the khan's realm, which is the **Power of the begs** bar.
- A share granted to a Borjigin prince weakens the khan's own weight against his amirs today, but puts a man of the line with an army into the field.
- A darugha can be the kingmaker. If, when the amirs raise a khan, the best darugha in the old seat's realm outscores every amir, the area of his seat is released to him as a new amir house and he takes the khan.

The amirs keep their own succession. The horde succession poll is not run for them, only for the seat of the ulus. While a khan or regent leads the ulus he is asked to confirm each amir house's new chief or set a kinsman over it (see [the regency page](amirs-regency.md#an-amir-houses-succession)).

**The Barlas are not of the line.** The base game files Temür, his father and their ancestors under the Borjigin dynasty. The mod moves them, and whoever rules the Barlas at the start, to a **Barlas** dynasty of their own. Temür ruled behind a khan because he was not a Chinggisid, and without the change the infant Temür would be the youngest "prince of the line" in the ulus.

## Playing it

**As the khan (Chagatai).** Your danger is on the Succession card. Keep the nobles in your own realm under half of estate power (every darugha seat pushes them up) and watch the three greatest amirs against you. You cannot attack them, so you grow at the expense of outsiders or not at all. Use **Ask a Lord to Stand with the Seat** on the lesser houses: each one adds its whole weight to yours, joins you if a great amir rises, and takes the rebels' land if he is beaten. Have a grown heir; a child's accession lowers both bars by a third for the next succession.

**As an amir who wants the khan.**

1. **Get into the top three.** The score is mostly your share of the amirs' weight: host first, then tax base, then your ruler's abilities, then prestige. A wife of the line is +25.
2. **Gather pledges.** Each pledged tümen adds its whole weight to yours and takes a rival out of the ranking. Houses agree when you are clearly heavier, married or allied to them, and well thought of; the likeliest kingmakers will not. Marry and ally first, then ask.
3. **Find friends outside.** An ally counts for a quarter of his weight, a patron for 15%, to +10 in all; a patron of Chinggis's line adds +10 to your score.
4. **Raid.** A raid won pays, raises horde unity and lends you +2 weight for three years.
5. **Wait for the bar, then choose.** If the khan dies with a bar at its line, the amir with the highest score is handed the khan with the gap at 50. If you rise and win, you take him whatever your rank, with the gap at 35. If you rise and lose you may lose your head.
6. **Or stand behind the winner.** A house that pledged to the man who takes the khan is owed 20 favours and gains 10 prestige.

**As a lesser house.** You are the remedy both sides want. Pledged to the khan you gain prestige and a share of any broken rebel's land; pledged to a great amir you are owed favours on the day he wins, and you pay half his fine on the day he loses.

**As a neighbour.** Attacking any member while a khan leads the ulus calls the khan to its defence, and attacking the khan brings in every member. **Back an Amir of the Ulus** is the cheap way to trouble the khan. Once a regency reaches its third stage the regent's strongest neighbours are handed a claim on the ulus, and after a Bulqaq every neighbour of a tümen has one.

See also: [The Amirs' Regency](amirs-regency.md), [The Ṣāḥib-qirān](sahib-qiran.md), [Ulus and regency numbers](../reference/ulus-and-regency-numbers.md), [Hordes](hordes.md), [The Beglerbeg's Regency](beglerbegs-regency.md), [Custody of the Ulus](borrowed-mandate.md), [The Erānzamīn organisation](eranzamin-organisation.md), [Demography and cultures](demography-and-cultures.md), [Countries and tags](../reference/countries-and-tags.md), [Known issues](../reference/known-issues.md), [What's new in 1.4](../whats-new-in-1-4.md).
