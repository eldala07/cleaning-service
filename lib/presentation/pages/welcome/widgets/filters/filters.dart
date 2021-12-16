import 'package:cleaning_service/presentation/pages/welcome/widgets/filters/widgets/filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Filters extends StatelessWidget {
  const Filters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            Filter(title: 'New', isActive: true),
            SizedBox(
              width: 10,
            ),
            Filter(title: 'Trending', isActive: false),
            SizedBox(
              width: 10,
            ),
            Filter(title: 'Popular', isActive: false),
            SizedBox(
              width: 10,
            ),
            Filter(title: 'Top services', isActive: false),
            SizedBox(
              width: 10,
            ),
            Filter(title: 'Most recommended', isActive: false),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
