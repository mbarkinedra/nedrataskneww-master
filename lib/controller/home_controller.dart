import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nedrataskneww/ui/home_taps/home_tap1.dart';

import '../ui/home_taps/seizure_tap2.dart';
import '../ui/home_taps/setting_tap3.dart';

class HomeController extends GetxController {
  int _navigatorValue = 0;
  String _currentPage = 'Page1';
  late var _navigatorKey;

  List<String> _pageKeys = ['Page1', 'Page2', 'Page3'];

  get navigatorValue => _navigatorValue;

  get currentPage => _currentPage;

  get navigatorKey => _navigatorKey;

  get navigatorKeys => _navigatorKeys;

  get pageKeys => _pageKeys;
  static final Map<String, GlobalKey<NavigatorState>> _navigatorKeys = {
    'Page1': GlobalKey<NavigatorState>(),
    'Page2': GlobalKey<NavigatorState>(),
    'Page3': GlobalKey<NavigatorState>(),
  };

  Widget currentScreen = Container();

  @override
  void onInit() {
    super.onInit();
    currentScreen = PageToView(
      naigatorKey: _navigatorKeys[_pageKeys[0]]!,
      tabItem: _pageKeys[0],
    ); //=HomeView();
  }

  changeSelectedValue(int selectedValue) {
    _navigatorValue = selectedValue;
    _currentPage = _pageKeys[selectedValue];
    _navigatorKey = _navigatorKeys[_currentPage];

    currentScreen = PageToView(
      naigatorKey: _navigatorKey,
      tabItem: _currentPage,
    );

    update();
  }

  Widget buildoffstageNavigator(String tabItem) {
    return Offstage(
      offstage: _currentPage != tabItem,
      child: PageToView(
        naigatorKey: _navigatorKeys[tabItem]!,
        tabItem: tabItem,
      ),
    );
  }
}

class PageToView extends StatelessWidget {
  late GlobalKey<NavigatorState> naigatorKey;
  late String tabItem;

  PageToView({required this.naigatorKey, required this.tabItem});

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = Container();

    switch (tabItem) {
      case 'Page1':
        {
          currentScreen = HomeTap();

          break;
        }
      case 'Page2':
        {
          currentScreen = SeizureTap2();

          break;
        }
      case 'Page3':
        {
          currentScreen = SettingTap3();
          break;
        }
    }

    return Navigator(
      key: naigatorKey,
      onGenerateRoute: (routeStings) {
        return MaterialPageRoute(builder: (context) => currentScreen);
      },
    );
  }
}
