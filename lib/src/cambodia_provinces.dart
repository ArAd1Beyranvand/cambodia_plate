import 'package:flutter/foundation.dart';

/// A registering province: the two names printed on a private plate.
///
/// Both names are the article's "Name on plate" table. The Khmer one is
/// printed across the top and the English one, in capitals, under the rule.
@immutable
class CambodiaProvince {
  const CambodiaProvince._(this.id, this.name, this.khmer, this.english);

  /// Stable identifier, used in spec ids.
  final String id;

  /// English name as the article spells it.
  final String name;

  /// The Khmer name on the plate.
  final String khmer;

  /// The English name on the plate.
  final String english;

  static const CambodiaProvince banteayMeanchey = CambodiaProvince._(
    'banteay_meanchey',
    'Banteay Meanchey',
    'ប.មានជ័យ',
    'BANTEAY MEANCHEY',
  );

  static const CambodiaProvince battambang = CambodiaProvince._(
    'battambang',
    'Battambang',
    'បាត់ដំបង',
    'BATTAMBANG',
  );

  static const CambodiaProvince kampongCham = CambodiaProvince._(
    'kampong_cham',
    'Kampong Cham',
    'កំពង់ចាម',
    'KAMPONG CHAM',
  );

  static const CambodiaProvince kampongChhnang = CambodiaProvince._(
    'kampong_chhnang',
    'Kampong Chhnang',
    'កំពង់ឆ្នាំង',
    'KAMPONG CHHNANG',
  );

  static const CambodiaProvince kampongSpeu = CambodiaProvince._(
    'kampong_speu',
    'Kampong Speu',
    'កំពង់ស្ពឺ',
    'KAMPONG SPEU',
  );

  static const CambodiaProvince kampongThom = CambodiaProvince._(
    'kampong_thom',
    'Kampong Thom',
    'កំពង់ធំ',
    'KAMPONG THOM',
  );

  static const CambodiaProvince kampot = CambodiaProvince._(
    'kampot',
    'Kampot',
    'កំពត',
    'KAMPOT',
  );

  static const CambodiaProvince kandal = CambodiaProvince._(
    'kandal',
    'Kandal',
    'កណ្ដាល',
    'KANDAL',
  );

  static const CambodiaProvince kep = CambodiaProvince._(
    'kep',
    'Kep',
    'កែប',
    'KEP',
  );

  static const CambodiaProvince kohKong = CambodiaProvince._(
    'koh_kong',
    'Koh Kong',
    'កោះកុង',
    'KOH KONG',
  );

  static const CambodiaProvince kratie = CambodiaProvince._(
    'kratie',
    'Kratie',
    'ក្រចេះ',
    'KRATIE',
  );

  static const CambodiaProvince mondulkiri = CambodiaProvince._(
    'mondulkiri',
    'Mondulkiri',
    'មណ្ឌលគិរី',
    'MONDULKIRI',
  );

  static const CambodiaProvince oddarMeanchey = CambodiaProvince._(
    'oddar_meanchey',
    'Oddar Meanchey',
    'ឧ.មានជ័យ',
    'ODDAR MEANCHEY',
  );

  static const CambodiaProvince pailin = CambodiaProvince._(
    'pailin',
    'Pailin',
    'ប៉ែលិន',
    'PAILIN',
  );

  static const CambodiaProvince phnomPenh = CambodiaProvince._(
    'phnom_penh',
    'Phnom Penh',
    'ភ្នំពេញ',
    'PHNOM PENH',
  );

  static const CambodiaProvince preahVihear = CambodiaProvince._(
    'preah_vihear',
    'Preah Vihear',
    'ព្រះវិហារ',
    'PREAH VIHEAR',
  );

  static const CambodiaProvince preahSihanouk = CambodiaProvince._(
    'preah_sihanouk',
    'Preah Sihanouk',
    'ព្រះសីហនុ',
    'PREAH SIHANOUK',
  );

  static const CambodiaProvince preyVeng = CambodiaProvince._(
    'prey_veng',
    'Prey Veng',
    'ព្រៃវែង',
    'PREY VENG',
  );

  static const CambodiaProvince pursat = CambodiaProvince._(
    'pursat',
    'Pursat',
    'ពោធិ៍សាត់',
    'PURSAT',
  );

  static const CambodiaProvince ratanakiri = CambodiaProvince._(
    'ratanakiri',
    'Ratanakiri',
    'រតនគិរី',
    'RATANAKIRI',
  );

  static const CambodiaProvince siemReap = CambodiaProvince._(
    'siem_reap',
    'Siem Reap',
    'សៀមរាប',
    'SIEM REAP',
  );

  static const CambodiaProvince stungTreng = CambodiaProvince._(
    'stung_treng',
    'Stung Treng',
    'ស្ទឹងត្រែង',
    'STUNG TRENG',
  );

  static const CambodiaProvince svayRieng = CambodiaProvince._(
    'svay_rieng',
    'Svay Rieng',
    'ស្វាយរៀង',
    'SVAY RIENG',
  );

  static const CambodiaProvince takeo = CambodiaProvince._(
    'takeo',
    'Takeo',
    'តាកែវ',
    'TAKEO',
  );

  static const CambodiaProvince tboungKhmum = CambodiaProvince._(
    'tboung_khmum',
    'Tboung Khmum',
    'ត្បូងឃ្មុំ',
    'TBOUNG KHMUM',
  );

  static const List<CambodiaProvince> all = <CambodiaProvince>[
    banteayMeanchey,
    battambang,
    kampongCham,
    kampongChhnang,
    kampongSpeu,
    kampongThom,
    kampot,
    kandal,
    kep,
    kohKong,
    kratie,
    mondulkiri,
    oddarMeanchey,
    pailin,
    phnomPenh,
    preahVihear,
    preahSihanouk,
    preyVeng,
    pursat,
    ratanakiri,
    siemReap,
    stungTreng,
    svayRieng,
    takeo,
    tboungKhmum,
  ];
}
