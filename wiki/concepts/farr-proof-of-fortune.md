# The Farr Under Examination

> *Whose head does heaven crown?*

*Farr-i īzadī*, the divine glory that rests on a rightful king, was by 1337 an ordinary part of Islamic political thought: Niẓām al-Mulk, Ghazālī and Naṣīr al-Dīn Ṭūsī all write of kingship as a trust from God, shown by justice and by fortune. What was unusual after the fall of the Ilkhans was to rest a throne on it *alone* — with no khan's edict and no caliph's diploma behind it. A house that does so has turned its legitimacy from a status into a claim, and a claim can be checked: by victory, by the state of the rains, by whether the mints and the pulpits take up the new name.

Adopting the **Farr-i Īzadī** government reform starts that check. The disaster is called **The Farr Under Examination** in game (its tooltips also call it the Farr Proof of Fortune). It begins as soon as the reform is adopted, cannot be avoided, and is the central content of the *farr* road. The reform is open only to members of the Erānzamīn organisation; see [government reforms](government-reforms.md) for what it gives by itself.

## The wager

On the day it begins you lose **50 legitimacy**: by the logic of the old chancery, the edict that appointed you was the basis of your standing, and you have just disowned it. While the examination runs:

| Effect | Value | What it stands for |
|-|-|-|
| Monthly legitimacy | **−1.0** | The claim consumes the credibility it asserts |
| Minting income | −40% | The mints still strike the Ilkhan's name |
| Amirs estate target satisfaction | −10% | The amīrs watch a king claim what a khan gave |
| Clergy estate target satisfaction | −5% | The Friday sermon is not yet read for you |
| Burghers estate target satisfaction | −5% | The bazaar distrusts the unnamed coin |
| Court spending efficiency | −10% | |
| Diplomatic reputation | −1 | Foreign chanceries omit the title |

There is no separate score. **Legitimacy is the ledger**, and the panel shows three bars that read it: **Months at Legitimacy ≥ 95 (Vindication)** out of 60, **Months at Legitimacy ≤ 40 (Lapse)** out of 60, and **Months Elapsed (Endurance, year 25)** out of 300.

## How legitimacy is fed

### The standing offset: war

While the examination runs and you are at war with anyone, **The Doctrine Tested in War** gives **+0.3 monthly legitimacy** and +7.5% Amirs satisfaction. War slows the drain; it does not pay for it.

### Events on the field

Every one of these fires an event the first time; each event has an option to silence that kind of notice, or all of them, after which the effect is applied quietly.

| Event | Legitimacy | Also |
|-|-|-|
| A major battle won | +1 | |
| A battle lost | −2 | |
| A location gained | +1 | |
| A location lost | −3 | |
| A war won | +5 | **Conquest in the Light of Heaven** for 12 months: +0.4 monthly legitimacy, +0.05 monthly prestige. Each further victory extends it |
| A war lost | −10 | **Defeat in the Light of Heaven** for 6 months: −1.0 monthly legitimacy, −0.10 monthly prestige, −5% Amirs satisfaction |
| The capital lost | −20 | **The Capital Lost**: −2.0 monthly legitimacy and −0.20 monthly prestige. It stays until the examination ends |

Victories are counted from major battles only, not skirmishes. Handing land to your own subject is not counted as a lost war.

### The arithmetic

| Situation | Net monthly legitimacy from the examination |
|-|-|
| At peace | −1.0 |
| At war | −0.7 |
| At war, within a year of a won war | −0.3 |
| The same, with all four apparatus claimed | +0.2 |
| At peace, with all four apparatus claimed | −0.5 |

Other sources of legitimacy in your realm stack on top of this, but the examination itself is never fully cancelled by the apparatus. The lump sums — battles, cities, wars won — do most of the lifting.

## The apparatus of sovereignty

Four buttons on the panel, each available once legitimacy reaches a threshold. None is automatic. Each **costs** legitimacy on the spot and gives two modifiers: a **refund**, which cancels part of the examination's penalty for as long as it runs, and a **legacy**, which outlasts it. Each can be claimed once, in any order.

