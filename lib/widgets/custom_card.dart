import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slash_app/screens/details_screen.dart';
import '../models/product_model.dart';
import 'custom_text.dart';

class CustomCard extends StatelessWidget {
  CustomCard({super.key, required this.product});
  Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(DetailsScreen.id,arguments: product);
      },
      child: Column(
        children: [
          Expanded(
            child: Container(
              height: 120,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          product.productVariations![0].productVarientImages![0]
                              .imagePath,
                          scale: 10))),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: product.name.substring(0, 6),
                    ),
                    const CustomText(text: "/."),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: "EGP${product.productVariations?[0].price}"),
                    const Icon(
                      FontAwesomeIcons.heart,
                      size: 15,
                    ),
                    const Icon(
                      FontAwesomeIcons.cartShopping,
                      size: 15,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
