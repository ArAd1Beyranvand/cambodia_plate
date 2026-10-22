import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:plate_alphabet/plate_alphabet.dart';
import 'package:plate_core/plate_core.dart';

import 'cambodia_colors.dart';
import 'cambodia_country.dart';
import 'cambodia_provinces.dart';
import 'cambodia_themes.dart';
import 'cambodia_usage.dart';

/// Ink placement in plate units. Reference photographs are flattened to
/// 520×275 (aspect 1.89; photos measure 1.89–2.01) and measured by projecting
/// ink onto each axis. The long plate's reference was warped to the same
/// size, so its y values are scaled by 146/275 into a 520×146 canvas.
///
/// Measured ink, as target for the goldens:
///
/// * Private (bus photo): Khmer name x 145.5–369.2, y 13.6–79.4; serial row
///   y 89.8–225.7 (cy 158), cells centred 43.2 and 123.6, then 237 + 80.2k;
///   rule x 56.8–461.5, y 233.2–241.5; English name x 69–449, y 243–266.
/// * Long (Car_03, y scaled): Khmer name x 29–170, y 43–72; English name
///   x 30–173, y 92–103.4; rule x 222.8–449, y 108–112.8; serial y 38.8–102.8,
///   cells 210, 248, 287, a dash at 320.5, then 355 + 40.8k.
/// * Police: Khmer x 80–438, y 20–77; serial y 98.8–212.5, cells 40.4, a dot
///   at 104, then 166 + 102.3k; rule y 220.8–228 over x 31–494; POLICE
///   x 177–365, y 239.5–264.
/// * Corps diplomatique: top row y 16.2–119.2, cells 130, 213, 308, 390;
///   bottom row y 141.7–261, cells 176, 258.5, 341.
/// * Non-governmental: top row y 18–91.8, cells 132.5 + 52.3k (six); bottom
///   row y 117–238, a digit at 103.4, a dash at 180, cells 256 + 75.5k.
/// * International motorcycle: top row y 27–128, cells 228.5 and 308; bottom
///   row y 142.5–244.5, cells 158, 261.5, 366.
///
/// The plates' typeface is condensed (a private serial digit is 52 wide, 136
/// tall), so a normal face at the measured pitch is limited by cell width, not
/// height. Each serial box is about twice its pitch, the widest a glyph grows
/// before being squeezed; ink is 60–80% of the reference height and a bigger
/// box cannot help. Khmer text is sized by height (stacked marks fix it) and a
/// normal Khmer face runs narrower, so names ink short of the measured width.
abstract final class _Layout {
  static const double width = 520, height = 275;
  static const double longHeight = 146;

  static const _Captioned standard = _Captioned(
    khmerCx: 257.4,
    khmerCy: 46.5,
    englishCx: 259,
    englishCy: 254.5,
    cy: 158,
    box: 144,
    classCx: 43.2,
    lettersCx: 123.6,
    markCx: 180,
    serialCx: 237,
    pitch: 80.2,
    rule: PlateBox(56.8, 233.2, 404.7, 8.3),
  );

  /// The police plate has no letters and prints a dot, not a dash.
  static const _Captioned police = _Captioned(
    khmerCx: 259,
    khmerCy: 48.5,
    englishCx: 271,
    englishCy: 251.8,
    cy: 155.6,
    box: 184,
    classCx: 40.4,
    lettersCx: 0,
    markCx: 104,
    serialCx: 166,
    pitch: 102.3,
    classPitch: 80.8,
    serialPitch: 94,
    rule: PlateBox(31, 220.8, 463, 7.2),
  );

  static const double khmerGlyph = 80, englishGlyph = 41;
  static const double khmerBox = 300, khmerBoxHeight = 84, englishBoxWidth = 380;

  // Long plate.
  static const double longKhmerCx = 99.5, longKhmerCy = 57.5;
  static const double longKhmerGlyph = 35, longKhmerBox = 150;
  static const double longEnglishCx = 101.5, longEnglishCy = 97.8;
  static const double longEnglishGlyph = 22;
  static const PlateBox longRule = PlateBox(222.8, 108, 226.2, 4.7);
  static const double longCy = 70.8, longBox = 78;
  static const double longClassCx = 209.6, longLettersCx = 248;
  static const double longLettersPitch = 38.8, longMarkCx = 320.5;
  static const double longSerialCx = 355, longPitch = 40.8;

  // Stacked.
  static const _Row diplomaticTop = _Row(cy: 67.7, box: 135);
  static const _Row diplomaticBottom = _Row(cy: 201.35, box: 119.3);
  static const _Row ngoTop = _Row(cy: 55, box: 104);
  static const _Row ngoBottom = _Row(cy: 177.5, box: 140);
  static const _Row motorcycleTop = _Row(cy: 77.5, box: 140);
  static const _Row motorcycleBottom = _Row(cy: 193.5, box: 160);
  static const double ngoDashCx = 180;
}

