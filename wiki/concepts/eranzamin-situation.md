# The Erānzamīn succession situation

**Erānzamīn** — *the land of Iran* — is the name the Ilkhanid chancery used for the realm. The succession situation that bears its name is the realm-wide political crisis triggered by Abū Saʿīd's death without a male heir in November 1335 and the rapid extinction, over the following two years, of every plausible Hülegüid candidate.

This page covers both the doctrine of the crisis and the actual event chain that runs it: `ilkhanate_flavor.1`, `.2`, `.10`, and `.99`.

## The historical problem

The Mongol political order rested on one rule: only a descendant of Chinggis Khan could legitimately reign. By 1335 Iran's Hülegüid line was running out of credible candidates.

The actual fourteenth-century solution was a charade. Warlord-regents installed Borjigin puppets in whose name coins were struck and the Friday khuṭba was read, while the regents ran the state. The sequence of puppets ran from a genuine princess (Sātī Beg) through increasingly dubious figures, ending with candidates whose parentage was politely fictional. The system worked, in the sense of producing functioning states, for roughly two decades.

It is one of the strangest political experiments of the medieval period: an empire whose army, treasury, chancery, and provinces all survived, but whose sovereignty was, by everyone's open admission, vacated.

## The situation in game

The situation is `01_eranzamin_succession`, applied at game start to every contender in the post-Ilkhanid space. The contender roster is **inclusive**, not curated — the Safavid order of Ardabīl is in it, despite being a small Sufi lodge in 1337, because the simulation does not get to know what happens in 1501.

While the situation is active, certain forms of formal imperial title and certain integration tools are locked. The exit is the prerequisite for several higher-tier government reforms.

## The contender package — auto-conquest and the warlord prerogative

This is the single most important mechanic to understand about how the situation actually plays. The Erānzamīn contenders are not separate sovereign states having ordinary diplomatic relations. They are **rival claimants to one realm**. The late Ilkhanid chancery considered the *Erānzamīn* a single political space, and the contenders inherit that conviction: each treats the others as usurpers within his own country, not as foreign powers across a recognized border.

That conviction is rendered in script through three stacked layers.

### The warlord prerogative — `ilkhanate_warlord`

The ruler of every contender gets the `ilkhanate_warlord` character modifier (`category = character`, indefinite duration) at situation start. It does two things:

- **`auto_conquer_at_war = yes`** — **what you occupy in war, you keep.** The normal peace-treaty cession of specific provinces is replaced by automatic conquest of every occupied location at the war's resolution. There is no negotiated map.
- **`force_allow_as_leader = yes`** — overrides the normal "are you allowed to lead this war" restrictions. Any contender ruler can lead any Erānzamīn war regardless of rank or relative size.

The rationale for `auto_conquer_at_war` is doctrinal, not a convenience hack. A negotiated peace treaty assumes two sovereigns whose mutual recognition gives the treaty its force. The Erānzamīn contenders do not have mutual recognition. You cannot sign a treaty in which your rival recognizes you as the lawful holder of Tabrīz when your own chancery has already declared that Tabrīz is part of your inheritance and that your rival is a usurper sitting on it. Symmetrically, you cannot draft a cession document in which you concede a province to a rival you do not recognize as a sovereign. So the chancery refuses to draft the cession in either direction, and the only legitimate territorial settlement is the fact on the ground: whoever holds it at the war's end owns it. The Mongol *yāsā* solved the same problem the same way — possession decides, because the alternative was admitting that the *ulūs* could be cut up by paper.

This is also the mechanic that breaks the base-game habit of inconclusive intra-regional wars. In Europe two duchies can sign a five-year truce and leave the lines roughly where they were. In Erānzamīn, every war is a step-change in the map.

### The contender modifier — `eranzamin_contender_modifier`

Applied to every contender country (`category = country`, `decaying = no`, indefinite). It tunes the war system to the high-tempo intra-Iranian conflict the situation represents.