| Button | Needs | Costs | Refund (while the examination runs) | Legacy |
|-|-|-|-|-|
| **Strike the Sikka** | 50 | −10 | **The Sikka Cuts Your Name**: +40% minting income, +5% Burghers, +0.1 monthly legitimacy | **The Dār al-Ḍarb of Our House**, 25 years: +5% tax efficiency, +5% Dīwān satisfaction |
| **Claim the Khutba** | 65 | −15 | **The Khutba Reads Your Name**: +5% Clergy, +0.1 monthly legitimacy | **The Khutba Precedent**, 25 years: +5% Clergy, +1 tolerance of the true faith |
| **Proclaim the Royal Hunt and Nawrūz Court** | 80 | −20 | **The Amīrs Bow at the Hunt**: +10% Amirs, +0.1 monthly legitimacy | **The Hunt and the Nawrūz Court**, 25 years: +15% Tribes, +5% Amirs, lower Amirs and Tribes rebel growth |
| **Assume the Title of Pādishāh** | 90 | −25 | **The Title Brought Into Line**: +0.2 monthly legitimacy | **Pādishāh-i Īrān**, permanent: −15% antagonism received, +1 diplomatic reputation, +0.05 monthly prestige. The realm becomes a kingdom and gains 25 prestige |

Coin and sermon were the two public signs of sovereignty in the Islamic world; the hunt and the Nawrūz audience are how a Persianate king is *seen* to be one by the men of the sword; the title completes the claim.

Two of the claims make enemies inside Erānzamīn:

- **Strike the Sikka**: every member that rules as a Chinggisid Regency takes the opinion penalty "Ignored the Hallowed bloodline of Genghis Khan" (−150, fading by 1 a year) and gains the Succession of Erānzamīn casus belli on you.
- **Claim the Khutba**: every member that rules as a Ghāzī Sultanate takes "Read khutbah in his own name" (−100, fading by 2 a year) and gains the same casus belli.

## Signs of withdrawn favour

These happen to the king, once each, the first time legitimacy falls to the mark.

