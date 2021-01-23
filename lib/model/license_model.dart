import 'package:flutter/services.dart';
import 'package:csv/csv.dart';
import 'package:http/http.dart' as http;

class LicenseModel {
  List<List<dynamic>> data = [];
  final categoryCode = 0; // 자격 구분 코드
  final categoryName = 1; // 자격 구분 명
  final divisionCode = 2; // 계열 코드
  final divisionName = 3; // 계열 명
  final licenseCode = 4; // 종목 코드
  final licenseName = 5; // 종목 명

  Future loadLicenseList() async {
    final url = "https://raw.githubusercontent.com/subinkr/my_licenses/master/20200625.csv";
    try {
      var csvRead = await http.read(url);
      print(csvRead.runtimeType);
      return CsvToListConverter().convert(csvRead);
      print(csvRead);
    } catch(e) {
      print('download error $e');
    }
  }
}
