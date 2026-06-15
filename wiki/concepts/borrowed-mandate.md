# The Borrowed Mandate — Custody of the Ulus

> *One ulus, one khan, one steward — and it will be us.*

The third legitimacy disaster, the regency's counterpart to the Farr Proof and the Ghāzī Burden. Choosing `chinggisid_regency` in Age 1 is the cheap, high, easy road: `monthly_legitimacy = +0.5`, the tribes rally, the chancery drafts for a Borjigin seal. But the legitimacy is **borrowed**, and what comes under audit is not the regent but the **fiction itself**.

| | Farr Proof | Ghāzī Burden | **Borrowed Mandate** |
|-|-|-|-|
| The claim | the king bears the *farr* | sword of the faith | steward of the khan |
| Under audit | the person's fortune | the realm's deeds | **the fiction** |
| Failure mode | the houses stop believing | the umma stops believing | **rivalry and expiry** |

The disaster (`custody_of_the_ulus`, displayed **"The Borrowed Mandate"**) encodes the two ways the mandate fails, both demonstrated exhaustively in 1336–1357: **rivalry** (other courts hold other khans — the Jalayirid–Chupanid wars were fought over *whose khan was the khan*) and **expiry** (khans die, each replacement less credible — Muḥammad Khan, Sātī Beg, Sulaymān, puppets swapped like banners).

## The two axes

**The mandate is indivisible.** A monthly census (`custody_count_rivals`) counts rival custodies: any other Erānzamīn member running the regency fiction or ruled by the Borjigin line. **Togha Temür (GRG) is the seeded standing rival** — the actual Borjigin sovereign in Khurasan, against whom every regency's fiction is junior. While any rival stands, **The Duel of Khans** drags per rival: a sized `custody_contested` modifier, **−0.1 legitimacy per rival** (so a 1337 field of three or four nearly cancels the +0.5 pump). Each rival you extinguish buys back a tenth of the mandate.

**The mandate is mortal.** This axis reuses the existing puppet-death machinery: `on_borjigin_puppet_death` → `ilkhanate_flavor.2` (end the fiction at −100 legitimacy, or enthrone the heir), `charade_counter` counting successions, the sized `charade_continues_mod` stepping the depreciation. At four successions (rock bottom) no further enthronement is offered.

## The apparatus

Panel buttons. The maintenance apparatus is gated on the contest going your way — you earn the fiction by drawing blood, not by spending gold:

- **Press the Custody** — the war handle. A picker lists every rival steward (this *is* the "who are the other khans" view); selecting one grants the `cb_eranzamin_succession` casus belli against them. Kills (annexing a rival, tracked via `on_military_annex` → `custody_kills`) unlock the rest.
- **Demand Fealty** — call a non-subject [Ilkhanate Governorate](ilkhanate-governorate.md) to swear. Costs gold (khalʿat and gifts) + **−10 legitimacy** (a sole ruler need not *ask*) and yields **+10 prestige** on acceptance; the governor receives the gifts and becomes an *ulus governorate*. Event-based — the governor accepts or refuses by its own logic.
- **Proclaim the True Custody** — denounce the rivals. Gated: ≥1 kill or ≤3 rivals left; the bonus sizes with kills.
- **Secure the Khan's Household** — succession insurance, the Endure apparatus (ungated lifeline).
- **The Khan's Name on Every Coin** — the *sikka* fiction in silver. Gated: ≥2 kills or ≤2 rivals left.
- **Summon the Kuriltai** — the Sole Custody fork; needs zero rivals held 24 months.

Panel tracks: rivals standing → 0, sole-custody months / 24, successions survived / 4.

## Resolutions

**Sole Custody is a fork, not an ending.** Winning the custody war gets you nothing durable — the fiction still expires. What it buys is the **right to choose** at the Kuriltai of Confirmation (`custody.40`):

- **The Quiet Crown** — the Shaykh Uvays move (1356): drop the fiction on your own terms, leaving `chinggisid_regency` at −25 (not the −100 panic exit). The legitimacy market opens — and the regency exclusions lift, so **the Matter of Tork can now fire and Persia becomes formable**. The regency as a ramp.
- **The Restored Yarliq** — wed the golden line and make the khanate *real*. The Mongol endpoint; deliberately not Persia. The puppet-death cycle ends — the khan is your house now.

**Endured** (`custody.50` — 300 months, ≥2 successions survived) is the weaker, dated fork: institutionalize the fiction permanently as **the Gurkani Regime** (the Timurid bargain — capped legitimacy, no pump, no step-down, no expiry, a permanent prestige/chancery ceiling), or take a late Quiet Crown at a survivor's −50.

**The Fiction Expires** (`custody.90`) — run out of credible khans (forced −100 exit at rock bottom): forced into `amir_sultanate`, the honest version of what the regency always was, plus a permanent diplomatic scar. The mask comes off in public.

## Files

`disasters/04_custody_of_the_ulus.txt` · `scripted_triggers/06_custody_triggers.txt` · `scripted_effects/07_custody_effects.txt` · `generic_actions/custody_actions.txt` · `events/custody_events.txt` · `on_action/08_custody_hooks.txt` · `gui/panels/disaster/custody_of_the_ulus.gui` · `static_modifiers/11_custody_modifiers.txt` · `gurkani_regime` in `01_persian_reforms.txt`. Full design: `docs/design/custody_of_the_ulus_design.md`.
