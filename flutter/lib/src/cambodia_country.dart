import 'package:plate_core/plate_core.dart';

import 'cambodia_colors.dart';

/// The plates carry no flag or country block, so every spec sets `noPanel`.
abstract final class CambodiaCountry {
  static const PlateCountry cambodia = PlateCountry(
    code: 'kh',
    captionLines: <String>[],
    panelColor: CambodiaColors.white,
    panelTextColor: CambodiaColors.blue,
  );
}
