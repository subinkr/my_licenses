import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox(
              width: 300,
              height: 500,
              child: Card(
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                    ),
                    Text('강수빈', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), ),
                    Container(
                      height: 80,
                    ),
                    Center(
                      child: SizedBox(
                          width: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('전화번호', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold), ),
                              Container(
                                height: 10,
                              ),
                              Text('010-0000-0000', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300), ),
                              Container(
                                height: 20,
                              ),
                              Text('이메일', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold), ),
                              Container(
                                height: 10,
                              ),
                              Text('github@subin.kr', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300), ),
                            ],
                          )
                      ),
                    )
                  ],
                ),
              )
          )
      )
    );
  }
}
