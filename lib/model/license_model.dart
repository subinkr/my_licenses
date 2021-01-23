import 'package:flutter/services.dart';
import 'package:csv/csv.dart';

class LicenseModel {
  List<List<dynamic>> data = [];
  final categoryCode = 0; // 자격 구분 코드
  final categoryName = 1; // 자격 구분 명
  final divisionCode = 2; // 계열 코드
  final divisionName = 3; // 계열 명
  final licenseCode = 4; // 종목 코드
  final licenseName = 5; // 종목 명

  loadLicenseList() async {
    final myData = await rootBundle.loadString("license_list_20200625_model.csv");
    return CsvToListConverter().convert(myData);
  }
}
