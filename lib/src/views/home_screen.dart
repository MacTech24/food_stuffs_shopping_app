import 'package:flutter/material.dart';
import 'package:food_stuff_app/src/views/home/home_widget/grains_and_series.dart';
import 'package:food_stuff_app/src/views/home/home_widget/home_slider.dart';
import 'package:provider/provider.dart';
import '../constants/colors.dart';
import '../controller/tab_provider.dart';
import 'home/home_widget/all_products.dart';
import 'home/home_widget/conduments_and_sauces.dart';
import 'home/home_widget/dairy_and_eggs.dart';
import 'home/home_widget/fruits_and_vegetables.dart';
import 'home/home_widget/herbs_and_spices.dart';
import 'home/home_widget/meat_and_poultry.dart';
import 'home/home_widget/nuts_and_seeds.dart';
import 'home/home_widget/oils_and_vinegars.dart';
import 'home/home_widget/sweeteners.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> tabList = [
    "All",
    "Fruits and Vegetable",
    "Grains and Cereals",
    "Meat and Poultry",
    "Dairy and Eggs",
    "Herbs and Spices",
    "Conduments and Sauces",
    "Oils and Vinegars",
    "Nuts and Seeds",
    "Sweateners",
  ];

  List<Widget> myWidgets = const [
    AllProducts(),
    FruitsAndVegetables(),
    GrainsAndCereals(),
    MeatAndPoultry(),
    DairyAndEggs(),
    HerbsAndSpices(),
    CondumentsAndSauces(),
    OilsAndVinegars(),
    NutsAndSeeds(),
    Sweeteners(),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: HomeSlider(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Consumer<TabProvider>(builder: (context, tabProvider, child) {
              return Container(
                height: 35,
                width: size.width,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: tabList.length,
                    itemBuilder: (context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: InkWell(
                          onTap: () {
                            tabProvider.currentIndex = index;
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Center(
                              child: Text(
                                tabList[index],
                                style: TextStyle(
                                    color: tabProvider.currentIndex == index
                                        ? Colors.white
                                        : darkGreen,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: tabProvider.currentIndex == index
                                  ? darkGreen
                                  : Colors.transparent,
                            ),
                          ),
                        ),
                      );
                    }),
              );
            }),
          ),
          Expanded(child:
              Consumer<TabProvider>(builder: (context, tabProvider, child) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  myWidgets[tabProvider.currentIndex],
                ],
              ),
            );
          }))
        ],
      ),
    );
  }
}

class Foods extends StatelessWidget {
  const Foods({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          height: 200,
          width: 300,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.black,
          height: 200,
          width: 300,
        ),
      ],
    );
  }
}
