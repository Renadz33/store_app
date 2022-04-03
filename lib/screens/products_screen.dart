import 'package:flutter/material.dart';
import 'package:store_app/widget/home_body.dart';


class ProductsScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Welcome to electronics store',
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.menu,
              ),
          ),
        ],
      ),
      body: Container(
        child: HomeBody(),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.teal,
              Colors.orangeAccent,
            ],
          ),
        ),
      ),
    );
  }
}
