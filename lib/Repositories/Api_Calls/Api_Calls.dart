import 'dart:convert';
import 'package:global_compliance/Repositories/ApiUrl/ApiUrl.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiCallService {
  // Future<WorldStatesModel> fetchWorldStatesRecordApi() async {
  //   final response = await http.get(Uri.parse(AppUrls.WorldStatesApi));
  //   // print(response.body);

  //   if (response.statusCode == 200) {
  //     var worldData = jsonDecode(response.body);
  //     // print("cases........." + worldData['cases']);
  //     return WorldStatesModel.fromJson(worldData);
  //   } else {
  //     throw Exception("errorrr");
  //   }
  // }

  Future<List<dynamic>> countriesListApi() async {
    var countryData;
    final response = await http.get(Uri.parse(AppUrls.Scan));

    if (response.statusCode == 200) {
      countryData = jsonDecode(response.body);
      return countryData;
    } else {
      throw Exception("errorrr");
    }
  }

  void signUp(
      String email, String password, String name, String contact) async {
    try {
      Response response = await post(Uri.parse(AppUrls.Register), body: {
        'email': email,
        'name': name,
        'contact': contact,
        'password': password,
      });

      if (response.statusCode == 200) {
        print("Signup  Successfully");
      } else {
        print("Signup  Failed");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  void login(String email, String password) async {
    try {
      Response response = await post(Uri.parse(AppUrls.Login), body: {
        'email': email,
        'password': password,
      });
      print(response.body.toString());
      if (response.statusCode == 200) {
        print("login  Successfully");
      } else {
        print("login  Failed");
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
