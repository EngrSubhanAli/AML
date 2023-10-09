import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

var formatter = new DateFormat('dd-MM-yyyy');
DateTime now = DateTime.now();

class CalenderProvider with ChangeNotifier {
  DateTime? _AccountingFromSelectedDate;
  DateTime? _AccountingToSelectedDate;
  DateTime? _KpiToSelectedDate;
  DateTime? _KpiFromSelectedDate;
  DateTime? _ScreeningToSelectedDate;
  DateTime? _ScreeningFromSelectedDate;

  DateTime? get AccountingFromSelectedDate => _AccountingFromSelectedDate;
  DateTime? get AccountingToSelectedDate => _AccountingToSelectedDate;
  DateTime? get KpiFromSelectedDate => _KpiFromSelectedDate;
  DateTime? get KpiToSelectedDate => _KpiToSelectedDate;
  DateTime? get ScreeningFromSelectedDate => _ScreeningFromSelectedDate;
  DateTime? get ScreeningToSelectedDate => _ScreeningToSelectedDate;

  void setAccountingFromSelectedDate(DateTime val) {
    _AccountingFromSelectedDate = val;
    notifyListeners();
  }

  void setAccountingToSelectedDate(DateTime val) {
    _AccountingToSelectedDate = val;
    notifyListeners();
  }

  void setKpiFromSelectedDate(DateTime val) {
    _KpiFromSelectedDate = val;
    notifyListeners();
  }

  void setKpiToSelectedDate(DateTime val) {
    _KpiToSelectedDate = val;
    notifyListeners();
  }

  void setScreeningFromSelectedDate(DateTime val) {
    _ScreeningFromSelectedDate = val;
    notifyListeners();
  }

  void setScreeningToSelectedDate(DateTime val) {
    _ScreeningToSelectedDate = val;
    notifyListeners();
  }
}
