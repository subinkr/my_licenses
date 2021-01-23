import 'package:flutter/foundation.dart';
import 'package:my_licenses/model/license_model.dart';

class LicenseViewModel with ChangeNotifier {
  final _licenseModel = LicenseModel();
  bool loading = true;

  LicenseModel getData() {
    return _licenseModel;
  }

  Future updateLicenseData() async {
    loading = true;
    notifyListeners();

    _licenseModel.data = await _licenseModel.loadLicenseList();

    loading = false;
    notifyListeners();
  }
}