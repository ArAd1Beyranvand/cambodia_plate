import 'package:flutter/foundation.dart';

/// The layout a category is printed in. Closed: new categories are new
/// [CambodiaCategory] values.
enum CambodiaDesign { captioned, long, stacked }

/// A plate category: its design and what varies within one.
@immutable
class CambodiaCategory {
  const CambodiaCategory._(
    this.id,
    this.name,
    this.design, {
    this.khmer = '',
    this.english = '',
  });

  final String id;

  final String name;

  final CambodiaDesign design;

  /// Fixed captions replacing the province's names. Empty when the plate
  /// prints its province.
  final String khmer, english;

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
