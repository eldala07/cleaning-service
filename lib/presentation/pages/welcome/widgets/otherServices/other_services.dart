import 'package:cleaning_service/presentation/pages/welcome/widgets/otherServices/widgets/service.dart';
import 'package:cleaning_service/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class OtherServices extends StatelessWidget {
  const OtherServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: kDefaultPadding),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Other Services",
            style: TextStyle(
                color: kTextColorBlack1,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                Service(
                  icon: Icon(
                    Icons.store,
                    size: 22,
                    color: Color(0xff76D1F3),
                  ),
                  title: "Cleaning",
                  color1: Color(0xff76D1F3),
                  color2: Color(0xffE7F8FD),
                ),
                SizedBox(
                  width: 10,
                ),
                Service(
                  icon: Icon(
                    Icons.car_rental,
                    size: 22,
                    color: Color(0xff4EB37B),
                  ),
                  title: "Painting",
                  color1: Color(0xff4EB37B),
                  color2: Color(0xffE6FBEE),
                ),
                SizedBox(
                  width: 10,
                ),
                Service(
                  icon: Icon(
                    Icons.domain,
                    size: 22,
                    color: Color(0xffF49453),
                  ),
                  title: "Vehicle",
                  color1: Color(0xffF49453),
                  color2: Color(0xffFDF1EA),
                ),
                SizedBox(
                  width: 10,
                ),
                Service(
                  icon: Icon(
                    Icons.home,
                    size: 22,
                    color: Color(0xffEC6C6B),
                  ),
                  title: "Labour Services",
                  color1: Color(0xffEC6C6B),
                  color2: Color(0xffFCE9EB),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
