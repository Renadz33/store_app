import 'package:flutter/material.dart';
import 'package:store_app/models/products.dart';
import 'package:store_app/widget/details_body.dart';

class DetailsScreen extends StatelessWidget {

   final Product products;

  const DetailsScreen({required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFF1EFF1),
        leading: IconButton(
          padding: EdgeInsets.only(left: 20),
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.teal,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: DetailsBody(
           product: products,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.teal,
              Colors.orangeAccent
            ],
          ),
        ),
      ),
    );
  }
}