- **`global_war_score_efficiency = +0.33`** — wars accumulate score about a third faster than baseline. The fighting resolves at the pace of fourteenth-century Iranian campaigns, not at sixteenth-century European pace.
- **`antagonism_received_modifier = −0.50`** — other contenders do not treat your expansion as illegitimate. You are playing the same game they are. There is no coalition forming over your conquests as long as the situation is active.
- **`diplomatic_annexation_cost = −0.25`** — annexation of a subordinated rival is cheaper. (The legitimate non-conquest exit: vassalize a rival first, then annex on the discounted track.)
- **`aggressiveness_modifier = +0.20`** — AI contenders expand harder. The situation is meant to feel hot.
- **`pop_join_rebel_threshold = +0.10`** — pops are *less* willing to join rebels. The militarization breeds tolerance for warlord rule; the chaos is not, paradoxically, a rebellion-fertile environment.
- **`land_morale_modifier = +0.10`** — contender armies fight hard. They believe they are fighting for a legitimate claim.

### The region modifier — `eranzamin_succession_region_modifier`

Applied at situation start, by the Erānzamīn IO's `every_owned_location` block, to every location owned by every IO member. `category = location`, `decaying = no`, indefinite.

- **`local_defensive = −0.35`** — **forts are neglected.** The Mongol prohibition on rebuilding city walls is still in effect through the post-Ilkhanid generation. Add the Persianate-baseline fast-resolving siege game (see [the military system](military-system.md)) and the field battle becomes definitively the verdict the cities ratify.
- **`local_monthly_prosperity = −0.0025`** — the breakdown of order disrupts trade and agriculture. The economy limps along because the militarization of society absorbs the displaced.
- **`local_levy_size_modifier = +0.10`** — but it breeds warriors. The militarization is the proximate cause of the levy bump; what the economy loses in prosperity, the contenders gain in available manpower.

### How the three layers combine

Read together, the modifiers describe the actual play experience of a contender:

- **The map is volatile.** Forts are weak, war score is fast, morale is high, manpower is up. Borders move every campaign.
- **Diplomacy doesn't preserve them.** Peace deals don't cede or refuse to cede provinces — what was occupied at peace is the new map. The volatility is locked in by `auto_conquer_at_war`.
- **Other contenders do not punish your expansion.** The antagonism reduction means a rival's growth does not generate the usual coalition pressure that ordinarily limits expansion. The system is balanced on the assumption that *all* contenders are pressing the same way at the same time.
- **The exit is territorial, not diplomatic.** Resolving the situation (and triggering the `ilkhanate_flavor.10` victory event) requires holding the four key cities (Tabrīz, Baghdad, Sulṭāniyya, Iṣfahān), holding more than 400 locations owned or held by subjects, being sovereign (`is_subject = no`), and meeting one of three end-condition clauses (Tāzīk Triumph at axis ≥ +75 with the *Matter of Tork* resolved; Türk Triumph at axis ≤ −75 with the *Matter of Tazik* resolved; Safavid Synthesis at the 75/75/0.80 thresholds — see the `eranzamin_end_condition_met` script trigger). You cannot diplome your way into the empire of Iran. You have to take it, and then complete the corresponding doctrinal path.
- **The timeout fires in 1450.** If no contender hits the gate by then, the situation runs out via `ilkhanate_flavor.99` — the historical Tīmūrid sweep as the bad-case alternative.

### What is *not* in the contender package

A small but important note. An earlier design (`ilkhanate_collapse_situation`) granted blanket mutual cores between contenders — every contender could core every other contender's land cheaply, as if the territorial division were already only nominal. **That mechanic is gone.** Integration is now player-driven, via the post-conquest integration actions (Consolidate Diwan, Grant the Yurt, Mixed Settlement), each of which applies its own location modifier (`consolidate_diwan_mod`, `grant_the_yurt_mod`, `mixed_settlement_mod`) and represents a deliberate political choice about *how* the just-conquered land is incorporated. The chancery does not pretend the rival's province was always yours. You have to make it yours, and the *way* you make it yours leaves a trace on the location for the next ten years.

## The legitimacy choice — `ilkhanate_flavor.1`

The first thing the situation does, on every contender at start, is fire `ilkhanate_flavor.1`. This event presents the Age 1 legitimacy choice as five options. You must pick one. There is no "decide later" option — the khuṭba is read in someone's name every Friday, and a realm that names no one sits in an Unsettled Legitimacy fault state until you commit.

### Option A — Chinggisid Regency

Rule as *amīr* in the name of a Borjigin puppet. Available to anyone who does not already hold `chinggisid_regency`, `farr_i_izadi`, or `ghazi_sultanate`. AI weighted toward states already drifting Türk; weighted out for Christian-religion contenders.

