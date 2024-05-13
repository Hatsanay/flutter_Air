import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SetLanguage extends StatelessWidget {
  const SetLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            'language'.tr,
          ),
          Container(
            margin: const EdgeInsets.only(left: 24),
            child: DropdownButton<String>(
              value: Get.locale!.languageCode,
              items: const [
                DropdownMenuItem(
                  value: 'en',
                  child: Text('English'),
                ),
                DropdownMenuItem(
                  value: 'th',
                  child: Text('ไทย'),
                ),
              ],
              onChanged: (String? value) {
                if (value != null) {
                  Get.updateLocale(Locale(value));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
