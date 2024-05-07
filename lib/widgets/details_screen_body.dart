import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_app/cubits/details_cubit/details_state.dart';

import '../cubits/details_cubit/details_cubit.dart';
import '../models/product_model.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    List listOfColors = [0, 1, 2];

    return BlocConsumer<DetailsCubit, DetailsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
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
                InkWell(
                  onTap: () {
                    BlocProvider.of<DetailsCubit>(context)
                        .changeSelectedBorder(currentIndex: listOfColors[0]);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                        border: BlocProvider.of<DetailsCubit>(context)
                                    .selectedIndex ==
                                listOfColors[0]
                            ? Border.all(
                                color: Colors.white,
                                width: 2.5,
                              )
                            : null,
                        color: Colors.grey,
                        shape: BoxShape.circle),
                  ),
                ),
                InkWell(
                  onTap: () {
                    BlocProvider.of<DetailsCubit>(context)
                        .changeSelectedBorder(currentIndex: listOfColors[1]);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    width: 22,
                    height: 22,
                    decoration:  BoxDecoration(
                        color: Colors.lightBlue, shape: BoxShape.circle,
                      border: BlocProvider.of<DetailsCubit>(context)
                          .selectedIndex ==
                          listOfColors[1]
                          ? Border.all(
                        color: Colors.white,
                        width: 2.5,
                      )
                          : null,),
                  ),
                ),
                InkWell(
                  onTap: () {
                    BlocProvider.of<DetailsCubit>(context)
                        .changeSelectedBorder(currentIndex: listOfColors[2]);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    width: 22,
                    height: 22,
                    decoration:  BoxDecoration(
                        color: Colors.lightGreenAccent, shape: BoxShape.circle,
                      border: BlocProvider.of<DetailsCubit>(context)
                          .selectedIndex ==
                          listOfColors[2]
                          ? Border.all(
                        color: Colors.white,
                        width: 2.5,
                      )
                          : null,),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),

            Container(
              height:
                  BlocProvider.of<DetailsCubit>(context).description ? 60 : 120,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              padding:
                  const EdgeInsets.symmetric(horizontal: 14, vertical: 8.0),
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  border: BlocProvider.of<DetailsCubit>(context).description
                      ? null
                      : const Border.symmetric(
                          horizontal:
                              BorderSide(color: Colors.white70, width: 1.5)),
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          BlocProvider.of<DetailsCubit>(context)
                              .displayDescription();
                        },
                        child: Icon(
                          BlocProvider.of<DetailsCubit>(context).description
                              ? Icons.arrow_drop_up_sharp
                              : Icons.arrow_drop_down_sharp,
                          size: 40,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Center(
                      child: BlocProvider.of<DetailsCubit>(context).description
                          ? null
                          : const Text(
                              "100% cotton Treated against piling & Shrinkage for men & women Comfortable & Practical",
                              maxLines: 3,
                            )),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            )

            //In each button onPressed/onTap
          ]),
        );
      },
    );
  }
}
