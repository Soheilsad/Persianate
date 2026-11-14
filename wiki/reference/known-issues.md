# Known issues and systems in testing

The mod is under active development on Europa Universalis V **1.4.7**. This page lists the systems that are new and have not yet been played through, and the faults already noticed in them. Everything below comes from reading the mod as it stands, not from a finished test campaign: treat it as a list of places to be careful, and report what you find on the [Workshop page](https://steamcommunity.com/sharedfiles/filedetails/?id=3634535722).

## Compatibility

- Built for **1.4.7**. Earlier game versions will not load it correctly.
- The mod replaces the base game's Ilkhanate situation, the Rise of the Ottomans situation, the scheduled appearance of Timur, the 1337 population of the Middle East and much of its political setup. It is not compatible with other mods that change the same things.

## New and not yet verified in play

| System | What is unverified | Page |
|-|-|-|
| The Erānzamīn organisation panel | How the Five Seats, Khans in Custody and Notables tabs draw and update in a live game | [The Erānzamīn organisation](../concepts/eranzamin-organisation.md) |
| Ulus Chaghatay | The organisation, the *qubchur*, the panel and its monthly ledger have been run; pledges, patrons, risings, raids, client kings and the broken-tümen event have had spot tests only, and the AI's use of them is unobserved | [Ulus Chaghatay](../concepts/ulus-chaghatay.md) |
| The Amirs' Regency | Built end to end, but never played from a khan's death to an ending. Stages, endings and the cadet events have been reached only with debug tools | [The Amirs' Regency](../concepts/amirs-regency.md) |
| The Ṣāḥib-qirān | The founding, the fortune, sworn amirs and the situation's new outcomes. A campaign sees a Timur only if a regency ends this way, so many will see none | [The Ṣāḥib-qirān](../concepts/sahib-qiran.md) |
| The Beglerbeg's Regency (Golden Horde) | Everything. It is the newest system and has not been run in play at all | [The Beglerbeg's Regency](../concepts/beglerbegs-regency.md) |
| Chaghatay culture and the steppe privileges | The culture's pops, characters and culture lists at the start; Hereditary Tümens and Bound to the Tümen; the Kurultai rule; the tribes in horde parliaments | [Demography and cultures](../concepts/demography-and-cultures.md#chaghatay), [Hordes](../concepts/hordes.md) |
| Starting culture lists | Accepted and tolerated cultures assigned at game start, and their upkeep | [Demography and cultures](../concepts/demography-and-cultures.md) |
| The Amirs' private armies | Retinue regiments and Summon the Amirs' Tümens | [The Amirs estate](../concepts/amirs-estate.md) |
| The Matter of Tork's new paths | The Great Raid, Release the March and the closing proclamation | [The Matter of Tork](../concepts/matter-of-tork.md) |
| Waqf and *iqṭāʿ* decay | Whether the estates build endowments, Unaudited Iqṭāʿ and Tuyul on their own, and the yearly reassessment | [Buildings](../concepts/buildings.md) |
| The Zaydi Imamate | The organisation, the tenets and the Imam's jihād | [The Zaydi Imamate and Yemen](../concepts/zaydi-imamate.md) |
| The Commonwealth of Martyrs and the *ṭarīqa* orders | The balance of the Shaykhī estate; the orders' rising | [The Commonwealth of Martyrs](../concepts/commonwealth-of-martyrs.md), [Ṭarīqa orders](../concepts/tariqa-orders.md) |

## Known faults

### The succession of Erānzamīn

- The timeout event **The Dream Dies** is set for a date after the situation has already ended, so it probably never appears.
- Taking a province capital as a contender takes every location in the province, including land held there by a third party.
- A country that becomes a contender after the start receives the contender actions but not the Contender modifier or the opening legitimacy event.
- A contender who is also a member carries two nearly identical bonuses, so some of them (war score cost among them) count twice.
- The tooltip on **Consolidate the Diwan** asks for a Tāzīk lean above 15; the real requirement is above 25.
- Consolidate the Diwan and Mixed Settlement make the land core; Grant the Yurt only integrates it.
- An **Amīr Sultanate** reached through The Fiction Expires does not shed Unsettled Legitimacy.
- In the Custody of the Ulus the count of successions starts at one, so "two successions survived" is reached after a single real succession.

### The Matters and the audits

- **Persia** cannot be formed after a Matter of Tork closed by proclamation; the decision only recognises eradication or a defection war.
- **The Matter of Tazik is switched off.** Türk-leaning regimes currently face no consolidation crisis of their own.
- Change Approach locks as soon as any path is begun, although paths are meant to stack.
- The Farr panel's end conditions read 90 and 25; the real thresholds are 95 and 40. The Farr counts victories in great battles but defeats only in skirmishes.
- The Iranization bar is drawn out of 240 months although it completes at 120.

### Estates and the Maẓālim

- **Muṣādara Right** cannot be revoked once granted, which leaves the Mulk Protection Charter and Soyurghal Grants out of reach. Muṣādara always falls on a Dīwān minister, whatever its tooltip says.
- Burghers hold no seat in the Majlis-e Mazalim, so their cases and petitions may never come up.
- Parliament event rewards still pay in the 1.3 currencies rather than political influence.
- **Curtail the Umara** gives +50% tax efficiency, almost certainly meant to be +5%.
- Khāṣṣa Crown Demesne lists its cut to the Amirs' power twice.

### Buildings and goods

- The Kāshī Guild consumes goods but produces nothing.
- The Qanāt Network's requirement tooltip is blank.
- Unaudited Iqṭāʿ and Tuyul tooltips promise larger levies; they give smaller ones or none.

### The Shia world and Yemen

- **Rise Against the Patron** asks for no radicalisation, declares no war, and grants neither Zeal nor membership in the Movement.
- **Patronize An Order** only works while the Sarbadar Phenomenon is running.
- **Capture the Court** always installs the Ṣafavī school, whichever order did the capturing.
- Ardabil starts without the base reform the other six orders hold.
- A player cannot found a rival imamate, so the jihād against a "rival Imam" has no target. Two of the three Zaydi tenet groups do not yet change how the Imam is chosen.
- **Swear Bayʿa** says Twelvers must recommit first; in fact it converts them.

### Ulus Chaghatay, the regencies and the Ṣāḥib-qirān

These systems were written in November 2026 and have been corrected after short tests, not after campaigns. Treat every number on their pages, and on [Ulus and regency numbers](ulus-and-regency-numbers.md), as a first setting. The mod's own files say as much; the points below are the ones they single out, followed by discrepancies found while writing this wiki.

**Marked as unverified or provisional in the mod's files**

- **All the regency's numbers** are described as values to tune after watching AI play. None has been tuned that way yet.
- **The amir bar of 4.00** is provisional. 6.00 was found too high; 4.00 sits between the two readings seen on the 1337 map (5.25 on the first day, 3.5 after a month), and is to be retuned once those readings settle. Until then the first Chagatai succession may or may not open a regency.
- **"Tribesmen enfranchisement"**, lowered by Hereditary Tümens and Bound to the Tümen, is a modifier the mod defines as a test. The engine may ignore it; the rest of both privileges does not depend on it.
- **Marry into the Line** attempts the marriage, but the engine may refuse it to a ruler who is already married. The regency counts the ruler as a son-in-law of the line either way, so the wife may not be visible.
- **Recall the Darughas** weakens the nobles for ten years but cannot remove the Darugha's Seats themselves.
- **A Ṣāḥib-qirān's automatic conquest** did not take unfortified country in a test, so occupied locations are now handed over by script as well. How the two interact everywhere is unchecked.
- **Sworn amirs** did not join a war begun by Plan Invasion on their own, so that action now puts them into it. Wars the Ṣāḥib-qirān declares in the ordinary way rely on the subject type's own rule, which has not been confirmed.
- **Base events that name the historical Temür** (his death, "the Lame", and several others) are not rewritten. Under a different conqueror they stay silent or read oddly.
- **The four carved tümens** vanished on the first day in an early build for want of a Kurultai. Each now starts with one; the mod's notes still treat their survival past the first day as something to confirm.

**Discrepancies between the text in game and what the script does**

- **Claim the Khan** says whoever takes the regent's capital takes the khan. That is true only from the regency's third stage. In the second stage the claim opens the war, but winning it costs the regent standing and does not move the khan.
- **The Office Hardens** promises +10% per step to the heir's standing. The bar on the panel shows it; the poll at the regent's death, as written, does not apply it.
- **The bar "Regent's heir against the best rival"** scores the heir by an older formula than the one the poll uses at the regent's death, so the bar can be a poor guide to the result.
- ***The Khan Is Taken from Us*** promises a claim to take the khan back. The claim is given when an heir loses the khan at a regent's death, but not when the khan is taken by force or passes to a rival at the turn into the fourth stage.
- ***An Amir Asks for Our Tümen*** still says half our weight would be counted as his. A pledge is the whole of it.
- **Client King of the Ulus** is set on Badakhshan and Karategin at the start but is not on the organisation's own list of statuses, so the status and its small bonuses may not appear. Their membership, their reform and their exclusion from the amirs' reckoning do not depend on it.
- The qubchur's description still reads "one part in a hundred"; the levy is 5%.
- A raid by a non-Muslim chief, or by a Muslim chief on a Muslim realm of another rite, is neither a *ghazā* nor a raid on his own faith, and carries no price or reward of either kind.

### The steppe

- Two succession events (**Too Many Sons of the Line** and **The Amirs Have Been Counting**) still show placeholder text.
- **The Question of the Far Country** fires for any distant area, not only poorly controlled ones.
- The *yam*'s description says flatland only; the bonus applies everywhere.
- The Törü succession is seated only on the Golden Horde and Chagatai.
- An *ulus* holder's loyalty is meant to be shaken when the khan who granted it dies; this is not yet in play.

### Rum and the Kurdish emirates

- **Restore the Diwan of Rum** shows −5 stability; it costs −15 (−10 where a chancery already stands).
- Winning Shattered Rum still uses the base game's size test, which is larger than Anatolia.
- **The Chancery Within Reach** is offered again for every great city a Kurdish emirate takes.
- The Kurdish Emirate modifier's numbers are placeholders.

### The map and its people

- The retyping of protected communities is unfinished: the Jews of Iran and Yemen are done, but Syriac Christians and Armenians in Iraq, the Jazira and Azerbaijan are still typed as slaves, as in the base game.
- The Jalayirids start without recognising the Syriacs of their own realm.
- Kerman (KRM) shows a country history written for Karaman.
- Three countries whose land has been reassigned (HLL, ASR, SBZ) are still on the Erānzamīn member list.

## Not in the mod yet

Mentioned in older descriptions or planned, but not present: the Matter of Tazik as a playable crisis, a Twelver Imamate organisation, the Mamluk and Delhi event chains beyond their opening events, demanding fealty between hordes, and a kuriltai (parliament) of Ulus Chaghatay itself.

See also: [What changed in 1.4](../whats-new-in-1-4.md), [Countries and tags](countries-and-tags.md), [Ulus and regency numbers](ulus-and-regency-numbers.md).
