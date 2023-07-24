import 'package:flutter/material.dart';
import 'package:food_stuff_app/src/constants/colors.dart';
import 'package:food_stuff_app/src/model/fruits_and_vegetable_model.dart';
import 'package:food_stuff_app/src/views/home/home_widget/products_card.dart';
import 'package:food_stuff_app/src/views/home/home_widget/search_field.dart';

class ViewAllNutsAndSeedsScreen extends StatelessWidget {
  ViewAllNutsAndSeedsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkGreen,
        elevation: 0,
        centerTitle: true,
        title: Text("Nuts and Seeds"),
      ),
      body: Column(
        children: [
          Container(
            width: size.width,
            height: size.height * 0.1,
            color: darkGreen,
            child: const SearchField(),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.builder(
                physics: BouncingScrollPhysics(),
                itemCount:
                    FruitsAndVegetablesModel.fruitsAndVegetablesList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.9,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ProductsCard(index: index),
                  );
                }),
          )
        ],
      ),
    );
  }
}
