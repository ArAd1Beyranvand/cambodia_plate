FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the resilient people of Cambodia to view examples:

https://platexample.ir/#/discover/cambodia:python

# cambodia_plate

Cambodia's licence plates for the plate_core library — private, police, diplomatic and international-organisation plates, themes, alphabets, advisory validator.

## Languages

| Language | Folder | Example |
| --- | --- | --- |
| Flutter / Dart | [`flutter/`](https://github.com/ArAd1Beyranvand/cambodia_plate/tree/main/flutter) | [platexample](https://platexample.ir/#/discover/cambodia:flutter) |
| Kotlin | [`kotlin/`](https://github.com/ArAd1Beyranvand/cambodia_plate/tree/main/kotlin) | [platexample](https://platexample.ir/#/discover/cambodia:kotlin) |
| Python | [`python/`](https://github.com/ArAd1Beyranvand/cambodia_plate/tree/main/python) | [platexample](https://platexample.ir/#/discover/cambodia:python) |
| TypeScript | [`typescript/`](https://github.com/ArAd1Beyranvand/cambodia_plate/tree/main/typescript) | [platexample](https://platexample.ir/#/discover/cambodia:typescript) |

## Quick start

### Install (Python)

Copy `python/plates/countries/cambodia/` into `plate_core/python/plates/countries/`.

Then run the tests from `plate_core/python/`: `pytest`.

### Use

```python
from plates.countries.cambodia.data import SPECS, THEMES

spec = SPECS["kh.private.phnom_penh"]
theme = THEMES["CambodiaThemes.private"]
print(spec.id)
```

## Specs

The specs are the same in every language (they come from shared data).

- `kh.private.phnom_penh`
- `kh.private_long.phnom_penh`
- `kh.police`
- `kh.diplomatic`
- `kh.non_governmental`
- `kh.international_motorcycle`

## Themes

- `CambodiaThemes.private`
- `CambodiaThemes.privateLong`
- `CambodiaThemes.police`
- `CambodiaThemes.diplomatic`
- `CambodiaThemes.ngo`
- `CambodiaThemes.internationalMotorcycle`

## Change it

- Pick a spec: use another key of `SPECS`.
- Pick a theme: use another key of `THEMES`.
- Validators: `VALIDATORS` maps the names `CambodiaValidator`, `CambodiaStackedValidator` to classes.

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/cambodia_plate/blob/main/LICENSE).
