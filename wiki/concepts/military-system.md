# The military system

Persianate states do not field mass peasant armies, and the mod stops pretending they do. The settled population is demilitarized at the baseline. Your manpower comes from two reservoirs, and your third force is bought.

## The three forces

### 1. The iqṭāʿ class

The iqṭāʿ is a Persianate institution that the Europeans, mostly, did not develop and almost never developed well: a true military caste whose tax contract is their salary and whose job is showing up mounted, armored, and at strength at the muster review.

The mechanics: the crown assigns the tax revenue of a province (or a defined revenue right within it) to a holder. In exchange, the holder is bound to furnish a fixed number of cavalry at a fixed standard of equipment, on the muster summons, for a defined number of months per campaigning year. The contract is honored or it is not. When it is, the iqṭāʿ-holder shows up with his men. When it is not, his iqṭāʿ is forfeit.

The fourteenth-century *muqṭaʿ* honored the contract far more literally than the European noble of the same period, whose feudal service obligation had already commuted into cash payments and contract-soldiering generations earlier. This is one of the design's central asymmetries: the mod is allowed to give you a real military caste because, in this region, in this period, there genuinely was one.

In game, iqṭāʿ access is gated by [the Amirs estate](amirs-estate.md): you must first grant the `amirs_iqta_grant` or `amirs_hereditary_tuyul` privilege before iqṭāʿ buildings can be constructed at all. The building itself is detailed on [the buildings page](buildings.md) — rural-only, gated to `local_control < 0.5`, hard to revoke (requires `local_control > 0.7`), and the only rural source of `local_levy_size_modifier` in the Persianate baseline. Combined with the demilitarized peasantry (`peasants_estate_levy_size = −0.85` on the Age 1 baseline reform), this means **a Persianate state without iqṭāʿ has almost no field army**.

### 2. The tribes

A second reservoir, larger than the iqṭāʿ class and orders of magnitude larger than what any settled society can match: the tribal confederations of the steppe edge and the *ʿashīrat* of the mountains. The Türkmen, the Mongol *ulus* fragments, the Kurdish, Lur, and Baluch confederations, the Arab tribes of Iraq and the Gulf coast.

A tribal levy is summoned, not paid. The mechanism is political: the ruler appears in person at the tribal *quriltai*, or sends a delegation that carries his *yarligh*, and asks for warriors. The confederation answers, or it does not, depending on whether the ruler's [Türk legitimacy](turk-vs-tazik.md) is high enough that the request is taken seriously and on whether the current iqṭāʿ and privilege state has not actively antagonized the tribal leadership.

In game, the tribal reservoir is gated by the country's Türk score and by specific privileges (tribal autonomy, *qosh* recognition). A heavily Tāzīk-leaning state can have the iqṭāʿ but cannot meaningfully draw on the tribes; a Türk-leaning state has both but pays in chancery efficiency and tax yield.

### 3. The ghulām corps

The third force is bought. The treasury — especially the formidable fiscal machinery of a Tāzīk-leaning state — converts gold into ghulāms: slave soldiers, the royal retinue, the *jandar* household guard, the standing infantry of the capital garrison.

The ghulām corps is the long-run answer to the over-mighty tribal aristocracy. Its loyalty runs to the household that owns it, not to a tribal confederation or an iqṭāʿ assignment. A ruler with a large enough treasury can, over time, build a corps that no longer needs the tribes and no longer fears the Amirs. The Safavids will eventually walk this path. So will the Ottomans. So will the Mughals.

In the mod, ghulām purchase is treated as a paid manpower pool that draws against your treasury rather than against your subject population. It is expensive. It is also the only manpower source that is not contingent on a particular estate's mood, which is exactly why it is structurally important.

## Battle, not siege

Wars in the post-Ilkhanid plateau resolve in **battle**, not in siege.

The Mongol conquest razed the walls of Iranian cities and forbade rebuilding them. The result, into the fourteenth century, is a landscape where most major cities are walled poorly or not at all, and the field battle is the verdict that the cities then ratify. The siege game is muted: fortifications give less, sieges resolve faster (often by the population opening the gates after the field force has been broken), and the campaign is decided on the open plain.

You should not bring a European siege game to this map. Bring cavalry.

The mod does not pretend Iran is Anatolia or Egypt. There are walled cities — Baghdad, Tabrīz, Iṣfahān, Shīrāz, Harāt — and they will hold against the smaller armies. But the structural answer to "how do I take a province in this region" is: defeat the field force, and the province will follow.

## The kiln

A separate small point that the design feels strongly about: Iranic nations build in **brick**. The base game's tendency to make every nation build everything out of timber it does not have is, in this region, geographically absurd. The plateau builds in brick — fired in kilns, glazed, faced — as God and geography intended. The relevant building chain reflects this.

See also: [Amirs estate](amirs-estate.md), [Dīwān estate](diwan-estate.md), [Türk vs Tāzīk](turk-vs-tazik.md).
