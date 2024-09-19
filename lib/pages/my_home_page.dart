import 'package:flutter/material.dart';
import 'package:images/images.dart';
import '../flavors.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(F.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Hello ${F.title}',
            ),
            FlavorImage(
              type: switch (F.appFlavor) {
                null => throw UnimplementedError(),
                Flavor.apple => ImageType.apple,
                Flavor.banana => ImageType.banana,
              },
            ),
            // Image.asset(
            //   switch (F.appFlavor) {
            //     null => throw UnimplementedError(),
            //     Flavor.apple => 'assets/apple.jpg',
            //     Flavor.banana => 'assets/banana.webp',
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
