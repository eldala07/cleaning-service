import 'package:cleaning_service/presentation/pages/welcome/widgets/categories.dart';
import 'package:cleaning_service/presentation/pages/welcome/widgets/filters.dart';
import 'package:cleaning_service/presentation/pages/welcome/widgets/header.dart';
import 'package:cleaning_service/presentation/pages/welcome/widgets/other_services.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Filters(),
          Categories(),
          OtherServices(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home)),
      ]),
    );
  }
}
