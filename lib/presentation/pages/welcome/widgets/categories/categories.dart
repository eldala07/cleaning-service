import 'package:cleaning_service/presentation/pages/welcome/widgets/categories/widgets/category.dart';
import 'package:cleaning_service/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

const categories = [
  {
    "icon": Icon(
      Icons.store,
      size: 22,
      color: Color(0xff76D1F3),
    ),
    "title": "Commercial Shifting",
    "color1": Color(0xff76D1F3),
    "color2": Color(0xffCAEFFA),
    "color3": Color(0xffE7F8FD),
  },
  {
    "icon": Icon(
      Icons.car_rental,
      size: 22,
      color: Color(0xff4EB37B),
    ),
    "title": "Car and vehicles",
    "color1": Color(0xff4EB37B),
    "color2": Color(0xffBFEFD2),
    "color3": Color(0xffE6FBEE),
  },
  {
    "icon": Icon(
      Icons.domain,
      size: 22,
      color: Color(0xffF49453),
    ),
    "title": "Office Shifting",
    "color1": Color(0xffF49453),
    "color2": Color(0xffFDDAC0),
    "color3": Color(0xffFDF1EA),
  },
  {
    "icon": Icon(
      Icons.home,
      size: 22,
      color: Color(0xffEC6C6B),
    ),
    "title": "Home Shifting",
    "color1": Color(0xffEC6C6B),
    "color2": Color(0xffF9C3C5),
    "color3": Color(0xffFCE9EB),
  },
];

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: const EdgeInsets.only(left: kDefaultPadding),
          child: const Text(
            "All Category",
            style: TextStyle(
                color: kTextColorBlack1,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 125,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return Category(
                  icon: categories[index]["icon"] as Icon,
                  title: categories[index]["title"] as String,
                  color1: categories[index]["color1"] as Color,
                  color2: categories[index]["color2"] as Color,
                  color3: categories[index]["color3"] as Color,
                  index: index,
                  numberOfCategories: categories.length,
                );
              }),
        )
      ]),
    );
  }
}
