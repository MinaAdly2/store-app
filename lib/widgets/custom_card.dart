import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/screens/update_product_page.dart';

class CustomCard extends StatelessWidget {
  CustomCard({required this.product, Key? key}) : super(key: key);
  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 50,
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 20,
                offset: Offset(1, 1),
              ),
            ],
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, UpdateProductPage.id,
                  arguments: product);
            },
            child: Card(
              elevation: 10,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$' '${product.price.toString()}',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Icon(
                          Icons.favorite_outlined,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 32,
          top: -70,
          child: Image.network(
            product.image,
            height: 100,
            width: 100,
          ),
        ),
      ],
    );
  }
}
