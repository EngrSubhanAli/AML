import 'package:flutter/foundation.dart';

class AppBarProvider extends ChangeNotifier {
  int AppBarItemIndex = 2;

  int get getAppBarItemIndex => AppBarItemIndex;

  setAppBarIndex(int val) {
    AppBarItemIndex = val;
    notifyListeners();
  }
}
