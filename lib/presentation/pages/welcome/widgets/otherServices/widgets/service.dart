import 'package:cleaning_service/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class Service extends StatelessWidget {
  final Icon icon;
  final String title;
  final Color color1;
  final Color color2;

  const Service(
      {Key? key,
      required this.icon,
      required this.title,
      required this.color1,
      required this.color2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Column(
        children: [
          ClipOval(
            child: Container(
                height: 70,
                width: 70,
                margin: const EdgeInsets.only(bottom: 6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: color2,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1.0, 1.0), //(x,y)
                      blurRadius: 2.0,
                    ),
                  ],
                ),
                child: RawMaterialButton(
                  constraints: const BoxConstraints(),
                  onPressed: () {},
                  child: Container(
                    alignment: Alignment.center,
                    child: icon,
                  ),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              width: 105,
              alignment: Alignment.center,
              child: Text(title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: kTextColorBlack1,
                      fontSize: 12,
                      fontWeight: FontWeight.bold)))
        ],
      ),
    );
  }
}
