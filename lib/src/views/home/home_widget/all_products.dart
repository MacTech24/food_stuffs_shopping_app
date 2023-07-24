import 'package:flutter/material.dart';
import 'package:food_stuff_app/src/views/home/home_widget/conduments_and_sauces.dart';
import 'package:food_stuff_app/src/views/home/home_widget/dairy_and_eggs.dart';
import 'package:food_stuff_app/src/views/home/home_widget/fruits_and_vegetables.dart';
import 'package:food_stuff_app/src/views/home/home_widget/grains_and_series.dart';
import 'package:food_stuff_app/src/views/home/home_widget/herbs_and_spices.dart';
import 'package:food_stuff_app/src/views/home/home_widget/meat_and_poultry.dart';
import 'package:food_stuff_app/src/views/home/home_widget/nuts_and_seeds.dart';
import 'package:food_stuff_app/src/views/home/home_widget/oils_and_vinegars.dart';
import 'package:food_stuff_app/src/views/home/home_widget/sweeteners.dart';
import '../../../model/fruits_and_vegetable_model.dart';
import '../../view_all_screen/view_all_fruits_and_vegetable_screen.dart';
import 'products_card.dart';
import 'section_title.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return const SingleChildScrollView(
      child: Column(
        children: [
          // SearchField(),
          Column(
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      FruitsAndVegetables(),
                      //
                      SizedBox(
                        height: 10,
                      ),
                      GrainsAndCereals(),
                      //
                      SizedBox(
                        height: 10,
                      ),
                      MeatAndPoultry(),
                      //
                      SizedBox(
                        height: 10,
                      ),
                      DairyAndEggs(),
                      //
                      SizedBox(
                        height: 10,
                      ),
                      HerbsAndSpices(),
                      //
                      SizedBox(
                        height: 10,
                      ),
                      CondumentsAndSauces(),
                      //
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  OilsAndVinegars(),
                  //
                  SizedBox(
                    height: 10,
                  ),
                  NutsAndSeeds(),
                  //
                  SizedBox(
                    height: 10,
                  ),
                  Sweeteners(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
