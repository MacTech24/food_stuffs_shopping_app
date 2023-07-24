import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.1,
      color: darkGreen,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: bgColor,
            border: Border.all(
              color: darkGreen,
            ),
          ),
          child: const TextField(
            decoration: InputDecoration(
                hintText: "Search Items...",
                prefixIcon: Icon(
                  Icons.search,
                  color: grey,
                  size: 30,
                ),
                border: InputBorder.none),
          ),
        ),
      ),
    );
  }
}
