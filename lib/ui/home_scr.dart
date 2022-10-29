import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';
import '../utility/app_colors.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<HomeController>(builder: (logic) {
        return Scaffold(
          body: logic.currentScreen,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 5,
            //backgroundColor: Theme.of(context).primaryColor.withAlpha(0),
            selectedItemColor: ColorApp.primaryColor,
            currentIndex: logic.navigatorValue,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: logic.changeSelectedValue,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.waveform_path), label: "Seizure"),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.play_arrow), label: "Setting"),
            ],
          ),
        );
      }),
    );
  }
}
