# Estate privileges

Privileges are how you actually do most things in a Persianate campaign. The reform tree is slow, the parliament is for prosecuting the apparatus, and the levers that shape your realm year-to-year are in the privilege panel.

Every Persianate-specific privilege is gated by `potential = { government_type = government_type:persianate_sultanate }`. Most fall into one of four structural patterns described below.

## The four design patterns

### 1. Rivalry pairs

Two privileges, one from each estate, that cannot be active simultaneously. The mutual exclusion is enforced by `allow = { NOT = { has_estate_privilege = ... } }` on each side. Granting one revokes the other (which means paying the revoked estate's reaction). The pair represents a structural choice about *how* the state does a particular thing.

### 2. Flavor capstones

High-content-priority privileges that name a specific historical office or institution. These are not mutually exclusive with each other; they stack. Each names something the historical record has a strong opinion about — the Ṣāḥib-Dīwān, the Mustawfī al-Mamālik, the Amīr al-Umarāʾ — and each carries the political character of that institution.

### 3. Prerogative violations

A small number of privileges flip one of the two `*_estate_allowed_*` booleans the baseline government sets off. These cross a structural line the baseline does not permit. There are currently two — one per estate — and they are the most expensive single political acts in the mod.

### 4. The tax-asymmetry layer

This is the design layer that runs underneath the other three and is easy to miss. Almost every estate-strengthening privilege does two things to the assessment caps:

- **Lowers the granting estate's `_max_tax`** — the estate writes itself fiscal cover.
- **Raises the rival estate's `_max_tax`** — the granting estate makes the rival more assessable.

The net effect is that privileges are not just a satisfaction transaction; they are also a reassignment of the realm's fiscal exposure between the two elites. A heavy Dīwān grant typically makes the Amirs more squeezable on the way. A heavy Amir grant typically protects them from assessment while the Dīwān remains exposed. This layer is the reason a Persianate realm's tax economy can look reasonable in baseline and very different five privileges later.

## The Dīwān catalog

Eight privileges, organized as four flavor capstones, three halves of rivalry pairs, the prerogative-violation privilege, and the age-gated reformist `mulk_protection_charter`.

### Flavor capstones (four)

- **`sahib_diwan_plenipotentiary` — Ṣāḥib-Dīwān** (content priority 500). The chief minister with delegated executive authority — the Juvaynīs under Hülegü and Abaqa, Rashīd al-Dīn under Ghāzān and Öljaitü. `country_cabinet_efficiency = +0.15`, large urban-control bump, `change_policy_cost_modifier = −0.10`, big Dīwān power. Tax layer: `diwan_estate_max_tax = −0.075` (the office's holders accumulated colossal fortunes; the privilege models the carve-out).
- **`mustawfi_al_mamalik` — Mustawfī al-Mamālik**. The chief accountant: `tax_income_efficiency = +0.15`, `stability_decay = −0.0001`, `diwan_estate_max_tax = −0.05`. The man who keeps the books has the easiest line to falsify — his own.
- **`persianate_mint_administration`**. Rashīd al-Dīn's 1297–98 minting reform: `minting_income_factor = +0.15`, `monthly_inflation = −0.0005`, and a `−0.15` to burgher power (the burghers lose mintage as an estate prerogative).
- **`mongol_persian_documentary_synthesis`**. The Juvaynī / Rashīd al-Dīn fusion of Mongol *yarligh* and Persian *inshāʾ* chancery style: `research_speed_modifier = +0.05`, `cultural_tradition_modifier = +0.05`, `diplomatic_reputation = +1`, `monthly_towards_innovative = +0.05`.

### Rivalry pairs (three halves on the Dīwān side)

- **`diwan_mavajib_cash_pay` ⟷ `amirs_hereditary_tuyul`** — *funding the cavalry.* Mavājib is salaried pay drawn on the *dīwān-i istīfāʾ* through *ḥawāla* drafts; it is the strongest single instrument the chancery has for keeping the countryside in state hands. Effects: huge Dīwān satisfaction/power, `global_max_rural_control = +ez_mavajib_rural_bonus`, `global_manpower_modifier = +0.10`, `land_morale = +0.05`, `army_maintenance_efficiency = −0.15`, `tax_income_efficiency = −0.05`, **`amirs_estate_max_tax = +0.10`** (the Amirs become recorded salary-drawers and assessable). The rival privilege, `amirs_hereditary_tuyul`, lives in the amir file and runs the opposite logic: heritable land grants, Türk axis push, rural control malus.
- **`diwan_barid_intelligence` ⟷ `amirs_audit_exemption`** — *visibility.* The *dīwān al-barīd*, the courier-intelligence service revived by the Mongols as the *yam*. Effects: medium Dīwān satisfaction, rural and urban control bonuses, `country_cabinet_efficiency = +0.05`, `replace_cabinet_member_cost_modifier = −0.10`, **`amirs_estate_max_tax = +0.05`, `burghers_estate_max_tax = +0.05`, `peasants_estate_max_tax = +0.05`** (everyone is now visible to the assessor), and `diwan_estate_max_tax = −0.05` (the Dīwān shaves its own assessment in payment for running the service).
- **`diwan_musadara_confiscation` ⟷ `soyurghal_grants`** — *heritability of wealth.* Muṣādara is the chancery's clawback of dead, disgraced, or fallen officials' estates into the treasury. It is corrosive to long-run development — nobody improves land the state will seize, as Niẓām al-Mulk complains in the *Siyāsatnāma* — but it is short-term revenue and centralization. Effects: `diwan_estate_target_satisfaction = −0.05` (the Dīwān itself takes the hit, since its members are the ones being seized), `tax_income_efficiency = +0.10`, urban-control bonus, **`diwan_estate_max_tax = +0.05`** (the Dīwān class becomes more taxable because the state can seize on death anyway), Amirs satisfaction `−0.10`, `global_monthly_prosperity = −0.002`, `global_monthly_development = −0.0035`.
- **`diwan_qanun_codification` ⟷ `amirs_tribal_urf_jurisdiction`** — *who judges.* *Qānūn* is the dynastic-sultanic law that runs alongside (and at the margins crowds out) the *sharīʿa*; the Chinggisid *yāsā* is the prototype. Effects: major Dīwān satisfaction/power, `country_cabinet_efficiency = +0.10`, urban-control bonus, but `global_clergy_estate_power = −0.15` and `clergy_estate_target_satisfaction = −0.10` (the *qāḍī* is outranked).

### Prerogative violation

- **`diwan_tazik_command_of_arms`** (content priority 600). Flips `diwan_estate_allowed_leading_military = yes`. Effects: huge Dīwān satisfaction/power, `country_cabinet_efficiency = +0.10`, `monthly_towards_centralization = +0.05`, `monthly_towards_tazik = +0.10`, **and the structural hit to the Amirs**: `amirs_estate_target_satisfaction = −0.10`, `global_amirs_estate_power = −0.15`. `revoke_privilege_cost_modifier = 1.5`. The Amirs' position is captured by Ṭoghā Temür's reported question to the Kartid Muʿizz al-Dīn Ḥusayn: what business has a *tāzīk* leading armies?

### The age-gated reformist privilege

- **`mulk_protection_charter`** (content priority 400). Only available from `current_age = age_4_reformation` onward — antithetical to the political DNA of a 14th-century Persianate court. Mutually exclusive with `diwan_musadara_confiscation`. The chancery formally renounces *muṣādara* and codifies the inviolability of *mulk* as positive law. The institution Niẓām al-Mulk listed as the great suppressor of long-run prosperity is removed. Effects: `global_monthly_prosperity = +0.01`, `global_monthly_development = +0.0075` (both massive). Property security flips the tax caps downward across the board: `burghers_estate_max_tax = −0.10`, `amirs_estate_max_tax = −0.20`, `diwan_estate_max_tax = −0.30`. Burghers and Amirs love it (`+0.10` each); the Dīwān is ambivalent (the chancery class is safer but loses the squeeze-tool it used to build wealth at others' expense). The throne pays: `monthly_legitimacy = −0.30`. The historical exit was the 1906 Constitutional Revolution. `revoke_privilege_cost_modifier = 2.0`.

## The Amirs catalog

Eight privileges, organized as the soyurghāl capstone, three flavor capstones, a maximalist tarkhan capstone, halves of rivalry pairs, the prerogative-violation privilege, and the *quriltai* convocation.

### The soyurghāl capstone

- **`soyurghal_grants`** (content priority 600). The Amir capstone — hereditary, fully tax-immune, and administratively immune (state agents barred from entering). Late-Timurid, Aq Qoyunlu, early Safavid. Mutually exclusive with `diwan_musadara_confiscation`. Effects: huge Amir satisfaction/power, `global_max_rural_control = −ez_soyurghal_rural_malus`, `global_max_urban_control = −ez_amir_urban_malus_big`, `province_integration_speed = −0.20`, `tax_income_efficiency = −0.10`, **`amirs_estate_max_tax = −0.20`** (the soyurghāl is the carve-out, formalized), Dīwān power and satisfaction down, `monthly_towards_turk = +0.10`, `monthly_towards_decentralization = +0.10`. `revoke_privilege_cost_modifier = 5.0`.

### Flavor capstones (three)

- **`amir_al_umara`** (content priority 500). The senior-most *amīr* as chief of all military commanders — Būyid in origin, recycled by Saljūq *atabegs*, Ilkhanid *noyans*, Tīmūrid emirs. `army_tradition_from_battles = +0.25`, `land_morale = +0.05`, `army_heavy_cavalry_power = +0.10`, `army_light_cavalry_power = +0.10`. Dīwān power down `−0.10`, `country_cabinet_efficiency = −0.05`.
- **`yarligh_tarkhan`**. Mongol chancery patents granting personal and fiscal immunity, household by household. `tax_income_efficiency = −0.075`, `amirs_estate_max_tax = −0.1`, rural and urban control maluses.
- **`quriltai_convocation`**. Convocation of senior *amīrs* in the Mongol manner. `monthly_legitimacy = +0.05`, `amirs_estate_levy_size = +0.15`, `tribes_estate_levy_size = +0.10`. This is the standing summons of the senior tribal/military aristocracy.

### Maximalist capstone

- **`universal_tarkhan`** (content priority 700). The whole *amīr* caste raised to *tarkhan* rank as a class — the maximalist version of `yarligh_tarkhan`. Aq Qoyunlu and early Safavid drift in this direction by default; the *qizilbāsh khāns* simply assumed their persons were beyond the assessor's reach. Effects: `amirs_estate_target_satisfaction = +0.15`, `global_amirs_estate_power = +1.0`, **`amirs_estate_max_tax = −1.0`** (the *amīr* caste is written out of the tax base entirely), `tax_income_efficiency = −0.05`, `global_diwan_estate_power = −0.25`, `monthly_towards_turk = +0.15`, `monthly_towards_decentralization = +0.20`. `revoke_privilege_cost_modifier = 5.0`. Granting this privilege is a constitutional act. The chancery is left to extract revenue from peasants, burghers, and itself.

### Rivalry-pair half

- **`amirs_tribal_urf_jurisdiction`** (rival of `diwan_qanun_codification`). Tribal country is carved out of the *maẓālim* / *qāḍī* system; the *amīr* judges by *ʿurf* and *ʿādat* in his own jurisdiction. Effects: large Amir satisfaction/power, `global_max_rural_control = −ez_amir_rural_malus`, `amirs_estate_max_tax = −0.05` (the *amīr*'s court shields his dependents and himself from chancery assessment), `province_integration_speed = −0.10`, `stability_cost = +0.10`.

(The `amirs_iqta_grant`, `amirs_hereditary_tuyul`, and `amirs_audit_exemption` privileges — the halves of the funding-the-cavalry, the land-grant alternative, and the visibility pairs on the amir side — are in `02_amir_privileges.txt` rather than the Persianate additions file. They are the gating privileges for the [iqṭāʿ grant building](buildings.md).)

### Prerogative violation

- **`amirs_umara_at_the_diwan`** (content priority 600). Flips `amirs_estate_allowed_in_cabinet = yes`. Effects: huge Amir satisfaction/power, `country_cabinet_efficiency = −0.10`, `monthly_towards_decentralization = +0.05`, `monthly_towards_turk = +0.10`, **and the structural hit to the Dīwān**: `diwan_estate_target_satisfaction = −0.10`, `global_diwan_estate_power = −0.15`. `revoke_privilege_cost_modifier = 1.5`. The Dīwān's position is in the *Siyāsatnāma*'s register of complaints: the men of the sword in the chancery is the road to ruin, because they sign documents they cannot read and protect their own from the assessor. The historical practice — Aq Qoyunlu, Qara Qoyunlu, late-Tīmūrid Herāt — gives both the warning and the working state.

## A note on the prerogative-violation pair

The two prerogative-violation privileges (`diwan_tazik_command_of_arms` and `amirs_umara_at_the_diwan`) sit in the same content-priority slot (600) and look symmetric, but the country-level modifiers are not numerically identical: Tāzīk Command of Arms carries `country_cabinet_efficiency = +0.10` and `monthly_towards_centralization = +0.05`, while Umarāʾ at the Dīwān carries `country_cabinet_efficiency = −0.10` and `monthly_towards_decentralization = +0.05`. The intended balancing layer for this is the broader tax-asymmetry system: granting the Tāzīk side typically raises the *amīr* assessment cap elsewhere in the privilege ledger, while granting the Amir side reduces it. The cabinet-efficiency asymmetry is a real, deliberate cost-of-mixing reading: a Dīwān-led command corps writes its own dispatches; an Amir-led chancery does not.

## In game

Privileges are accessed from the estate panel. Each tooltip shows: the country modifier the privilege grants, the satisfaction/power impact on both estates, the rival privilege (if any), and the revoke cost.

`revoke_privilege_cost_modifier` scales the cost of pulling the privilege later. The two prerogative-violation privileges are at `1.5`; the two heaviest capstones (`soyurghal_grants`, `universal_tarkhan`) are at `5.0`; `mulk_protection_charter` is at `2.0`. Treat the high-revoke privileges as commitments.

See also: [Türk vs Tāzīk](turk-vs-tazik.md), [Dīwān estate](diwan-estate.md), [Amirs estate](amirs-estate.md), [Buildings](buildings.md).
