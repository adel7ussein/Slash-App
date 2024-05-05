import 'package:flutter/material.dart';

import '../models/product_model.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      scrollDirection: Axis.vertical,
      child: Column(children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
          height: MediaQuery.sizeOf(context).height * .4,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      product.productVariations![0].productVarientImages![0]
                          .imagePath,
                      scale: 10))),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(3.0),
                height: 50,
                width: 50, // Add padding to adjust the border distance
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors
                          .lightGreenAccent, // Change the color of the border
                      width: 1.5, // Change the width of the border
                    ),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          product.productVariations![0]
                              .productVarientImages![0].imagePath,
                        )) // Add border radius if needed
                ),
              ),
              Container(
                margin: const EdgeInsets.all(3.0),

                padding: const EdgeInsets.all(10.0),
                height: 50,
                width: 50, // Add padding to adjust the border distance
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors
                          .transparent, // Change the color of the border
                      width: 1.5, // Change the width of the border
                    ),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          product.productVariations![0]
                              .productVarientImages![1].imagePath,
                        )) // Add border radius if needed
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Align(
          alignment: Alignment.center,
          child: Text(
            'Hijab light                                     /.',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'EGP ${product.productVariations![0].price}                                                    Interns',
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Select Color",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),

        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 3),
              width: 25,
              height: 22,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2.5,
                  ),
                  color: Colors.grey,
                  shape: BoxShape.circle),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 3),
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                  color: Colors.lightBlue, shape: BoxShape.circle),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 3),
              width: 18,
              height: 18,
              decoration: const BoxDecoration(
                  color: Colors.lightGreenAccent, shape: BoxShape.circle),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),

        Container(
          margin: const EdgeInsets.symmetric(horizontal: 6),
          padding: const EdgeInsets.only(left: 8, top: 10, bottom: 10),
          decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 210,
              ),
              Icon(
                Icons.arrow_drop_up_sharp,
                size: 30,
                color: Colors.white,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        )

        //In each button onPressed/onTap
      ]),
    );
  }
}
