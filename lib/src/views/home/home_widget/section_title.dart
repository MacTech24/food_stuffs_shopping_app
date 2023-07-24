// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/string_text.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const SectionTitle({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: style3(black, 18, FontWeight.bold, 0),
        ),
        InkWell(
          onTap: onTap,
          child: Row(
            children: [
              Text(
                "View All",
                style: style3(black, 14, FontWeight.bold, 0),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: black,
                size: 15,
              )
            ],
          ),
        ),
      ],
    );
  }
}
