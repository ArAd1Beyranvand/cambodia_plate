import 'package:plate_core/plate_core.dart';

/// The first numbers the article's class table gives: motorcycle 1, private
/// car 2, private car over seven seats 3, agricultural 4, engineering 5,
/// truck trailer 7, special 9.
const Set<String> cambodiaClassDigits = <String>{
  '1',
  '2',
  '3',
  '4',
  '5',
  '7',
  '9',
};

/// Judges a captioned or long plate: a class digit, the letters when the
/// plate has them (one or two, per the article), and four digits. Reports,
/// never bars a keystroke.
class CambodiaValidator extends GatedPlateValidator {
  const CambodiaValidator();

  @override
  String get gateGroup => 'serial';

  static const String reasonClass =
      'The first number is not one of the article\'s vehicle classes.';
  static const String reasonLetters = 'The register is one or two letters.';
  static const String reasonSerial = 'The number is four digits.';

  @override
  PlateValidation judge(PlateEntry entry) {
    if (!cambodiaClassDigits.contains(entry.group('class'))) {
      return const PlateValidation.invalid(reasonClass);
    }
    if (entry.spec.indicesOfGroup('letters').isNotEmpty) {
      final int letters = entry.group('letters').runes.length;
      if (letters < 1 || letters > 2) {
        return const PlateValidation.invalid(reasonLetters);
      }
    }
    if (!isDigitsOfLength(entry.group('serial'), 4)) {
      return const PlateValidation.invalid(reasonSerial);
    }
    return const PlateValidation.valid();
  }
}

/// Judges a stacked plate by the registers its spec has: `CD` with a
/// two-digit mission and three digits; `ONG` with a three-digit organisation,
/// a class digit and three digits; or a two-digit code and three digits on
/// the motorcycle plate.
class CambodiaStackedValidator extends GatedPlateValidator {
  const CambodiaStackedValidator();

  @override
  String get gateGroup => 'serial';

  static const String reasonPrefix = 'The prefix is CD or ONG.';
  static const String reasonCode = 'The code is two or three digits.';
  static const String reasonSerial = 'The number is three digits.';

  @override
  PlateValidation judge(PlateEntry entry) {
    final bool hasPrefix = entry.spec.indicesOfGroup('prefix').isNotEmpty;
    if (hasPrefix) {
      final String prefix = entry.group('prefix');
      if (prefix != 'CD' && prefix != 'ONG') {
        return const PlateValidation.invalid(reasonPrefix);
      }
    }
    for (final String key in <String>['mission', 'org', 'code']) {
      if (entry.spec.indicesOfGroup(key).isNotEmpty &&
          !isDigitsOfLength(entry.group(key), key == 'org' ? 3 : 2)) {
        return const PlateValidation.invalid(reasonCode);
      }
    }
    if (!isDigitsOfLength(entry.group('serial'), 3)) {
      return const PlateValidation.invalid(reasonSerial);
    }
    return const PlateValidation.valid();
  }
}
