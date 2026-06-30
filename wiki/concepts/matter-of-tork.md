# The Matter of Tork — The Place of the Sword

> *What is the Türk's place now?*

The other two legitimacy disasters audit a **claim**: the Farr Proof asks whether your fortune is real, the Ghāzī Burden whether your sword is. The **Matter of Tork** (`matter_of_tork`) asks the question legitimacy cannot answer. By the time it fires your legitimacy is settled — you came through the *farr*, the *ghazā*, or the mystical turn. But the Türk military constituency, whose entire world-picture ranked men by proximity to the golden line of Chinggis, has just been made irrelevant by that settlement. They did not evaporate. They are standing in the realm, armed, a third of the land and most of the cavalry. **What becomes of them?**

It is not a wager. It is friction — a light standing bleed representing an armed class whose world you have voided — resolved not by accumulating credibility but by **choosing a disposition**. And the dispositions are the only door to their mechanics: nothing else in the mod lets you settle the Türk question, so the disaster legitimately *pushes* you toward one of five answers.

## Trigger

The Matter fires for **any** qualifying consolidator — *farr*, ghāzī, or mystical — because the Türk question exists regardless of how Tāzīk your court is. The gate (`matter_of_tork_can_start`, `03_matter_triggers.txt`):

- `eranzamin_contender` and the territorial gate held 24 months;
- **NOT** of the Borjigin dynasty, and **NOT** holding `chinggisid_regency` — a khan, or a regent ruling in his name, has no Matter; the Türks have no grievance against the golden line itself;
- **NOT** `amir_sultanate` / `turkmen_confederation` — there the Türk class *is* the constituency; those face the Matter of Tazik instead;
- `num_pop_type_in_country:tribesmen >= 750` — the question needs a questioner. A realm consolidated on rural-gentry arms with no real tribal host never poses it.

Expected firing window in practice: roughly year 50–70 of a campaign, as Iran is consolidated.

## The standing bleed

About a fifth the weight of the *farr*/ghāzī wager-bleeds — friction, not audit:

| Field | Value |
|-|-|
| `amirs_estate_target_satisfaction` | −0.10 |
| `tribes_estate_target_satisfaction` | −0.10 |
| `monthly_amirs_estate_rebel_growth` | +0.01 |
| `monthly_tribes_estate_rebel_growth` | +0.015 |
| `monthly_legitimacy` | −0.10 |
| `stability_decay` | −0.001 |

**Horizon: 240 months.** Run out the clock without answering and the tribes answer for you (see *Catastrophe*).

## The Approach layer — the Council on the Hosts

The disaster opens with **the Council on the Hosts** (`matter_of_tork.2`), offering four **approaches**. An approach is not the answer — it is a direction of *preparation* that generates the tools the answer needs. A **Change Approach** panel button re-convenes the council at any time. Core rules:

- the horizon clock **never resets** on a switch — time spent is spent;
- **earned gains persist; only the ambient approach modifier swaps.** Privileges granted, the ghulām corps built, axis moved, land conquered — all keep. Trading time for breadth is legal and priced in horizon-months.

Each approach has its own panel actions and event chain, armed only while it is active.

### 1. "Reduce our reliance on these barbarians" — the ghulām effort

