import 'package:flutter/widgets.dart';
import 'package:plate_core/plate_core.dart';

import 'cambodia_colors.dart';

/// One ink on one field. Frame ratios are unmeasured; the photos show no clear
/// frame line.
abstract final class CambodiaThemes {
  static final PlateTheme private = _ink(
    CambodiaColors.white,
    CambodiaColors.blue,
  );

  static final PlateTheme privateLong = _ink(
    CambodiaColors.white,
    CambodiaColors.navy,
  );

  static final PlateTheme police = _ink(
    CambodiaColors.white,
    CambodiaColors.red,
  );

  static final PlateTheme diplomatic = _ink(
    CambodiaColors.mustard,
    CambodiaColors.darkBlue,
  );

  static final PlateTheme ngo = _ink(
    CambodiaColors.ngoBlue,
    CambodiaColors.offWhite,
  );

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
