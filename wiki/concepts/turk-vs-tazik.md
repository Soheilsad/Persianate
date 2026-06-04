# Türk vs Tāzīk

Under everything in this mod runs one axis: the societal value between the **Türk** and **Tāzīk** poles. The men of the sword and the men of the pen.

It is not a culture slider. Your population stays whatever culture it was. It is a question about what kind of state you are: whose advice you take, whose protocols you keep, whose grievances you redress first. Nearly every mechanic in the mod reads or writes it.

## The poles

**Türk** is the steppe-derived pole. Its institutional vocabulary is *yarghu*, *yarligh*, *tamghachi*, *noyan*, *quriltai*. Its army is tribal cavalry mustered through aristocratic loyalty. Its taxation is light and contemptuous of the assessor. Its court is mobile, performative, full of fictive kin. Its model ruler is Chinggis Khan, then his descendants, then any *amīr* who can make himself plausible at carrying their inheritance.

**Tāzīk** is the Iranian-bureaucratic pole. Its institutional vocabulary is *dīwān*, *kharāj*, *jizya*, *dabīr*, *waqf*, *muḥtasib*. Its army, when it has one, is paid: stipendiary ghulāms, salaried infantry, mercenary cavalry. Its taxation is dense, registered, and ruthlessly accounted. Its court is sedentary, ceremonial, built around the audience hall. Its model ruler is the Sasanian *Shāhanshāh*, then the Sāmānids, then Niẓām al-Mulk's image of the *Shāh* in the *Siyāsatnāma*.

Most actual fourteenth-century Iranian polities are mixed. The pure poles are ideal types. The point of the axis is to ask: which of these two grammars does your state default to when the answer is not obvious?

## What the axis governs

- **Estate trust.** A heavily Türk state warms the Amirs and chills the Dīwān. A heavily Tāzīk state does the inverse. The estates read this axis directly and adjust their satisfaction and loyalty accordingly.
- **Reform access.** Several Age 2 and Age 3 reforms require a minimum Türk or Tāzīk score to take. The branching reform tree is not symmetric: some doctrines are only available from one pole.
- **Tribal summons.** Whether the steppe and *ʿashīrat* confederations on your borders answer your call to arms depends in part on your Türk legitimacy. A state that has gone fully Tāzīk cannot summon the tribes the way a Türk-leaning ruler can; conversely, a Türk-leaning state struggles to extract the kind of revenue a Tāzīk-leaning state can.
- **Integration tools.** Some kinds of subject integration (vassal absorption, peripheral province incorporation, tribal sedentarization) become available, cheaper, or more expensive depending on where you sit on the axis.

## How it moves

The axis is a country-scope script value driven by **`monthly_towards_turk`** and **`monthly_towards_tazik`** modifiers. Both reforms and privileges write to it. Examples:

- The **Iqṭāʿ Grant** privilege adds `monthly_towards_turk`. Granting fiefs to the Amirs is, in script, a movement toward the steppe pole.
- The **Tāzīk Command of Arms** privilege adds `monthly_towards_tazik`. Letting the scribal class lead armies is, in script, a movement toward the Iranian-bureaucratic pole.
- Many Age 2 and Age 3 reforms push the axis one way as part of their effect.

There is no neutral resting point. If you do nothing, your starting score drifts based on which privileges are active and which reforms you have taken.

## In game

The axis is visible on the country panel. You will see it as a balance bar between the two poles; specific reforms and privileges have tooltips that show the monthly delta they apply.

When you are evaluating a privilege or a reform, the Türk/Tāzīk delta is one of the things to look at most carefully. Picking up a strong economic privilege that drifts you a long way Tāzīk may, six years later, mean a tribal confederation refuses your summons in a war that needs them.

The most strategically valuable position is usually the one that lets you keep both estates moderately satisfied and both manpower reservoirs (tribal levies and ghulām purchase) accessible. That is harder than picking a side. The mod does not pretend it is symmetric: each pole has things the other simply cannot do.
