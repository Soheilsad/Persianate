# The Dīwān estate

> *The men of the pen: they keep the registers, and the registers keep the realm.*

The Dīwān is the scribal and fiscal class of a Persianate state. Together with [the Amirs](amirs-estate.md) it takes the place the nobility holds in a European realm. In game it appears on the estate panel as **The Diwan Estate**.

## What it represents

A *dīwān* is first a register, then the office that keeps it, then the people who staff the office: the chancery scribes (*kuttāb*), the accountants (*mustawfīs*), the viziers and the service families who trained their sons for a post from childhood. Their working language is administrative Persian, but the class is not an ethnic one: the urban notables of Iraq, schooled in the same Abbasid bureaucratic tradition, belong to it as fully as those of Shiraz or Herat. Their wealth is ledger-visible (cash, urban property, rent rights) and militarily defenceless, which makes them both the engine of the treasury and the first target of a ruler short of money. Rashīd al-Dīn, vizier, physician and historian, enormously rich and executed at about seventy after a generation of indispensability, is the type.

## Who belongs to it

Since 1.4 an estate's power comes from the pops that belong to it, and the mod decides pop by pop who is a man of the pen.

A **noble pop** joins the Dīwān when all of the following hold:

| Condition | Detail |
|-|-|
| The state has a chancery | The owner carries the **Niẓām al-Mulk Chancery** flag. It comes with Persianate Bureaucracy (the founding reform of every Persianate Sultanate), the Timurid Empire, The Niyāba ʿĀmma Charter, Mamluk Government, The Delhi Dispensation and the Rasulid Chancery. |
| Culture | Iranian or Arabic culture group; or a Muslim pop of the Indian culture group; or a Muslim Turkic pop in a country holding the Sultanate of Rum reform. |
| Literacy | Above 20. |
| Urban setting | The pop lives in a city, in a province capital, or in a location where burghers are more than 5% of the population. |

Noble pops that fail the test are sorted onward: Muslim ones become [Amirs](amirs-estate.md); the rest fall back to the base **Nobility**, which a Persianate Sultanate keeps at −90% power and bars from the cabinet, the army command and the court. A rural Persian landholder is therefore an amir in game terms, and a literate Baghdadi notable is a dīwān man.

A **burgher pop** can also enter the Dīwān, on much stricter terms: Persian-speaking culture, literacy above 60, living in a city, in a chancery state whose economy sits beyond 75 on the capital-economy side of the capital-versus-traditional value.

The literacy and urban tests are waived during 1337 itself, so that the estate exists from the first day of a campaign.

Clergy never join the Dīwān. The jurists and the bureaucrats are separate estates on purpose.

## Where its power comes from

| Source | Effect |
|-|-|
| Pops | Each noble pop in the estate carries the standard noble weight (25 per pop); qualifying burgher pops carry the burgher weight (4). |
| Base values of any chancery state | +70% Dīwān power, +30% Amirs power, +40% Dīwān target satisfaction |
| **Sedentary Power Base** (any chancery state) | Up to +250% Dīwān power, scaled by the share of your population that is peasants, burghers and labourers |
| Persianate Bureaucracy reform | +25% Dīwān power, +5% target satisfaction |
| **Persian, the Tongue of the Diwan** | +5% target satisfaction while Persian is the court language |
| Dīwān of the Realms (capital building) | +50% Dīwān power, +10% political influence gain (see [Buildings](buildings.md)) |
| Privileges | Every Dīwān privilege adds power; see [Estate privileges](estate-privileges.md) |

The counterweight is the Amirs' **Tribal Power Base**, which scales with tribesmen. A settled, urban realm leans toward the pen by its demography alone; a realm full of tribal pops leans toward the sword whatever you grant.

## Tax and the estate's own modifiers

The Dīwān is assessed at **200 per pop**, twice a base-game noble (100) and eight times an amir (25). It is the most taxable elite you have. It also runs a bank, has dynasties, and does not produce mercenary captains.

The estate's effects scale with its satisfaction and with how far its power stands above or below the engine's thresholds; the figures below are the listed strengths.

