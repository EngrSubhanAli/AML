import 'package:flutter/foundation.dart';

class RadioSwitchButtonProvider with ChangeNotifier {
  int _defaultScreeningCostValue = 0;

  int get defaultScreeningCostValue => _defaultScreeningCostValue;

  setValue(int val, bool trueOrFalse) {
    if (trueOrFalse == true) {
      _defaultScreeningCostValue = _defaultScreeningCostValue + val;
    } else {
      _defaultScreeningCostValue = _defaultScreeningCostValue - val;
    }
    // _defaultScreeningCostValue = val;
    notifyListeners();
  }
}