| Legitimacy | Event | Choice |
|-|-|-|
| 35 | **The Amīrs Are Absent From Court** | Send gifts (+3 legitimacy, −10 prestige, Amirs +3%) or let them stay away (Dīwān +5%, Amirs −5%) |
| 20 | **A Province Has Dropped the Khutba** | Replace the qāḍī (+2 legitimacy, Clergy −5%, unrest in one location) or endow the mosque (three months' income; +5 legitimacy, Clergy +5%) |
| 10 | **Bī-farr** — "the glory has left him" | Stage a great hunt (six months' income; Tribes and Amirs +5%) or endure the whisper (+5 prestige) |

## Omens

A just king's reign is supposed to show in the world, so the world is read. In most years one or more omens arrive; each kind has a two-year pause before it can return. Most offer a public reading, which gambles, or a cautious one.

| Omen | The stakes |
|-|-|
| **A Comet Stands Above the Throne** | Publish the reading: 60% +6, 40% −8. Keep it at court: ±2 |
| **The Earth Itself Has Spoken** | Ride to the ruins (4.5 months' income): 65% +5, 35% −3. Leave it to the ʿulamāʾ: Clergy −3%, +1 or −3 |
| **Plague in the Realm** | Lead the prayers: +4 or −10 at even odds. Open the granaries (nine months' income): 70% +3, 30% −4. Withdraw to the citadel: −6, Burghers −8% |
| **The Rains Are Withheld** | Remit the land tax (six months' income; Peasants +5%): 70% +4, 30% −2. Blame the assessors (Dīwān −8%): 45% +2, 55% −4 |
| **The Rains Are Generous** | Let the sermon say it: +4. Tax the surplus: gain three months' income, +1 |
| **The Stars Incline** | Strike the conjunction on the coins: +15. File the tables: +5 for a small fee |
| **The King Takes the Lion** | Parade the skin: 65% +4, 35% −3. Feast the amīrs: +2 legitimacy, +5 prestige for a small fee |
| **The Homay Lands on the King's Shoulder** | +50 legitimacy. Once ever, and vanishingly rare |

Plague is three times as likely between 1346 and 1350. Drought and good rains never fall in the same year.

## The four endings

Checked every month, in this order.

### Broken — The Amīrs Have Taken the Throne

**When:** legitimacy reaches 0.

The ruler is killed. A Borjigin amīr of Persianized Mongol culture takes the throne, the Farr-i Īzadī reform is replaced by the **Amīr Sultanate**, and all four legacies are stripped. The realm gains 25 legitimacy under its new master, Amirs +25% and Tribes +20% satisfaction, Dīwān −20% and Burghers −10%, and carries **An Unproved Boast** for 25 years (−0.10 monthly prestige, −1 diplomatic reputation, +10% antagonism received). While that modifier lasts the reform cannot be taken again.

### Vindicated — Farr Manifest

**When:** 60 months, not necessarily consecutive, at **legitimacy 95 or higher**.

+20 legitimacy, +50 prestige, +10 stability. Farr-i Īzadī is replaced at once by the Age of Renaissance reform **Iranian Kingship**, and **Farr Manifest** applies for ten years: +0.1 monthly legitimacy, +10% Amirs and +5% Tribes satisfaction, lower rebel growth for both, −20% antagonism received, +1 diplomatic reputation. The legacies stay.

### Lapsed — The Doctrine Has Lapsed

**When:** 60 months, not necessarily consecutive, at **legitimacy 40 or lower**.

No coup; the court simply stops using the formula. −15 legitimacy, −25 prestige, the reform is removed, and **An Unproved Boast** becomes permanent. The house cannot declare the *farr* again. Legacies already earned run out their terms.

### Endured — The Claim Stands

**When:** 300 months have passed and nothing above has happened.

+10 legitimacy, +15 prestige. The reform is replaced by **Iranian Kingship**, and **Farr Endured** is permanent: +0.10 monthly legitimacy and −10% antagonism received.

Abandoning the reform by other means also ends the examination, with nothing gained.

Either Vindicated or Endured settles the question of right for forming Persia; the broken outcomes do not.

## How to manage it

The examination opens by taking 50 legitimacy, which puts most houses at or under 40 on the first day — and **every month at 40 or less counts toward the Lapse**. You have five years of such months in total, over the whole run, before the doctrine dies quietly. The first task is therefore to climb out of that zone and stay out.

1. **Be at war when you adopt the reform, or immediately after.** At peace you lose 12 legitimacy a year from the examination alone.
2. **Win wars, not just battles.** A won war is +5 and a year of +0.4 a month; keep one victory inside every twelve months and the modifier never drops.
3. **Take Strike the Sikka early.** It costs 10, returns 0.1 a month, restores your minting income, and its threshold is the lowest. Do not claim it while it would drop you back to 40 or below — and remember it hands every regent in Erānzamīn a casus belli.
4. **Space the later claims.** Each costs more than the last, and the costs cascade: claiming all four at their thresholds spends 70 legitimacy. Claim from above the threshold, in a year when a victory is paying.
5. **Decide which ending you are playing for.** Vindication needs five years at 95 or more, and Pādishāh alone costs 25, so take the title first and climb afterwards. If you cannot hold 95, a realm that stays above 40 and keeps its capital reaches Endured in year 25 and receives the same Iranian Kingship.
6. **Guard the capital above everything.** Its loss costs 20 at once and 2.0 a month for the rest of the examination; taking the city back does not lift it.
7. **Use the omens as a bank.** The cautious options are small but safe; the gambles are worth taking when you are far from both 40 and 95.

See also: [government reforms](government-reforms.md), [the Persianate sultanate](persianate-sultanate.md), [the Erānzamīn situation](eranzamin-situation.md), [the Erānzamīn organisation](eranzamin-organisation.md), [Türk vs Tāzīk](turk-vs-tazik.md), [the Burden of the Sword](ghazi-burden-of-sword.md) (the parallel examination on the ghāzī road), [the Matter of Tork](matter-of-tork.md) (what comes after), [known issues](../reference/known-issues.md).
