import 'package:cleaning_service/presentation/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  final String title;
  final bool isActive;

  const Filter({Key? key, required this.title, required this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      decoration: BoxDecoration(
          color: isActive ? kPrimaryColor : kPrimaryDarkBackgroundColor,
          borderRadius: BorderRadius.circular(10)),
      child: RawMaterialButton(
        constraints: const BoxConstraints(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: () {},
        child: Container(
          alignment: Alignment.center,
          height: 30.0,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(title,
                style: TextStyle(
                    color: isActive ? kTextColorWhite1 : kPrimaryDarkColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
