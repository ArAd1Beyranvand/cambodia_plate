FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the resilient people of Cambodia to view examples:

https://platexample.ir/#/discover/cambodia

# cambodia_plate

Cambodia's licence plates for the `plate_core` library. Private (short and long), police, diplomatic, non-governmental and international-organisation plates, one theme each, Latin alphabets and an advisory validator per design. Colour is the theme; shape is the spec.

## Install

```yaml
dependencies:
  plate_core: ^0.12.0
  cambodia_plate: ^0.1.0
```

## Use

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

## Contains

- `CambodiaCountry` — country panel: `cambodia`.
- `CambodiaPlates` — 7 plate specs: `private`, `privateLong`, `police`, `diplomatic`, `nonGovernmental`, `internationalMotorcycle`, `of()`.
- `CambodiaThemes` — 6 themes: `private`, `privateLong`, `police`, `diplomatic`, `ngo`, `internationalMotorcycle`.
- `CambodiaValidator` — advisory validator; flags the frame, never blocks a keystroke.
- `CambodiaStackedValidator` — advisory validator; flags the frame, never blocks a keystroke.

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

