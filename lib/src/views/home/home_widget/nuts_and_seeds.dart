import 'package:flutter/material.dart';
import 'package:food_stuff_app/src/views/home/home_widget/products_card.dart';
import 'package:food_stuff_app/src/views/home/home_widget/section_title.dart';

import '../../../model/fruits_and_vegetable_model.dart';
import '../../view_all_screen/view_all_nuts_and_seeds_screen.dart';

class NutsAndSeeds extends StatelessWidget {
  const NutsAndSeeds({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SectionTitle(
          title: "Nuts and Seeds",
          onTap: () {
            final route = MaterialPageRoute(
                builder: (context) => ViewAllNutsAndSeedsScreen());
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
