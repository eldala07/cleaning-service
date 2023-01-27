import 'package:cleaning_service/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final Icon icon;
  final String title;
  final Color color1;
  final Color color2;
  final Color color3;
  final int index;
  final int numberOfCategories;

  const Category({
    Key? key,
    required this.icon,
    required this.title,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.index,
    required this.numberOfCategories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 125,
        width: 100,
        margin: EdgeInsets.only(
          left: index == 0 ? kDefaultPadding : kDefaultPadding / 2,
          right: index == numberOfCategories - 1 ? kDefaultPadding : 0.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color3,
        ),
        child: RawMaterialButton(
          constraints: const BoxConstraints(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: color2,
                    ),
                    child: icon,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  width: 70,
                  alignment: Alignment.center,
                  child: Text(title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: color1,
                          fontSize: 12,
                          fontWeight: FontWeight.bold)))
            ],
          ),
        ));
  }
}