| | Satisfied Dīwān | Powerful Dīwān | Weak Dīwān |
|-|-|-|-|
| Cabinet efficiency | +15% | +25% | −20% |
| Tax efficiency | +10% | +15% | −10% |
| Control | +7.5% max control | +15% urban, +7.5% rural | −5% urban, −10% rural |
| Policy change cost | −10% | +10% | |
| Research speed | | +15% | |
| Monthly prosperity | +0.0025 | | |
| Stability cost efficiency | | | −20% |
| Bank interest | | +5% | −5% |
| Cost to revoke privileges | | +75% | |
| Dīwān's own max tax | | −40% | +25% |
| Others' max tax | | Burghers +10%, clergy +15%, peasants +5% | Burghers, clergy and peasants −10% each |

The last two rows are the estate's character in miniature. A powerful chancery squeezes everyone else harder and shelters itself; a weak one is squeezed and cannot squeeze.

## The pen and the sword

The Persianate Bureaucracy reform fixes a division of labour:

- Dīwān characters may sit in the cabinet. Amirs, burghers, clergy and base nobles may not.
- Amirs may lead armies. Dīwān characters, burghers and base nobles may not.

Both lines can be crossed, by the **Tāzīk Command of Arms** and **Umarāʾ at the Dīwān** privileges, at a price paid to the estate whose preserve is invaded. Dīwān privileges almost all push the [Turk vs Tazik](turk-vs-tazik.md) value toward Tazik.

At game start every Persianate Sultanate receives two dīwān characters of Farsi culture with strong administrative ability, whatever the country's own culture, and the chancery is designed to produce a replacement each year while fewer than four are alive.

## The vizierate

The chancery expects to run the cabinet, not merely to sit in it. Four standing states are tracked:

| Cabinet | Modifier | Effect |
|-|-|-|
| No dīwān member at all | **The Chancery Locked Out** | −20% Dīwān target satisfaction, −25% cabinet efficiency, −15% tax efficiency |
| Dīwān members, but an outsider heads the cabinet | **No Vizier of the Pen** | −5% target satisfaction, −10% cabinet efficiency, −5% tax efficiency |
| A dīwān man heads the cabinet | **A Vizier of the Pen** | +5% target satisfaction, +5% cabinet efficiency, +5% tax efficiency, +15% crown power |
| Two or more outsiders sit beside the dīwān | **Crowded Vizierate** | −5% target satisfaction, −5% cabinet efficiency |

Once a year, if the Dīwān is locked out or two or more non-dīwān members sit in the cabinet, the chancery may deliver its ultimatum, **The Registers Are Closed**. It cannot recur for five years.

| Choice | Result |
|-|-|
| "The sultan's kin sit where the sultan pleases. Open the registers or lose your hands." | −20 legitimacy, −25% Dīwān satisfaction, and **The Dīwān Spurned** for ten years: −10% tax efficiency, −10% Dīwān target satisfaction, −10% cabinet efficiency. The AI never takes this. |
| "Clear the table. Seat the pen." | Outsiders are dismissed until the Dīwān holds a strict majority of the occupied seats; dīwān characters fill the vacancies (new ones are created if none are free) and a dīwān man becomes head of the cabinet if none presides. +10% Dīwān satisfaction, −10% crown satisfaction. |

The practical lesson: seat a dīwān character as head of the cabinet and keep at most one outsider beside the chancery men.

## Muṣādara: the king's hand

The Dīwān is not taxed openly the way its wealth would suggest; its privileges steadily lower its own tax cap. The historical answer was *muṣādara*, the confiscation of an official's fortune at the ruler's will, pronounced in the court of grievances. Niẓām al-Mulk condemned it as the practice that stops anyone improving what he holds. The mod gives it to you as a real tool with real costs.

### The Muṣādara Right

Everything here depends on the Dīwān privilege **Muṣādara Right**, which grants the modifier *The Right of the Monarch to Confiscate*. Every Persianate starting template begins with it.

| Muṣādara Right | |
|-|-|
| Estates | Dīwān power +50%, Amirs power −25%; target satisfaction: Dīwān +5%, peasants +5%, clergy −2.5%, burghers −7.5%, Amirs −10% |
| Fisc | +5% max tax on every estate; estate enrichment −20%; bank interest +5%; loan capacity −25% |
| Realm | −0.001 monthly development; centralization +0.1, absolutism +0.1, Tazik +0.05 per month |
| Excludes | **Soyurghal Grants** (Amirs) and the **Mulk Protection Charter** |

As the files stand the privilege cannot be revoked once held: its revocation condition is never met by anything in the mod. The Mulk Protection Charter and Soyurghal Grants are therefore out of reach for a state that starts with the right.

