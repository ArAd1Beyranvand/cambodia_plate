import 'package:cambodia_plate/cambodia_plate.dart';
import 'package:plate_core/testing.dart';

void main() {
  plateGoldens(
    'kh',
    CambodiaCountry.cambodia,
    <String, PlateGoldenCase>{
      'private': (CambodiaPlates.private, CambodiaThemes.private, '3 A 1851'),
      'private_long': (
        CambodiaPlates.privateLong,
        CambodiaThemes.privateLong,
        '2 AB 3146',
      ),
      'police': (CambodiaPlates.police, CambodiaThemes.police, '1 1077'),
      'diplomatic': (
        CambodiaPlates.diplomatic,
        CambodiaThemes.diplomatic,
        'CD 88 003',
      ),
      'non_governmental': (
        CambodiaPlates.nonGovernmental,
        CambodiaThemes.ngo,
        'ONG 200 2 849',
      ),
      'international_motorcycle': (
        CambodiaPlates.internationalMotorcycle,
        CambodiaThemes.internationalMotorcycle,
        '01 007',
      ),
    },
    fonts: <String>['/usr/share/fonts/truetype/noto/NotoSansKhmer-Bold.ttf'],
  );
}
