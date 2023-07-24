import 'package:flutter/material.dart';
import 'package:food_stuff_app/src/views/home/home_widget/products_card.dart';
import 'package:food_stuff_app/src/views/home/home_widget/section_title.dart';

import '../../../model/fruits_and_vegetable_model.dart';
import '../../view_all_screen/view_all_sweeteners.dart';

class Sweeteners extends StatelessWidget {
  const Sweeteners({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SectionTitle(
          title: "Sweeteners",
          onTap: () {
            final route = MaterialPageRoute(
                builder: (context) => ViewAllSweetenersScreen());
            Navigator.push(context, route);
          },
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: size.height * 0.25,
          width: size.width,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: FruitsAndVegetablesModel.fruitsAndVegetablesList.length,
            itemBuilder: (context, index) {
              return ProductsCard(index: index);
            },
          ),
        ),
      ],
    );
  }
}
