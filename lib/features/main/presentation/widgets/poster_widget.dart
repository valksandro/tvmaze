import 'package:flutter/material.dart';

class Poster extends StatelessWidget {
  final String image;

  const Poster(this.image, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      child: image.isEmpty
          ? Image.asset('assets/images/no-image.png')
          : Image.network(image),
    );
  }
}
