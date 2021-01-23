import 'package:flutter/material.dart';
import 'package:my_licenses/view/loading_view.dart';
import 'package:my_licenses/view/profile_view.dart';
import 'package:my_licenses/view/skill_view.dart';
import 'package:my_licenses/view_model/license_vm.dart';
import 'package:provider/provider.dart';

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectIndex = 0;
  List _pages;

  @override
  Widget build(BuildContext context) {
    final licenseViewModel = Provider.of<LicenseViewModel>(context);
    // if (licenseViewModel.loading) {
    //   licenseViewModel.updateLicenseData();
    //   return LoadingView();
    // }
    _pages = [
      ProfileView(),
      SkillView(licenseViewModel.getData()),
    ];
    return Scaffold(
      body: _pages[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: '프로필'),
          BottomNavigationBarItem(icon: Icon(Icons.assessment), label: '자격증')
        ],
        currentIndex: _selectIndex,
        onTap: _seleteItem,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        licenseViewModel.updateLicenseData();
      }, child: Icon(Icons.refresh),),
    );
  }

  _seleteItem(int index) {
    setState(() {
      _selectIndex = index;
    });
  }
}
