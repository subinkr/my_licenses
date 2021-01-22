import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:csv/csv.dart';
import 'package:my_licenses/view_model/license_vm.dart';

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final licenseViewModel = LicenseViewModel();
  List<List<dynamic>> data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table Layout and CSV"),
      ),

      body: SingleChildScrollView(
        child: Text('${licenseViewModel.fetchData()}')
        ),
    );
  }


}