**Effects on pick:**

- Adopts the `chinggisid_regency` government reform.
- `add_legitimacy = +10`, Amirs `+0.10`, Dīwān `−0.05`.
- **Spawns a Borjigin puppet character.** If `dynasty:borjigin_dynasty` does not yet exist, it is founded. A new character is created, assigned to that dynasty, placed in the Amirs estate, given Mongolian culture and your religion, aged 18–30. The character gets the `blocked_from_character_interactions` modifier so you cannot directly act on him.
- The puppet's `patron_country` character variable is set to your country. This is the linkage `on_borjigin_puppet_death` reads when firing the follow-up event `.2` on your country specifically.
- Your country's `charade_counter` variable is set to `1`. This is the stacking counter for "how many puppets deep are we in the fiction."
- **Every other regent in the Erānzamīn IO is now your enemy.** For every IO member that also holds `chinggisid_regency`, the event adds `opinion_rival_regent` and `cb_eranzamin_succession` casus belli against you. You are now a rival claimant, not a fellow regent.

This is the trap with the best terms. The legitimacy is cheap by design — the regency reform itself grants `monthly_legitimacy = +0.5`, the highest in the Age 1 tree — but everything else about it tells you the ceiling is real.

### Option B — Ghāzī Sultanate

Available only if `religion_group = religion_group:muslim`, and to anyone not already holding `chinggisid_regency`. AI weighted toward states with non-Muslim neighbors (a target for *ghazā*).

**Effects on pick:**

- Adopts the `ghazi_sultanate` reform.
- `add_legitimacy = +5`, Clergy `+0.10`, Dīwān `−0.05`.

The reform gives you `monthly_legitimacy = +0.1` (real but modest), `antagonism_received_modifier = −0.10`, `global_manpower_modifier = +0.10`, `land_morale = +0.05`, `tolerance_own = +1`, and `global_clergy_estate_power = +0.50`. The trade is the embedded contradiction the option does not hide: there is no infidel within a month's ride of an Iranian-plateau capital. Your *ghazā* will be waged against Muslims you have first declared bad Muslims.

### Option C — Farr-i Īzadī

Declare Iranian kingship. Available to anyone not already holding `chinggisid_regency`. AI weighted toward Tāzīk-leaning states and away from Mongol-culture-group polities.

**Effects on pick:**

- Adopts the `farr_i_izadi` reform.
- **`add_stability = −10`, `add_legitimacy = −10`.** This is the option that pays the price up front.
- Dīwān `+0.15`, Burghers `+0.10`, Amirs `−0.20`, Clergy `−0.10`.
- **Every regent in the Erānzamīn IO gets the `opinion_betrayed_genghis` opinion modifier on you and the `cb_eranzamin_succession` casus belli against you.** Picking the *farr* is, in the IO's view, an open declaration of war on the Chinggisid order.

The reform itself runs: `monthly_legitimacy = −0.25` (you must pay legitimacy upkeep continuously to hold this claim), `stability_decay = +0.05`, large Dīwān/Burgher satisfaction, Amir satisfaction `−0.15`, `monthly_amirs_estate_rebel_growth = +0.005`, and `antagonism_received_modifier = +0.15`. The price of premature kingship is the legitimacy gulf you must climb back out of. Fortune is the evidence of *farr*. You prove it or you do not.

### Options D and E — tag-specific puppet hand-offs

If you are playing **Chobanids (CHB)**, option D is available: you adopt the historical Sātī Beg as your puppet (`character:chb_sati_beg_pw`), and the `charade_counter` is set to `1`. `add_legitimacy = +5`.

If you are playing **Jalayirids (JAL)**, option E is available: you adopt the historical Muḥammad Khan as your puppet (`character:jal_muhammad_khan_pw`), and the `charade_counter` is set to `1`. `add_legitimacy = +5`.

These two options are scripted historical hand-offs — the puppets exist in the start data and the event simply binds them to your country's `patron_country` slot, rather than spawning a new Borjigin character.

## The puppet's death — `ilkhanate_flavor.2`

When a Borjigin puppet character dies, the `on_borjigin_puppet_death` on-action fires `ilkhanate_flavor.2` on the puppet's `patron_country`. The event presents two options. Your country must still hold `chinggisid_regency` for the event to be relevant.

