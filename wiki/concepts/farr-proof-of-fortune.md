# Farr Proof of Fortune

> *Whose head does heaven crown?*

Choosing `farr_i_izadi` in Age 1 is the most ambitious answer to the khuṭba question — neither regency for a Borjigin puppet nor caliphal investiture, but the bare claim that the dynasty itself bears *farr-i īzadī*, the divine glory that legitimates Iranian kingship in its own right. The doctrine is fully canonical by 1337 — Niẓām al-Mulk, Ṭūsī, Ghazālī, Davānī — but the claim is testable. The world demands proof.

The **Farr Proof of Fortune** disaster (`farr_proof_of_fortune`) is the world's audit of the boast. It is automatic, unavoidable, and the central content of the *farr* path.

## The wager

The disaster fires within months of the reform's adoption. On start:

- `add_legitimacy = -50` — the moment the herald reads the edict of self-elevation, the world rules it invalid until earned. Your own edict of appointment, by the Ilkhānid chancery's logic, was the basis of your standing; you have just disowned the document.
- `stability_decay = +0.0025` — the realm settles uneasily.

The disaster then holds the realm in a heavy ambient pressure for as long as it runs:

| Field | Value | Reading |
|-|-|-|
| `monthly_legitimacy` | **−1.0** | The hunger. The claim consumes the credibility it asserts. |
| `minting_income_factor` | −0.40 | The mints will not stamp your name; coins still circulate in the Ilkhān's. |
| `amirs_estate_target_satisfaction` | −0.10 | The umarāʾ watch a Tāzīk claim a Türk's privilege. |
| `clergy_estate_target_satisfaction` | −0.05 | No khuṭba in your name yet. |
| `burghers_estate_target_satisfaction` | −0.05 | The bazaar distrusts the un-named coin. |
| `court_spending_cost_modifier` | +0.05 | The Nawrūz needs paying for in any case. |
| `diplomatic_reputation` | −1 | Foreign chanceries omit the title. |

Legitimacy *is* the ledger. There is no parallel Proof variable. The disaster simply lets the world score the claim by watching whether the dynasty can carry its own legitimacy.

## How legitimacy is fed

Two streams replace what the disaster consumes. Both must come from outside — neither court ritual nor estate-petting reaches the size required.

### War — the standing offset

A *farr* claimant who is at war with someone is being judged on a real battlefield. Several auto-modifiers (in `01_eranzamin_legitimacy_crisis.txt` and `03_eranzamin_legitimacy_crisis.txt`) read whether the realm is at war and inject monthly legitimacy on the strength of it. War alone does not pay for the disaster — the bleed is bigger than the at-war ambient — but it cuts the gap, and it is the only condition under which the next stream becomes available.

### Conquest — the stacking pulse

The hook `on_winning_war` applies the `farr_conquest_glory` static modifier:

- `monthly_legitimacy = +0.4`
- `monthly_prestige = +0.05`
- Duration: 12 months, mode `add_and_extend`.

Each new victory **extends** the duration to 12 months from that latest victory. Held in continuous conquest, this stream alone overshoots the −1.0 bleed by +0.4 net. A campaign-tempo dynasty pulls ahead. A dynasty at peace bleeds full speed.

### Defeat and the lost capital

- `farr_defeat_shame` (from `on_losing_war`): `monthly_legitimacy = −1.0` and `monthly_prestige = −0.10` for six months. Heaven visibly withdrew.
- `farr_capital_lost` (from `on_location_changed_owner` when the capital changes hands): `monthly_legitimacy = −2.0`, `monthly_prestige = −0.20`, `stability_decay = +0.10`. Removed when the seat is recovered. The single fastest way to break the wager.

## Apparatus claims (50 / 65 / 80 / 90)

Four buttons appear on the disaster panel as legitimacy thresholds are crossed. They are not automatic. Each is a deliberate act of consolidation that **costs** legitimacy up front and pays it back as a permanent **refund** plus an irreversible **legacy** modifier. The pattern is the spine of the disaster: bank credibility on the battlefield, spend it for the institutional fact, keep the institution forever.

### `claim_sikka` — leg ≥ 50 (costs **−10** leg)

Strikes coin in the dynasty's own name. Fires `farr_proof.50`.

- **Refund** `farr_sikka_refund`: `minting_income_factor = +0.40`, `burghers_estate_target_satisfaction = +0.05`, `monthly_legitimacy = +0.10`. Exactly cancels the standing minting penalty.
- **Legacy** `farr_sikka_granted` — permanent: `tax_income_efficiency = +0.05`, Dīwān satisfaction `+0.05`. The dār al-ḍarb infrastructure, the assayers, the fiscal spine. The Muẓaffarids kept their *sikka* long after their fortunes turned.
- **Diplomatic cost**: every Erānzamīn member who took `chinggisid_regency` gets `opinion_betrayed_genghis` and a `cb_eranzamin_succession` casus belli on you.

