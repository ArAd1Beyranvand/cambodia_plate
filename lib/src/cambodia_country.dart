import 'package:plate_core/plate_core.dart';

import 'cambodia_colors.dart';

/// Cambodia as a `PlateCountry`. The plates carry no flag or country block —
/// the province's name is printed on the face — so every spec sets `noPanel`.
abstract final class CambodiaCountry {
  static const PlateCountry cambodia = PlateCountry(
    code: 'kh',
    captionLines: <String>[],
    panelColor: CambodiaColors.white,
    panelTextColor: CambodiaColors.blue,
  );
}
