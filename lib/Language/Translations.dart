import 'package:get/get.dart';

import 'en_US.dart';
import 'th_TH.dart';

class translations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUS,
        'th_TH': thTH,
      };
}
