FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the resilient people of Cambodia to view examples:

https://platexample.ir/#/discover/cambodia:flutter

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

### Install

```yaml
dependencies:
  plate_core: ^0.12.0
  cambodia_plate: ^0.1.0
```

### Use

```dart
import 'package:plate_core/plate_core.dart';
import 'package:cambodia_plate/cambodia_plate.dart';

PlateCanvas(
  spec: CambodiaPlates.private,
  theme: CambodiaThemes.private,
  validator: const CambodiaValidator(),
  autoValidate: true,
  onChooseCharacter: noCharacterChooser,
);
```

## Specs

Each spec is one plate layout.

- `CambodiaPlates.of`(…)
- `CambodiaPlates.private`
- `CambodiaPlates.privateLong`
- `CambodiaPlates.police`
- `CambodiaPlates.diplomatic`
- `CambodiaPlates.nonGovernmental`
- `CambodiaPlates.internationalMotorcycle`

## Themes

- `CambodiaThemes.private`
- `CambodiaThemes.privateLong`
- `CambodiaThemes.police`
- `CambodiaThemes.diplomatic`
- `CambodiaThemes.ngo`
- `CambodiaThemes.internationalMotorcycle`

## Change it

`PlateCanvas` takes `spec:` (an entry of `CambodiaPlates`) and `theme:` (an entry of `CambodiaThemes`). Set `validator:` to `CambodiaValidator()` and `autoValidate: true` to show validation hints.

## Also included

- `CambodiaCountry` — the country panel.
- `CambodiaValidator` — the plate validator.

## Plates

Cambodia's licence plates: three designs, six categories.

* Captioned: Khmer name, then class digit, letter and four digits, a rule
  and the English name. Groups `class`, `letters`, `serial`; the police
  plate has no `letters`.
* Long: the same registers with names on the left. Groups `class`,
  `letters` (two), `serial`.
* Stacked — two rows, no province. Corps diplomatique: `prefix` (CD),
  `mission`, `serial`. Non-governmental: `prefix` (ONG), `org`, `class`,
  `serial`. International motorcycle: `code`, `serial`.

Pair each with its theme in `themeOf`.

Not implemented, for want of a plate to sample: the class-3 blue,
agricultural, engineering and trailer plates, the royal plate and the
numbered state plates (រដ្ឋ-01 …). No flag is placed; none is printed on a
photographed plate.

## Part of plate

Painted by [`plate_core`](https://pub.dev/packages/plate_core); alphabets shared through [`plate_alphabet`](https://pub.dev/packages/plate_alphabet); optional character picker in [`plate_keypad`](https://pub.dev/packages/plate_keypad).

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/cambodia_plate/blob/main/LICENSE).
