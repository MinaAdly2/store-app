import 'package:store_app/helper/api.dart';

class GetAllCategoriesService {
  Future<List<dynamic>> GetAllCategories() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