Prepares Expulsion and Eradication; useful under any answer. The palace slave-army (Sāmānid/Ghaznavid ancestry, Abbas's Caucasian corps as the late form). Actions:

- **Purchase Ghulam Levies** — raises the corps tier (I→II→III, persistent `matter_ghulam_corps_N` modifiers). Gated on **ghulām barracks levels** (1 / 3 / 6) and, past tier I, the **slave caravans**.
- **Declare Royal Inju** — a *political* act, not mere demolition: the Tāzīk king declares a tribal province crown demesne (the Ilkhanid *injü*), breaks its `tribal_pasture`, and pushes the hosts off. Province-level; rolls a crisis (quiet / unrest / an amir's open protest). **Eradication needs 5 declared; Expulsion needs 2** — you cannot end or expel a class whose economic base still stands.
- **Institutionalize the Slave Caravans** — requires a caravanserai network and a fortified border facing an *unfortified* non-Muslim neighbour. Unlocks corps tiers II–III.

Anger machinery: while the military estates sit below 30% satisfaction under this approach, a counter runs — warning at 24 months, the plot realized (early mass defection) at 48.

### 2. "Iran is the Beacon of Civilization" — Iranization

Prepares **Co-optation** (disposition A). The amīrs transition from tribal elite to pure military administration; the tribes Iranize in identity without ceasing to be pastoral (the historical outcome). Requires seating the amīrs first via `amirs_umara_at_the_diwan` — Niẓām al-Mulk's nightmare as the price of his solution; its grant fires a one-shot −20 axis push toward Türk. Conditional amir privileges (Iqtaʿ Commutation, Chancery Commissions), a tribes privilege (Salaried Pastoral Levies), the **Madrasa of the Registers** (worsens civilian admin while it runs — the long work is paid in the coin of government), Qanat Settlement, the Shāhnāma Recension. Completion grants the **Īlāt Compact** government reform.

### 3. "Forge a new Identity" — the vilāyat courtship

Prepares the **Sufi Synthesis** (disposition C), and is the road that makes mysticism −50 reachable. The murīd–murshid bond, the qizilbash answer. Ambient +0.2/mo toward mysticism (clergy seethe). Endow the Lodges, Invite the Shaykhs, **the Shia turn** (`change_religion` at mysticism ≤ −25 with a shaykh at court — the Ḥaydar moment, priced). Event chain: the camps take to the devotion first (which is *why* the bond will work), the jurists' ultimatum, the red headgear.

### 4. "Why tame what we can unleash?" — the march, earned

Prepares **Frontier Confederation** (disposition B). Tribal cavalry buffed *now* (they are being used for what they are). The march is **earned by conquest**: Release the March picks a seat among tribal pasturelands whose area is ≥ 8 owned locations and borders a country that is neither you nor your subject. The Begs quarrel over the vanguard.

## The five dispositions

Claimed via panel buttons; one answer per realm. Each is gated by the legitimacy identity you already hold — the cleaner your legitimacy road, the harder your Türk options.

| | A. Co-opt | B. Frontier | C. Sufi | D. Expel | E. Eradicate |
|-|-|-|-|-|-|
| **Farr** | yes | weak\* | yes (moderate) | yes | yes |
| **Ghāzī** | yes | yes\*\* (native) | yes (very hard) | yes | yes |
| **Sufi/mystical** | yes | yes | native | yes | yes |

\* The *farr* king can exile the hosts to the frontier but cannot give them a *mission* there — hired marchers, not sworn (`matter_marcher_compact_mercenary`).
\*\* The ghāzī already has the *dār al-ḥarb* war to point them at — sworn marchers (`matter_marcher_compact`).

**The Sufi asymmetry** (farr easy, ghāzī hard) is a category-of-legitimacy fact: the synthesis is a *charismatic-person* legitimacy. *Farr* is already one (king bears the divine glory) — adding murshid-hood is fusion of like with like. Ghāzī-orthodoxy is a *law-and-deed* theory whose foundation is the **denial** that any living person carries sacral charisma — adding murshid-hood fuses a thing with its own negation. The ghāzī must therefore repudiate his own apparatus: he keeps `ghazi_sultanate`/`dar_al_jihad` (the synthesis is an addition, not a recantation of the *ghazā*) but **loses the `muhtasib_regime` law** and is steered into `zill_allah_regime`, paying −40 legitimacy and weathering a 20-year clergy storm. The *farr* king pays −10 and walks. This is the road Islamic gunpowder orthodoxy historically refused — the Ottomans kept the law and built the devshirme instead.

### A — Co-optation / Iranization (≈20-year process)
Türk dissolves into Tāzīk. Completion needs 240 months **and** the axis actually at **+90** (the whole reform stack must cooperate, not just the approach tools); a share of remaining tribesmen settle into the peasantry. Grants the **Īlāt Compact**. Risk: low. Cost: time, a soft military generation, cabinet opportunity.

### B — Frontier Confederation (instant; a March subject)
The hosts become marcher-lords on the *dār al-ḥarb* edge — a March of huge tribal demographics: militarily formidable, fiscally poor, structurally unruly. The Aq Qoyunlu fuse, lit by your own hand and pointed outward. Risk: medium, deferred.

### C — Sufi Synthesis (instant; mysticism-gated)
The murīd-bond replaces the khan-bond: cavalry kept whole and *more* loyal than blood. **Collapsed with the §20.4 Qizilbash Synthesis END clause** — it sets `matter_of_tork_resolved_by_synthesis` and answers both the Tork and Tazik questions at once.

### D — Expulsion (≈10-year process)
Drive them out — steppe, Anatolia, Hindustan. Tranche pop-removal at 3 / 7 / 10 years; at completion one border province is ceded to a spawned **independent, hostile** confederation (how Türk states historically propagated). Clean interior, a 25-year cavalry gap. Risk: high.

### E — Eradication (civil war + 50-year maturation)
End the class *as* a class. The class being destroyed defects en masse **immediately** — a civil war against your own sword arm, via the `spawn_turkmen_breakaway` machinery at full strength (the breakaway gets **`matter_total_mobilization`: +1.5 tribes levy** — total mobilization of the hosts). Survive it and the **Post-Tribal State** payoff applies *together with* a 50-year aftermath that suppresses it — the sword arm amputated while the slave-army is rebuilt and the neighbours smell blood. The gap's expiry **is** the maturation. Risk: extreme, front-loaded; reward back-loaded.

## The refounded estate — the Dehqan Revival

Expulsion and Eradication don't abolish the amirs estate; they **refound** it. The estate slot — men of the sword holding land — survives; its Turco-Mongol charter is stripped (`matter_tork_refound_amirs_estate`: tribal hosts, tribal autonomy, umara-at-the-diwan, commutation all revoked; amir-held ghulām commands transferred to the chancery). The new charter (`11_dehqan_privileges.txt`), available on `matter_turk_dissolved` and **not** after Iranization (which fills the niche with commuted amīrs):

- **The Dehqan Revival** — the Sasanian-descended gentry rearmed: registered cavalry on service tenure, mustered through the chancery. The *asvārān* counterfactual, six centuries late — slower and politically dearer than slave-soldiers, but native.
- **Service Tenure Registers** — the gentry's land held conditional against the registers. The leash, and the gentry know it.
- **The Shāhnāma Endowment** — the cultural charter the new class needs (Ferdowsī wrote it three centuries early).

A/D/E also set `matter_turk_dissolved`, foreclosing `qizilbash_aristocracy` permanently — you destroyed, removed, or dissolved the qizilbash-equivalent before it could exist. The ghulām and dehqān roads are the two armies a post-tribal realm can reach for.

## Catastrophe

Horizon reached with no disposition, **or** an Eradication attempt lost: mass Türk defection (`spawn_turkmen_breakaway`). A non-khan who offers neither war, nor devotion, nor a place is not worth following.

- War lost / white peace → **The Bleeding Flank** (`matter_turk_defection_scar`): the realm is maimed, a rival confederation on the flank.
- War won anyway → **Broken Hosts** (`matter_broken_hosts`): weaker than any chosen disposition — the question answered with a sword you did not choose to draw.

A `matter_turk_defection_scar` realm **cannot form Persia** (it answered the Place of the Sword by losing it).

## Files

`disasters/01_matter_of_tork.txt` · `scripted_triggers/03_matter_triggers.txt` · `scripted_effects/02_matter_effects.txt` · `generic_actions/matter_of_tork_actions.txt` · `events/matter_of_tork_events.txt` · `gui/panels/disaster/matter_of_tork.gui` · `static_modifiers/06_matter_resolution_modifiers.txt` · privileges `08`–`11` · reform additions in `01_persian_reforms.txt`. Full design: `docs/design/matter_of_tork_design.md`.
