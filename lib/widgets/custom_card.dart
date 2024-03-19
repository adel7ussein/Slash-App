import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/product_model.dart';
import 'custom_text.dart';

class CustomCard extends StatelessWidget {
   CustomCard({
    super.key,
    required this.product
  });
  ProductModel product;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      },
      child: Column(
        children: [
          Container(
            height: 120,
            width: 130,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://lh3.googleusercontent.com/hwau7OVWx96XaME5KpRuJ0I_MscrerK6SbRH1UwYHYaxIDQQtn7RZK02LDSfBzCreidFgDsJeXyqDct6EZiH6vsV=w640-h400-e365-rj-sc0x00ffffff"))),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Interns - Wall  \npainting",
                    ),
                    CustomText(text: "/."),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: "EGP1010"),
                    Icon(
                      FontAwesomeIcons.heart,
                      size: 15,
                    ),
                    Icon(
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
