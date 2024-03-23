import 'package:flutter/material.dart';
import 'package:slash_app/models/product_model.dart';
import '../services/get_all_product_service.dart';
import '../widgets/custom_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Slash.",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: FutureBuilder<List<Product>>(
        future: AllProductsService().getAllProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Product> products = snapshot.data!;

            return GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 50, crossAxisSpacing: 10),
              itemBuilder: (BuildContext context, int index) {
                return CustomCard(product: products[index]);
              },
            );
          } else {
            return const Center(
                child: CircularProgressIndicator(
              color: Color(0xFF3D82AE),
            ));
          }
        },
      ),
    );
  }
}
