FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the resilient people of Cambodia to view examples:

https://platexample.ir/#/discover/cambodia:typescript

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

### Install (TypeScript)

Copy `typescript/src/countries/cambodia/` into `plate_core/typescript/src/countries/`.

Then run the tests from `plate_core/typescript/`: `npm test`.

### Use

```ts
import country from './countries/cambodia';

const spec = country.specs.get('kh.private.phnom_penh');
console.log(country.package);
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

- Specs: `country.specs`, by id.
- Themes: `country.themes`.
- Validators: `country.validators` (`CambodiaValidator`, `CambodiaStackedValidator`).

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/cambodia_plate/blob/main/LICENSE).
