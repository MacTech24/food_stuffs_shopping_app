import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/images.dart';
import '../../../constants/string_text.dart';
import '../../../model/fruits_and_vegetable_model.dart';

class ProductsCard extends StatelessWidget {
  ProductsCard({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    final products = FruitsAndVegetablesModel.fruitsAndVegetablesList[index];
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: size.height * 0.57,
          width: size.width * 0.4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: white,
              boxShadow: const []),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 3,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(products.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Positioned(
                          right: 10,
                          top: 5,
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ))
                    ],
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            products.name,
                            style: style3(black, 16, FontWeight.bold, 0),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Row(
                        children: [
                          Text(
                            "N" + products.price.toString(),
                            style: style3(Colors.red, 16, FontWeight.bold, 0),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              height: 25,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: darkGreen,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      "/${products.measurement}",
                                      style:
                                          style3(grey, 12, FontWeight.bold, 0),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Expanded(
                                      child: Image.asset(
                                        dropDownIcon,
                                        width: 14,
                                        color: grey,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
