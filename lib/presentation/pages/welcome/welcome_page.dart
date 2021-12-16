import 'package:cleaning_service/presentation/pages/welcome/widgets/categories/categories.dart';
import 'package:cleaning_service/presentation/pages/welcome/widgets/discounts/discounts.dart';
import 'package:cleaning_service/presentation/pages/welcome/widgets/filters/filters.dart';
import 'package:cleaning_service/presentation/pages/welcome/widgets/header.dart';
import 'package:cleaning_service/presentation/pages/welcome/widgets/otherServices/other_services.dart';
import 'package:cleaning_service/presentation/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 20.0),
          child: Column(
            children: [
              SizedBox(height: kDefaultPadding),
              Header(),
              SizedBox(height: kDefaultPadding),
              Filters(),
              SizedBox(height: kDefaultPadding),
              Discounts(),
              SizedBox(height: kDefaultPadding),
              Categories(),
              SizedBox(height: kDefaultPadding),
              OtherServices(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
      ]),
    );
  }
}