### `claim_khutba` — leg ≥ 65 (costs **−15** leg)

Has the qāḍīs name you in the Friday sermon. Fires `farr_proof.65`.

- **Refund** `farr_khutba_refund`: clergy satisfaction `+0.05`, `monthly_legitimacy = +0.10`. Cancels the clergy slice.
- **Legacy** `farr_khutba_in_your_name` — permanent: clergy satisfaction `+0.05`, `tolerance_own = +1`. The ʿulamāʾ–state alignment imprinted.
- **Diplomatic cost**: every Erānzamīn member who took `ghazi_sultanate` gets `opinion_own_khutbah` and the same casus belli — the ghāzī courts read your khuṭba as theft.

### `proclaim_hunt_and_nawruz` — leg ≥ 80 (costs **−20** leg)

The full Sasanian-steppe court ritual: the royal hunt, the Nawrūz audience, the bāzūband ceremony. Fires `farr_proof.80`.

- **Refund** `farr_hunt_and_nawruz_refund`: Amirs satisfaction `+0.10`, `monthly_legitimacy = +0.10`. Cancels the amīr slice — the umarāʾ see kingship enacted in the form their fathers recognized.
- **Legacy** `farr_hunt_and_nawruz` — permanent: Tribes `+0.15`, Amirs `+0.05`, `monthly_amirs_estate_rebel_growth = −0.005`, `monthly_tribes_estate_rebel_growth = −0.005`. The constituency widens past the Tāzīk core.

### `assume_padishah` — leg ≥ 90 (costs **−25** leg)

The consummation: the title *Pādishāh-i Īrān* placed into your protocol, your seal, your foreign correspondence. Fires `farr_proof.90`.

- **Refund** `farr_padishah_refund`: `monthly_legitimacy = +0.20`. The largest slice — alone it cancels two-fifths of the bleed.
- **Legacy** `farr_padishah` — permanent: `antagonism_received_modifier = −0.15`, `diplomatic_reputation = +1`, `monthly_prestige = +0.05`.

With all four refunds standing, the −1.0 bleed is fully cancelled (`+0.10 + 0.10 + 0.10 + 0.20 = +0.50`, plus what the legacies add on top). The disaster effectively pauses while you hunt the resolution.

> **Strategic note** — buttons stay enabled forever once their threshold is met. There is no requirement to claim in order. Sitting on legitimacy 92 and waiting for the next decisive conquest before assuming *pādishāh* is a legitimate posture. Banked legitimacy that you never spend is wasted.

## Erosion events (35 / 20 / 10)

Where apparatus claims are upward and player-driven, **erosion events fire downward and automatically**. They are the public signs of withheld favor — they happen *to* the dynasty, not by its choice — and they fire on threshold-touch from above.

- **35** — the formal cracks: chancery memos that omit royal protocol, court poets gone silent, foreign envoys arriving with shorter titles.
- **20** — the constituency falters: ʿulamāʾ refuse blessings, tribal *noyans* late to court, frontier garrisons drawing pay irregularly.
- **10** — the realm reads the dynasty as cursed: comets and omens publicly debated as such, the chronicles begin to use the past tense.

Each event costs further legitimacy and applies a flavor modifier. They are recoverable but each one written into the record.

## Omen pulses

Random comet / earthquake / plague pulses fire monthly inside the disaster. Each presents a court-interpretation choice — read the sign as favorable, hostile, or refuse to read it. The **plague** branch is weight-multiplied for the 1346–1500 window (the Black Death and its aftershocks across the Persianate world) so a *farr* dynasty in this period will have to publicly stake the doctrine on what the plague means *for them*.

## The four outcomes

The disaster polls monthly for resolution. Four endings, each with its own static modifier and follow-on.

### Vindicated — `farr_proof_vindicated`

**Gate**: 60 cumulative months at legitimacy ≥ 75 (`farr_high_months >= 60`). Not necessarily consecutive — flash victories don't count, but five years of broken-up high credibility do.

The wager inverts. The `farr_manifest` modifier applies:

- `monthly_legitimacy = +0.10` — the stream is now positive and permanent.
- Amirs satisfaction `+0.10`, Tribes `+0.05`, with `monthly_amirs_estate_rebel_growth = −0.010` and `monthly_tribes_estate_rebel_growth = −0.010`.
- `antagonism_received_modifier = −0.20`, `diplomatic_reputation = +1`, `stability_decay = −0.003`.

