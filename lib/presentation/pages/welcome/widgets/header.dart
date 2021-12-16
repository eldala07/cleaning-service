import 'package:cleaning_service/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: kDefaultPadding,
          right: 30,
          bottom: kDefaultPadding,
          left: kDefaultPadding),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Welcome',
                style: TextStyle(
                    color: kTextColorBlack1,
                    fontSize: 32,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text('Dimitri Uytterhoeven',
                style: TextStyle(color: kTextColorGrey1, fontSize: 22))
          ],
        ),
        Container(
          height: 70,
          width: 70,
          child: CircleAvatar(
            radius: 18,
            child: ClipOval(child: Image.asset("assets/images/avatar.png")),
          ),
        )
      ]),
    );
  }
}
