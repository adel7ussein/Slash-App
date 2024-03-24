import '../helper/api.dart';
import '../models/product_model.dart';

class AllProductsService {
  Future<List<Product>> getAllProducts() async {
    Map<String, dynamic> map =
        await Api().get(url: 'https://slash-backend.onrender.com/product?limit=40&page=1');

    List<Product> productsList = [];
    for (int i = 0; i < map["data"].length; i++) {
      productsList.add(Product.fromJson(map["data"][i]));
    }
    return productsList;
  }
}
