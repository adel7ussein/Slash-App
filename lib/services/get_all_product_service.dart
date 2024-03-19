import '../helper/api.dart';
import '../models/product_model.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    Map<String, dynamic> map =
        await Api().get(url: 'https://slash-backend.onrender.com/product');

    List<ProductModel> productsList = [];
    for (int i = 0; i < map['data'].length; i++) {
      productsList.add(ProductModel.fromJson(map['data'][i]));
    }
    print(productsList);
    return productsList;
  }
}
