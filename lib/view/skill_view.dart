import 'package:flutter/material.dart';
import 'package:my_licenses/model/license_model.dart';

class SkillView extends StatelessWidget {
  LicenseModel license;
  SkillView(e) {
    license = e;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 200,
          title: Center(
            child: Column(
             children: [
               Text(
                 "보유 자격증 목록",
                 style: TextStyle(color: Colors.black),
               ),
               Padding(padding: EdgeInsets.all(8)),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.art_track, color: Colors.black,),
                   Text('   X   0',style: TextStyle(color: Colors.black))
                 ],
               ),
             ],
            )
          ),
          backgroundColor: Colors.white,
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  leading: Icon(Icons.art_track_outlined),
                  title: Text(
                          '${license.data[index + 1][license.licenseName]}'));
            },
            separatorBuilder: (BuildContext context, int index) =>
            const Divider(),
            itemCount: license.data.length - 1)
      // Text(
      //     '${license.data[license.data.length - 1][license.licenseName]}'),
    );
  }
}