This is the wire into the Erānzamīn Matter: amīr houses that watched you win now formally swear, and the dynasty enters the Matter's recognized-contenders list. The reform's `re_assert_farr_after_lapse` block does not apply (you didn't lapse).

### Endured — `farr_proof_endured`

**Gate**: 25 years (`farr_disaster_months >= 300`) elapsed, realm intact, no other resolution fired. The quieter vindication.

`farr_endured` modifier — permanent: `monthly_legitimacy = +0.10`, `stability_decay = −0.03`, `antagonism_received_modifier = −0.10`. Smaller bonuses than Vindicated, but the doctrine stands and the bleed is gone. The claim survived without becoming canonical.

### Broken-formal — `farr_proof_broken_formal`

**Gate**: legitimacy reaches **0**. The dynasty has been judged and found unfit.

Türk amīr usurpation. The reform is stripped. The ruler is replaced by a Türk military leader. The government tilts toward `chinggisid_regency` — the realm's politics admits it could not carry the *farr* and reverts to the safer fiction. No `farr_manifest`, no legacies (the doctrine is gone with the dynasty).

### Broken-lapse — `farr_proof_broken_lapse`

**Gate**: 60 cumulative months at legitimacy ≤ 25 (`farr_low_months >= 60`), without the usurpation having fired.

The doctrine quietly lapses. No coup, no usurper — the realm simply stops pretending. The bleed ends. The `attempted_farr_and_failed` permanent scar applies: `monthly_prestige = −0.10`, `diplomatic_reputation = −1`, `antagonism_received_modifier = +0.10`. The cousins remember, the chronicles record. **Re-declaration is locked** by the reform's `potential` check — this dynasty has had its chance.

## How to manage the disaster

The standing posture that survives the Farr Proof is **continuous, legible war against legible targets**. The arithmetic doesn't leave room for peace: a single peaceful year at the −1.0 bleed eats 12 legitimacy. The dynasty that pays it off is the one that stays in the field, takes ground, and uses each pulse of victory's +0.4 to buy the next apparatus claim.

Practical sequencing:

1. **First year**: take the initial −50 hit. Do not attempt to claim *sikka* immediately even if you have the floor — wait until you are at war and your conquest pulse is feeding +0.4/mo.
2. **Through 50**: war and conquest. Claim *sikka* the first time you can do it without falling back below 35.
3. **Through 65**: do not break peace just to recover. The clergy slice is small; the *sikka* refund alone covers a lot.
4. **Through 80**: this is the hardest stretch. Hunt-and-Nawrūz needs 80 leg net of the −20 cost — i.e. claim it from a position of comfortable 95+. The amīr satisfaction it brings is large; do not claim it during a major war if you can avoid the amīr unrest the disaster's standing modifier is already imposing.
5. **Through 90**: same again. Take *pādishāh* from 110+ legitimacy whenever it's available — by this stage the legacies are doing most of the work, and the 25-leg cost is recoverable in a single tier-3 win.
6. **Hold the floor at 75 for 60 months for Vindicated**. With four apparatus claimed, you are net positive: this is the easy lap.

Failure modes:

- **Capital loss** is the single worst event. The `farr_capital_lost` modifier is `monthly_legitimacy = −2.0`, on top of the −1.0 standing bleed. Three months at −3.0 can drop you fifty points. Defending Tabrīz / Iṣfahān / Shīrāz is the first strategic priority.
- **Stalemated peace at low legitimacy** is the textbook way to fall into Broken-lapse. The doctrine punishes inactivity twice: directly, through the bleed, and indirectly, by denying you the conquest pulse.
- **Aggressive over-claiming**: claiming all four apparatus the moment each threshold is reached burns 70 legitimacy in costs. If those claims fall during a defeat, the dynasty can crash through 35, 20, 10 in succession.

## Payoffs in plain numbers

A Vindicated dynasty that has claimed all four apparatus stands at:

- `monthly_legitimacy = +0.10` (Vindicated) + the four legacy traces' implicit prestige and satisfaction effects.
- Permanent `tax_income_efficiency = +0.05`, `tolerance_own = +1`, Tribes `+0.15`, Amirs `+0.05` and reduced amīr/tribal rebel growth, `antagonism_received_modifier = −0.35` total (`−0.20` from Vindicated, `−0.15` from *pādishāh* legacy), `diplomatic_reputation = +2`.
- Eligibility for `iranian_kingship` in Age 2 (the only Age 2 reform that requires `farr_i_izadi`).
- Standing as a recognized Erānzamīn contender.

A Broken dynasty stands at: bleed ended, doctrine gone, scar permanent, no re-attempt.

See also: [Government reforms](government-reforms.md), [Erānzamīn situation](eranzamin-situation.md), [Türk vs Tāzīk](turk-vs-tazik.md), [the Ghāzī Burden of the Sword](ghazi-burden-of-sword.md) (the parallel disaster for the *ghāzī* path).
