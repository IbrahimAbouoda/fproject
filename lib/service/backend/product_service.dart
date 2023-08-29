import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

import '../../models/product_model.dart';

class ProductService extends ChangeNotifier{

  static var productUrl = 'https://shop-smart.phoniexcode.com/api/products';


  Future<List<ProductModel>> getProducts() async {
      http.Response response = await http.get(Uri.parse(productUrl));


    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body)['data'];
      notifyListeners();
      return data.map((json) => ProductModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');

    }

  }


   Future<void> postProduct(ProductModel product) async {

    final Map<String, dynamic> productData = {
      'name': product.name,
      'price': product.price,
      'size': product.size,
      'status': product.status,
      'type': product.type,
      'notes': product.notes,
      'quantity': product.quantity,
      'manufacturer_company': product.manufacturerCompany,
      'image_url': product.imageUrl,
      // Include other product properties here
    };

    final response = await http.post(
      Uri.parse(productUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(productData),
    );

    if (response.statusCode == 201) {
      print('Product posted successfully');
    } else {
      print('Failed to post product. Status code: ${response.statusCode}');
      print('Response body: ${response.body}');
    }
  }



  Future<void> deleteProduct(int productId) async {
    final response =
    await http.delete(Uri.parse('$productUrl/$productId'));
    if (response.statusCode != 200) {
      throw Exception('Failed to delete product');
    }
notifyListeners();

  }
}
