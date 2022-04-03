import 'package:flutter/material.dart';
import 'package:store_app/models/products.dart';

class DetailsBody extends StatelessWidget {

  final Product product;
  const DetailsBody({required this.product});


  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 30),
            decoration: const BoxDecoration(
              color: Color(0xFFF1EFF1),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ProductImage(
                      size: size,
                      image : product.image,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ColorDot(
                        filColor: Colors.black54,
                        isSelect: true,
                      ),
                      ColorDot(
                        filColor: Colors.blue,
                        isSelect: false,
                      ),
                      ColorDot(
                        filColor: Colors.red,
                        isSelect: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    product.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Text(
                  product.price,
                  style: TextStyle(
                   fontSize:24,
                    fontWeight: FontWeight.w600,
                    color: Colors.orangeAccent,
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Text(
              product.description,
              style: TextStyle(color: Colors.white, fontSize: 19),
            ),
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({

    required this.filColor,
    this.isSelect = false,
    Key? key,
  }) : super(key: key);

  final Color filColor;
  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20 / 2.5),
      padding: EdgeInsets.all(3.0),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: isSelect? Colors.black38 : Colors.transparent),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: filColor,
        ),
      ),
    );
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key? key,
    required this.size,
    required this.image,

  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: size.width *0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width*0.7,
            width: size.width* 0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            height: size.width *0.75,
            width: size.width *0.75,

          ),
        ],
      ),
    );
  }
}