### Option A — End the fiction

Drop the reform. The legitimacy of the regency goes with it.

**Effects:**

- Removes `chinggisid_regency`.
- `add_legitimacy = −100`, `add_stability = −25`.
- Amirs `−0.30`, Tribes `−0.30`, Dīwān `+0.05`.

The numbers tell you exactly what the system thinks of breaking the charade unprepared. You have committed to a path; getting out of it early, before you have built any alternative legitimacy doctrine, costs everything the regency was giving you and more. The realm is now naked of any legitimacy doctrine and falls back under an Unsettled Legitimacy auto-modifier until another Age 1 reform is taken.

AI weighting: factor 30, doubled if the country already has `charade_continues_mod` (the puppet line is already thin). Not the AI's default — but it picks it more often if the charade is already conspicuous.

### Option B — Enthrone the son

The chancery proclaims the puppet's heir as the new khan.

**Effects:**

- Spawns a new Borjigin puppet character. Dynasty: `borjigin_dynasty`. Estate: Amirs. Religion: country religion. Culture: Mongolian. Age: 18–30. `patron_country` variable set to your country.
- Adds `charade_continues_mod`. The modifier's `size` field reads from `root.var:charade_counter` — **the malus scales with how many times you have already done this**. The first iteration is mild; the fifth is structural.
- Increments `charade_counter` by 1.
- Amirs `+0.05`, Dīwān `−0.05`.

AI weighting: factor 70, halved if `charade_continues_mod` is already on. The default — but the AI starts to second-guess as the charade thickens.

The two options together are the recurring crisis of the regency path. You can hold the regency for a long time, but each puppet's death is a new resolution, and the stacking `charade_continues_mod` is the system's quiet voice telling you that the fiction is growing thinner each cycle.

## The victory event — `ilkhanate_flavor.10`

When a contender has resolved the situation, `ilkhanate_flavor.10` fires. The event branches by culture group.

### Option A — Mongol Restoration

Available if `NOT culture has_culture_group = culture_group:iranian_group`.

- `add_prestige = +50`, `add_legitimacy = +50`.
- Adds `great_khans_mandate` country modifier (`years = -1`, permanent).
- **`change_societal_value = { type = turk_vs_tazik value = −50 }`** — the country swings hard toward Türk.

This is the Mongol-cultural answer to the situation. The Ilkhanate is, in some sense, restored.

### Option B — Persian Resurgence

Available if `culture has_culture_group = culture_group:iranian_group`.

- `add_prestige = +50`, `add_legitimacy = +50`.
- **`set_country_rank = country_rank:rank_empire`** — the country is elevated to empire rank, claiming the Shāhanshāh title.
- Amirs `−0.50`, Dīwān `+0.50`. The Turco-Mongol military aristocracy is, in script, thrown out.
- Adds `restoration_of_eran` country modifier (`years = -1`, permanent).
- **`change_societal_value = { type = turk_vs_tazik value = +50 }`** — the country swings hard toward Tāzīk.

This is the Iranian-cultural answer: not restoration of the Ilkhanate but resurrection of the *Erānshahr*.

## The timeout — `ilkhanate_flavor.99`

If the situation runs to its time limit without a contender resolving it, `ilkhanate_flavor.99` fires on the timed-out country.

- `add_stability = −10`.
- For every province in the Erānzamīn region, adds the `shattered_administration_mod` province modifier (permanent).

The post-Ilkhanid space did, in the actual fourteenth century, fail to produce a consensus inheritor on any reasonable timescale. The timeout event scripts that historical possibility: the situation closes without a winner, and the realm is the worse for the failure.

## The reform's lock — a note

The `chinggisid_regency` reform is declared `locked = always = yes` in its definition. **You cannot pick it from the reform menu.** The only way into it is via `ilkhanate_flavor.1` option A (or options D / E for CHB and JAL specifically). This is deliberate: the reform is the formalization of the puppet relationship, which requires the spawn-and-bind machinery the event provides. There is no menu-only path to it.

See also: [Government reforms](government-reforms.md), [Persianate Sultanate](persianate-sultanate.md), [Starting the game](starting-the-game.md), [Türk vs Tāzīk](turk-vs-tazik.md).
