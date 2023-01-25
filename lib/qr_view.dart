import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrView extends StatelessWidget {
  final String textQR;
  const QrView({Key? key, required this.textQR}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR View'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QrImage(
              data: textQR,
              version: QrVersions.auto,
              size: 320,
              gapless: false,
            ),
            const SizedBox(height: 4,),
            Text(textQR),
          ],
        ),
      ),
    );
  }
}
