import 'package:cleaning_service/presentation/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Discount extends StatelessWidget {
  final Color colorStart;
  final Color colorEnd;
  final int discount;
  final String title;
  final String subtitle;
  final String imageUrl;
  final Icon flagIcon;
  final String flagText;
  final Icon? partnerIcon;
  final String? partnerText;
  final double widthImage;
  final double rightPositionImage;

  const Discount({
    Key? key,
    required this.colorStart,
    required this.colorEnd,
    required this.discount,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.flagIcon,
    required this.flagText,
    this.partnerIcon,
    this.partnerText,
    required this.widthImage,
    required this.rightPositionImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            colorStart,
            colorEnd,
          ],
        ),
      ),
      child: RawMaterialButton(
        constraints: const BoxConstraints(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: () {},
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IntrinsicWidth(
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0x55ffffff)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 5, right: 10.0, bottom: 5, left: 10.0),
                          child: Row(
                            children: [
                              flagIcon,
                              const SizedBox(
                                width: 5,
                              ),
                              Text(flagText,
                                  style: const TextStyle(
                                      color: kTextColorWhite1, fontSize: 8)),
                            ],
                          ),
                        )),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(discount.toString() + title,
                              style: const TextStyle(
                                  color: kTextColorWhite1,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      Text(
                        subtitle,
                        style: const TextStyle(
                            color: kTextColorWhite1, fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              width: widthImage,
              right: rightPositionImage,
              bottom: 0.0,
              child: Image.asset(imageUrl),
            ),
            Positioned(
              width: 100,
              right: 40,
              bottom: 0.0,
              child: Transform.scale(
                scale: 1.5,
                child: SvgPicture.asset("assets/images/arrow.svg"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
