import 'package:flutter/foundation.dart';

/// Which of the three layouts a category is printed in. Closed: the library
/// owns the layouts; new categories are new [CambodiaCategory] values.
enum CambodiaDesign {
  /// Province name over a class digit, letters and four digits, the English
  /// name under a rule.
  captioned,

  /// The long 14 × 50 cm plate: the names left of the number, not above it.
  long,

  /// Two rows of registers, no province: the diplomatic and international
  /// organisation plates.
  stacked,
}

/// A plate category: its design and the few things that vary within one.
@immutable
class CambodiaCategory {
  const CambodiaCategory._(
    this.id,
    this.name,
    this.design, {
    this.khmer = '',
    this.english = '',
  });

  /// Stable identifier, used in spec ids.
  final String id;

  /// English name, as the article gives it.
  final String name;

  final CambodiaDesign design;

  /// Fixed captions that replace the province's names, as on the police
  /// plate. Empty for the plates that print their province.
  final String khmer, english;

  /// Whether the plate prints the province it is registered in.
  bool get hasProvince => khmer.isEmpty && design != CambodiaDesign.stacked;

  static const CambodiaCategory private = CambodiaCategory._(
    'private',
    'Private',
    CambodiaDesign.captioned,
  );
  static const CambodiaCategory privateLong = CambodiaCategory._(
    'private_long',
    'Private (long plate)',
    CambodiaDesign.long,
  );
  static const CambodiaCategory police = CambodiaCategory._(
    'police',
    'Police',
    CambodiaDesign.captioned,
    khmer: 'នគរបាល',
    english: 'POLICE',
  );
  static const CambodiaCategory diplomatic = CambodiaCategory._(
    'diplomatic',
    'Corps diplomatique',
    CambodiaDesign.stacked,
  );
  static const CambodiaCategory nonGovernmental = CambodiaCategory._(
    'non_governmental',
    'Non-governmental international organisation',
    CambodiaDesign.stacked,
  );
  static const CambodiaCategory internationalMotorcycle = CambodiaCategory._(
    'international_motorcycle',
    'International organisation motorcycle',
    CambodiaDesign.stacked,
  );

  static const List<CambodiaCategory> values = <CambodiaCategory>[
    private,
    privateLong,
    police,
    diplomatic,
    nonGovernmental,
    internationalMotorcycle,
  ];
}
