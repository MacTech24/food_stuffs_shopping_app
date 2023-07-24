import 'package:flutter/material.dart';
import 'package:food_stuff_app/src/views/home/home_widget/products_card.dart';
import 'package:food_stuff_app/src/views/home/home_widget/section_title.dart';

import '../../../model/fruits_and_vegetable_model.dart';
import '../../view_all_screen/view_all_dairy_and_eggs_screen.dart';

class DairyAndEggs extends StatelessWidget {
  const DairyAndEggs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SectionTitle(
          title: "Dairy and Eggs",
          onTap: () {
            final route = MaterialPageRoute(
                builder: (context) => ViewAllDairyAndEggsScreen());
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
