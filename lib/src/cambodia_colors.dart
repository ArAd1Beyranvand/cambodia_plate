import 'package:flutter/widgets.dart';

/// The colours of the current Cambodian plates.
///
/// Every reference is a photograph, so each value is the modal colour of the
/// stroke or field in the flattened photo named beside it, not a reading of
/// the article's adjectives (its "blue on white" is three different blues).
/// Fields are the paint times the light; no photo here carries a known white
/// to rescale against, so none was balanced.
abstract final class CambodiaColors {
  /// Private field. `Kambodzanska_rejestracja3bus`: `F8F8FA`.
  static const Color white = Color(0xFFF8F8FA);

  /// Private ink, the bus photo (full daylight): `448FE5`.
  static const Color blue = Color(0xFF448FE5);

  /// Private ink on the long plate. `Car_license_plate_Cambodia_03`: `264487`,
  /// much darker than [blue]. One photo each, so whether it is the paint or
  /// the exposure cannot be told; kept apart.
  static const Color navy = Color(0xFF264487);

  /// Police ink and fine print. `Police_License_plate_of_Cambodia_1-1077`:
  /// `D55A60`.
  static const Color red = Color(0xFFD55A60);

  /// The English province name under the private plate's rule, same photo as
  /// [blue]: `F45C64`, lighter than the police red of a different photo.
  static const Color provinceRed = Color(0xFFF45C64);

  /// Corps diplomatique field. `CD_plate_Cambodia`: `B08406`.
  static const Color mustard = Color(0xFFB08406);

  /// Corps diplomatique ink, same photo: `1C3361`.
  static const Color darkBlue = Color(0xFF1C3361);

  /// Non-governmental organisation field.
  /// `Cambodia_license_plate_non_government_international_organisation_car`:
  /// `4BAEEA`.
  static const Color ngoBlue = Color(0xFF4BAEEA);

  /// International-organisation motorcycle field.
  /// `Cambodia_license_plate_international_organisation_motorcycle`: `86C0FD`,
  /// a paler blue than [ngoBlue].
  static const Color paleBlue = Color(0xFF86C0FD);

  /// Ink of both international-organisation plates: `F3F3F0` (car) and
  /// `F8F9FA` (motorcycle), the same white within the photos' error.
  static const Color offWhite = Color(0xFFF5F6F5);

  static const Color inactive = Color(0xFFB0B0B0);
}
