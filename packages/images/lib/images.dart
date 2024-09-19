library images;

import 'package:flutter/material.dart';

enum ImageType {
  apple,
  banana,
}

class FlavorImage extends StatelessWidget {
  final ImageType type;

  const FlavorImage({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      switch (type) {
        null => throw UnimplementedError(),
        ImageType.apple => 'assets/apple.jpg',
        ImageType.banana => 'assets/banana.webp',
      },
      package: 'images',
    );
  }
}
