import '../helper/api.dart';
import '../models/product_model.dart';

class AllProductsService {
  Future<List<Product>> getAllProducts() async {
    Map<String, dynamic> map =
        await Api().get(url: 'https://slash-backend.onrender.com/product');

    List<Product> productsList = [];
    for (int i = 0; i < map["data"].length; i++) {
      productsList.add(Product.fromJson(map["data"][i]));
    }
    print(productsList[0].name);
    return productsList;
  }
}