/// Names, rule and number cells of a captioned plate. [lettersCx] is 0 when
/// the plate has no letters.
class _Captioned {
  const _Captioned({
    required this.khmerCx,
    required this.khmerCy,
    required this.englishCx,
    required this.englishCy,
    required this.cy,
    required this.box,
    required this.classCx,
    required this.lettersCx,
    required this.markCx,
    required this.serialCx,
    required this.pitch,
    required this.rule,
    double? classPitch,
    double? serialPitch,
  }) : classPitch = classPitch ?? pitch,
       serialPitch = serialPitch ?? pitch;

  final double khmerCx, khmerCy, englishCx, englishCy;
  final double cy, box, classCx, lettersCx, markCx, serialCx, pitch;

  /// Class cell width; narrowed on the police plate, whose serial pitch
  /// exceeds the room at the left edge.
  final double classPitch;

  /// Serial cell width. On the police plate the last cell would overrun the
  /// right edge by 4 units at [pitch], so cells narrow while centres stay.
  final double serialPitch;
  final PlateBox rule;
}

class _Row {
  const _Row({required this.cy, required this.box});

  final double cy, box;
}

class _Builder {
  final List<PlateSlot> slots = <PlateSlot>[];
  final List<PlateTextGroup> groups = <PlateTextGroup>[];
  final List<PlateLabel> labels = <PlateLabel>[];
  final List<PlateRule> rules = <PlateRule>[];

  void run(String key, PlateAlphabet alphabet, int count, double firstCx, double pitch, _Row row) {
    groups.add(PlateTextGroup(<int>[slots.length], key: key));
    slots.add(
      PlateSlot(
        alphabet: alphabet,
        box: PlateBox(firstCx - pitch / 2, row.cy - row.box / 2, count * pitch, row.box),
        length: count,
        spacing: max(0, pitch - 0.6 * 0.72 * row.box),
      ),
    );
  }

  void text(
    String text,
    double cx,
    double cy,
    double width,
    double height,
    double glyph, {
    Color? color,
  }) => labels.add(
    PlateLabel(
      text: text,
      box: PlateBox(cx - width / 2, cy - height / 2, width, height),
      glyphHeight: glyph,
      color: color,
    ),
  );
}

/// Cambodia's licence plates: three designs, six categories.
///
/// * Captioned: Khmer name, then class digit, letter and four digits, a rule
///   and the English name. Groups `class`, `letters`, `serial`; the police
///   plate has no `letters`.
/// * Long: the same registers with names on the left. Groups `class`,
///   `letters` (two), `serial`.
/// * Stacked — two rows, no province. Corps diplomatique: `prefix` (CD),
///   `mission`, `serial`. Non-governmental: `prefix` (ONG), `org`, `class`,
///   `serial`. International motorcycle: `code`, `serial`.
///
/// Pair each with its theme in [themeOf].
///
/// Not implemented, for want of a plate to sample: the class-3 blue,
/// agricultural, engineering and trailer plates, the royal plate and the
/// numbered state plates (រដ្ឋ-01 …). No flag is placed; none is printed on a
/// photographed plate.
abstract final class CambodiaPlates {
  static final Map<String, PlateSpec> _cache = <String, PlateSpec>{};

  /// [province] is ignored by categories that print none.
  static PlateSpec of(
    CambodiaCategory category, {
    CambodiaProvince province = CambodiaProvince.phnomPenh,
  }) {
    final id = category.hasProvince ? 'kh.${category.id}.${province.id}' : 'kh.${category.id}';
    return _cache[id] ??= switch (category.design) {
      CambodiaDesign.captioned => _captioned(id, category, province),
      CambodiaDesign.long => _long(id, province),
      CambodiaDesign.stacked => _stacked(id, category),
    };
  }

  static PlateTheme themeOf(CambodiaCategory category) => switch (category.id) {
    'private' => CambodiaThemes.private,
    'private_long' => CambodiaThemes.privateLong,
    'police' => CambodiaThemes.police,
    'diplomatic' => CambodiaThemes.diplomatic,
    'non_governmental' => CambodiaThemes.ngo,
    _ => CambodiaThemes.internationalMotorcycle,
  };

  static PlateSpec get private => of(CambodiaCategory.private);
  static PlateSpec get privateLong => of(CambodiaCategory.privateLong);
  static PlateSpec get police => of(CambodiaCategory.police);
  static PlateSpec get diplomatic => of(CambodiaCategory.diplomatic);
  static PlateSpec get nonGovernmental => of(CambodiaCategory.nonGovernmental);
  static PlateSpec get internationalMotorcycle => of(CambodiaCategory.internationalMotorcycle);

