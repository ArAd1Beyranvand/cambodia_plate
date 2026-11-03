import 'package:flutter/widgets.dart';
import 'package:plate_core/plate_core.dart';
import 'package:cambodia_plate/cambodia_plate.dart';

void main() => runApp(
  PlateExampleApp(spec: CambodiaPlates.private, theme: CambodiaThemes.private),
);
