class AppUrls {
  //this is base url
  static const String baseUrl = 'http://localhost:9000/company/';

  //fetch world Covid States
  static const String Register = baseUrl + 'register';
  static const String Login = baseUrl + 'login';
  static const String Aml = baseUrl + 'aml';
  static const String QuickSearch = baseUrl + 'quicksearch';
  static const String QuickSearchID = baseUrl + 'quicksearch(ID)';
  static const String Scan = baseUrl + 'scan';
  static const String ScanID = baseUrl + 'scan(ID)';
  static const String Send = baseUrl + 'send';
  static const String EmailVerificationTOKEN =
      baseUrl + 'emailverification/(token)';
  static const String EmailVerification = baseUrl + 'emailverification';
  static const String EmailVerificationID = baseUrl + 'emailverification/(ID)';
}
