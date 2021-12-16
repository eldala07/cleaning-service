import 'package:cleaning_service/presentation/pages/welcome/widgets/discounts/widgets/discount.dart';
import 'package:cleaning_service/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class Discounts extends StatelessWidget {
  const Discounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kDefaultPadding),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            Discount(
              colorStart: Color(0xffE04F75),
              colorEnd: Color(0xffF76990),
              discount: 30,
              title: "% OFF",
              subtitle: "On First Cleaning Service",
              imageUrl: "assets/images/cleaning_wife_1.png",
              flagIcon: Icon(
                Icons.flash_on,
                size: 12,
                color: kTextColorWhite1,
              ),
              flagText: "Limited Offer",
              partnerIcon: null,
              partnerText: null,
              widthImage: 80.0,
              rightPositionImage: 10.0,
            ),
            SizedBox(
              width: 10,
            ),
            Discount(
              colorStart: Color(0xffAA40E2),
              colorEnd: Color(0xffC686E8),
              discount: 12,
              title: "% OFF",
              subtitle: "Online Payment",
              imageUrl: "assets/images/online_payment_1.png",
              flagIcon: Icon(
                Icons.credit_card,
                size: 12,
                color: kTextColorWhite1,
              ),
              flagText: "Special Offer",
              partnerIcon: Icon(Icons.home),
              partnerText: "Shifty",
              widthImage: 100.0,
              rightPositionImage: 10.0,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
