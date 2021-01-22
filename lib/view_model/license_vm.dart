import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:csv/csv.dart';
import 'package:my_licenses/model/license_model.dart';

class LicenseViewModel with ChangeNotifier {
  final _licenseModel = LicenseModel();
  fetchData() {
    updateLicenseData();
    // print(_licenseModel.data);
    return _licenseModel.data;
  }
  Future<List<dynamic>> updateLicenseData() async {
    final myData = await rootBundle.loadString("license_list_20200625_model.csv");
    _licenseModel.data = await CsvToListConverter().convert(myData);
  }


}

  // Future fetchData() async {
  //   final myData = await rootBundle.loadString("license_list_20200625_model.csv");
  //   _licenseModel.data = CsvToListConverter().convert(myData);
  //   print(_licenseModel.data);
  //   notifyListeners();
  //   return _licenseModel.data;
  // }