  /// Every category; province plates are registered in Phnom Penh.
  static List<PlateSpec> get all => <PlateSpec>[for (final c in CambodiaCategory.values) of(c)];

  static PlateSpec _spec(String id, _Builder b, {double? height}) => PlateSpec(
    id: id,
    country: CambodiaCountry.cambodia,
    canvasWidth: _Layout.width,
    canvasHeight: height ?? _Layout.height,
    panel: const PlatePanel(box: PlateBox(0, 0, 0, 0)),
    noPanel: true,
    slots: b.slots,
    labels: b.labels,
    rules: b.rules,
    textGroups: b.groups,
  );

  static PlateSpec _captioned(String id, CambodiaCategory category, CambodiaProvince province) {
    final police = category == CambodiaCategory.police;
    final l = police ? _Layout.police : _Layout.standard;
    final row = _Row(cy: l.cy, box: l.box);
    final b = _Builder();
    b.run('class', CambodiaAlphabets.digits, 1, l.classCx, l.classPitch, row);
    if (!police) {
      b.run('letters', CambodiaAlphabets.letters, 1, l.lettersCx, l.pitch, row);
    }
    b.run('serial', CambodiaAlphabets.digits, 4, l.serialCx, l.serialPitch, row);
    b.text(police ? '·' : '-', l.markCx, l.cy, l.pitch / 2, l.box, l.box);
    b.text(
      category.khmer.isEmpty ? province.khmer : category.khmer,
      l.khmerCx,
      l.khmerCy,
      _Layout.khmerBox,
      _Layout.khmerBoxHeight,
      _Layout.khmerGlyph,
    );
    b.text(
      category.english.isEmpty ? province.english : category.english,
      l.englishCx,
      l.englishCy,
      _Layout.englishBoxWidth,
      30,
      _Layout.englishGlyph,
      color: police ? null : CambodiaColors.provinceRed,
    );
    b.rules.add(PlateRule(box: l.rule));
    return _spec(id, b);
  }

  static PlateSpec _long(String id, CambodiaProvince province) {
    const row = _Row(cy: _Layout.longCy, box: _Layout.longBox);
    final b = _Builder();
    b.run('class', CambodiaAlphabets.digits, 1, _Layout.longClassCx, _Layout.longLettersPitch, row);
    b.run(
      'letters',
      CambodiaAlphabets.letters,
      2,
      _Layout.longLettersCx,
      _Layout.longLettersPitch,
      row,
    );
    b.run('serial', CambodiaAlphabets.digits, 4, _Layout.longSerialCx, _Layout.longPitch, row);
    b.text(
      '-',
      _Layout.longMarkCx,
      _Layout.longCy,
      _Layout.longLettersPitch,
      _Layout.longBox,
      _Layout.longBox,
    );
    b.text(
      province.khmer,
      _Layout.longKhmerCx,
      _Layout.longKhmerCy,
      _Layout.longKhmerBox,
      40,
      _Layout.longKhmerGlyph,
    );
    b.text(
      province.english,
      _Layout.longEnglishCx,
      _Layout.longEnglishCy,
      _Layout.longKhmerBox,
      22,
      _Layout.longEnglishGlyph,
      color: CambodiaColors.provinceRed,
    );
    b.rules.add(const PlateRule(box: _Layout.longRule));
    return _spec(id, b, height: _Layout.longHeight);
  }

  static PlateSpec _stacked(String id, CambodiaCategory category) {
    final b = _Builder();
    const digits = CambodiaAlphabets.digits;
    const letters = CambodiaAlphabets.letters;
    if (category == CambodiaCategory.diplomatic) {
      const top = _Layout.diplomaticTop, bottom = _Layout.diplomaticBottom;
      b.run('prefix', letters, 2, 130, 83, top);
      b.run('mission', digits, 2, 308, 82, top);
      b.run('serial', digits, 3, 176, 82.5, bottom);
    } else if (category == CambodiaCategory.nonGovernmental) {
      const top = _Layout.ngoTop, bottom = _Layout.ngoBottom;
      b.run('prefix', letters, 3, 132.5, 52.3, top);
      b.run('org', digits, 3, 289.5, 52.3, top);
      b.run('class', digits, 1, 103.4, 75.5, bottom);
      b.run('serial', digits, 3, 256, 75.5, bottom);
      b.text('-', _Layout.ngoDashCx, bottom.cy, 38, bottom.box, bottom.box);
    } else {
      const top = _Layout.motorcycleTop, bottom = _Layout.motorcycleBottom;
      b.run('code', digits, 2, 228.5, 79.5, top);
      b.run('serial', digits, 3, 158, 104, bottom);
    }
    return _spec(id, b);
  }
}
