import 'package:flutter/material.dart';

class AppBartest extends StatelessWidget {
  const AppBartest({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('หน้าแรก'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.add_alert),
          // tooltip: 'Show Snackbar',
          onPressed: () {
            Navigator.push(
                context,
                PageRouteBuilder<void>(
                  opaque: false,
                  pageBuilder: (BuildContext context, _, __) {
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text('แจ้งเตือน'),
                      ),
                      body: const Center(
                        child: Text(
                          'ไม่มีการแจ้งเตือน',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    );
                  },
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    const begin = Offset(0.0, 3.0);
                    const end = Offset.zero;
                    const curve = Curves.ease;

                    var tween = Tween(begin: begin, end: end)
                        .chain(CurveTween(curve: curve));

                    return SlideTransition(
                      position: animation.drive(tween),
                      child: child,
                    );
                  },
                ));
          },
        ),
        // IconButton(
        //   icon: const Icon(Icons.navigate_next),
        //   tooltip: 'Go to the next page',
        //   onPressed: () {
        //     Navigator.push(context, MaterialPageRoute<void>(
        //       builder: (BuildContext context) {
        //         return Scaffold(
        //           appBar: AppBar(
        //             title: const Text('Next page'),
        //           ),
        //           body: const Center(
        //             child: Text(
        //               'This is the next page',
        //               style: TextStyle(fontSize: 24),
        //             ),
        //           ),
        //         );
        //       },
        //     ));
        //   },
        // ),
      ],
    );
  }
}
