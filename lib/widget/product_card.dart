import 'package:flutter/material.dart';
import 'package:store_app/models/products.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.itemIndex,
    required this.products,
    required this.press,
});
   final int itemIndex;
   final Product products;
   final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(

      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      height: 190.0,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 160.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,15),
                    blurRadius: 25,
                    color: Colors.black26,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 150,
                width: 200,
                child: Image.asset(products.image),
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: SizedBox(
                height: 130,
                // our image 200 , so here width-200
                width: size.width-200,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        products.title,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        products.subTitle,
                        style: Theme.of(context).textTheme.caption,

                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Text(
                        products.price,
                      ),

                    ),
                  ],
                ),
              ),),
          ],
        ),
      ),
    );
  }
}

