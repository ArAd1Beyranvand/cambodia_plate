import 'package:flutter/widgets.dart';
import 'package:plate_core/plate_core.dart';

import 'cambodia_colors.dart';

/// One ink on one field, the frame in the ink. The frame ratios are not
/// measured: the flattened photos show no clear frame line, so a thin one is
/// kept for the look of an embossed plate.
abstract final class CambodiaThemes {
  /// Private plates.
  static final PlateTheme private = _ink(
    CambodiaColors.white,
    CambodiaColors.blue,
  );

  /// Private plates in the long format.
  static final PlateTheme privateLong = _ink(
    CambodiaColors.white,
    CambodiaColors.navy,
  );

  /// Police plates.
  static final PlateTheme police = _ink(
    CambodiaColors.white,
    CambodiaColors.red,
  );

  /// Corps diplomatique plates.
  static final PlateTheme diplomatic = _ink(
    CambodiaColors.mustard,
    CambodiaColors.darkBlue,
  );

  /// Non-governmental organisation plates.
  static final PlateTheme ngo = _ink(
    CambodiaColors.ngoBlue,
    CambodiaColors.offWhite,
  );

  /// International-organisation motorcycle plates.
  static final PlateTheme internationalMotorcycle = _ink(
    CambodiaColors.paleBlue,
    CambodiaColors.offWhite,
  );
}

PlateTheme _ink(Color field, Color ink) => PlateTheme.monochrome(
  field: field,
  ink: ink,
  inactive: CambodiaColors.inactive,
  borderWidthRatio: 0.015,
  plateRadiusRatio: 0.05,
);