### Pronouncing a confiscation

**Muṣādara** is an action of the [Maẓālim court](mazalim-court.md).

| | |
|-|-|
| Requires | Persianate Sultanate; the Muṣādara Right; a dīwān member in the cabinet; the court in session; debate support of at least half what a parliament request needs |
| Cost | That same amount of debate support |
| Yield | Half the Dīwān estate's treasury, reduced by the waqf shelter (below), paid into yours |
| Dīwān | −40% satisfaction, and a dīwān member of your cabinet is executed |
| Aftermath | **Recent Muṣādara** for five years: −5% target satisfaction for Dīwān, Amirs, burghers and clergy, −5% tax efficiency, −0.002 monthly development |
| Cooldown | Once every five years |

The in-game text speaks of choosing an estate and of the vizier's death as a risk. At present the target is always the Dīwān, and the execution always happens when a dīwān man sits in the cabinet.

### The waqf shelter

Arbitrary seizure teaches people to hide wealth where the writ cannot reach: the pious endowment. Each confiscation prompts new endowments: an Aʿyān Waqf is founded in your capital, each of your cities has a 10% chance of another, each city a 2.5% chance of an Urban Waqf, and every location a 1% chance of a Clerical Waqf.

Once a year, in any state holding the Muṣādara Right, the endowments are reassessed. The share of your tax base sitting under Aʿyān Waqf (weighted by local Dīwān power and building level, the Grand Aʿyān Waqf counting double) becomes:

- a standing drag that grows with that share: lower Dīwān max tax, lower tax efficiency and loan capacity, faster estate enrichment and a stronger clergy;
- the **shelter**: the same share, capped at 90%, is subtracted from everything muṣādara and the Dīwān's court cases can seize.

The more you confiscate, the more is endowed, and the less the next confiscation yields. The court's **Decree: Reclaim the Illegal Waqf** is the way back; the waqf charter privileges close that road. See [Buildings](buildings.md) for the endowments themselves.

### The Treasury Runs Dry

A state with the Muṣādara Right that takes or renews a loan while drowning (more than ten loans and negative income, or loan capacity below a year of income) is offered the desperate version, at most once a year.

| Choice | Result |
|-|-|
| "Declare maṣlaḥa — what we have taken was for the good of the realm." | All loans cancelled. −15% satisfaction for Dīwān, Amirs, burghers and clergy; Recent Muṣādara for five years; +10 legitimacy; −10 stability. |
| "The Circle of Justice needs greasing." | All loans cancelled and a fifth of the treasuries of the Dīwān, Amirs, burghers and clergy seized. −30% satisfaction for each; **The Great Confiscation** for five years (−10% target satisfaction for all four, −10% tax efficiency, −0.004 monthly development); +15 legitimacy; −20 stability. |
| "Nay! For confiscation is the evil that destroys the realm." | Nothing happens. |

## Estate events

While the Dīwān holds at least 25% of estate power, three events can come up on the Persianate flavour pulse:

| Event | Choices |
|-|-|
| **The Supremacy of the Pen** | Grant **Merit Examinations** and gain 15% Dīwān satisfaction, or refuse and lose 20% |
| **A Harmonious Bureaucracy** | +10% Dīwān satisfaction |
| **Local Audit** | In a location the Dīwān dominates: let the audit run for +10% control there, or avoid friction for −5% Dīwān satisfaction |

## Playing with the Dīwān

- Put a dīwān man at the head of the cabinet from the first month. The difference between A Vizier of the Pen and The Chancery Locked Out is 40 points of cabinet efficiency and 20 of tax efficiency.
- A strong, content Dīwān pays for itself: tax efficiency, cabinet efficiency, control. Its price is that it shelters its own wealth, so the tax you gain comes from burghers, clergy and peasants.
- Treat muṣādara as an emergency reserve. Each use shrinks the next one and leaves endowments behind that cost you every month.
- A Dīwān-leaning realm has few amirs content to fight for it. Watch the [Amirs](amirs-estate.md) before a war, not during it.

See also: [Amirs estate](amirs-estate.md), [Estate privileges](estate-privileges.md), [The Maẓālim court](mazalim-court.md), [Turk vs Tazik](turk-vs-tazik.md), [Persianate Sultanate](persianate-sultanate.md), [Buildings](buildings.md).
