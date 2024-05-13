import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/SetLanguage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'profile'.tr,
            ),
            const SizedBox(height: 20),
            const SetLanguage(),
          ],
        ),
      ),
    );
  }
}
