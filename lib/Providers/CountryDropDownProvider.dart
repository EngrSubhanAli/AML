import 'package:flutter/foundation.dart';

class CountryDropDownProvider with ChangeNotifier {
  String _CountrySelected = "Select";
  String _BlockCountry = "Select";
  String _BlockNationalities = "Select";
  String _BlockIDCardCountry = "Select";
  String _BlockDrivingLicenceCountry = "Select";
  String _AutoAcceptHighRiskCountry = "Select";
  String _AutoAcceptHighRiskNationalities = "Select";
  String _AutoAcceptMediumRiskCountry = "Select";
  String _AutoAcceptMediumRiskNationalities = "Select";

  String get CountrySelected => _CountrySelected;
  String get BlockCountry => _BlockCountry;
  String get BlockNationalities => _BlockNationalities;
  String get BlockIDCardCountry => _BlockIDCardCountry;
  String get BlockDrivingLicenceCountry => _BlockDrivingLicenceCountry;
  String get AutoAcceptHighRiskCountry => _AutoAcceptHighRiskCountry;
  String get AutoAcceptHighRiskNationalities =>
      _AutoAcceptHighRiskNationalities;
  String get AutoAcceptMediumRiskCountry => _AutoAcceptMediumRiskCountry;
  String get AutoAcceptMediumRiskNationalities =>
      _AutoAcceptMediumRiskNationalities;
  void setValue(String val) {
    _CountrySelected = val;
    notifyListeners();
  }

  void setBlockCountry(val) {
    _BlockCountry = val;
    notifyListeners();
  }

  void setBlockNationalities(val) {
    _BlockNationalities = val;
    notifyListeners();
  }

  void setBlockIDCardCountry(val) {
    _BlockIDCardCountry = val;
    notifyListeners();
  }

  void setBlockDrivingLicenceCountry(val) {
    _BlockDrivingLicenceCountry = val;
    notifyListeners();
  }

  void setAutoAcceptHighRiskCountry(val) {
    _AutoAcceptHighRiskCountry = val;
    notifyListeners();
  }

  void setAutoAcceptHighRiskNationalities(val) {
    _AutoAcceptHighRiskNationalities = val;
    notifyListeners();
  }

  void setAutoAcceptMediumRiskCountry(val) {
    _AutoAcceptMediumRiskCountry = val;
    notifyListeners();
  }

  void setAutoAcceptMediumRiskNationalities(val) {
    _AutoAcceptMediumRiskNationalities = val;
    notifyListeners();
  }
}
