import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:store_app/models/products.dart';
import 'package:store_app/screens/details_screen.dart';
import 'package:store_app/widget/product_card.dart';


class HomeBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 70),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),

                ListView.separated(
                  itemBuilder: (context, index) =>ProductCard(
                    itemIndex: index,
                    products: products[index],
                    press: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                products: products[index],
                              ),
                          ),
                      );
                    },
                  ),
                  separatorBuilder: (context, index) =>SizedBox(height: 7,),
                  itemCount: products.length,

                ),
              ],
              ),
            ),
          ],
        ),
    );
  }
}



