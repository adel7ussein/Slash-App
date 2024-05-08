import 'package:flutter/material.dart';

class CustomDetailsImage extends StatelessWidget {
   CustomDetailsImage({
    super.key,
    required this.imagePath,
  });

   String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      height: MediaQuery.sizeOf(context).height * .4,
      width: MediaQuery.sizeOf(context).width * .7,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(imagePath,
                  scale: 10))),
    );
  }
}
