import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_native_admob/native_admob_controller.dart';
import 'package:flutter_native_admob/flutter_native_admob.dart';

class AEC extends StatefulWidget {
  @override
  _AECState createState() => _AECState();
}

class _AECState extends State<AEC> {
   
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxHeight > 800) {
        return Layout1();
      } else {
        return Layout2();
      }
    });
  }
}

class Layout1 extends StatelessWidget {
  static const _adUnitID = "ca-app-pub-3940256099942544/2247696110";
  final _nativeAdController = NativeAdmobController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "AEC",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF06292e),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 4.0, 8.0, 0.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color(0xFF66D2AB), width: 1.5),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 130,
                                  width: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:
                                        Image.asset('assets/images/books.png'),
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text('FULL NOTES'),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          launch(
                              "https://drive.google.com/file/d/1lv4ojpIxck2nDEnXm-b_qEZ6vJb8WpQq/view?usp=sharing");
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 4, 10, 4.0),
                      child: GestureDetector(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color(0xFF66D2AB), width: 1.5),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 130,
                                width: 150,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assets/images/books.png'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('IMPORTANT TOPIC'),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          launch(
                              "https://drive.google.com/file/d/1A8M2oUwFqdocHsDLEWyi3xCzcjmfeESf/view?usp=sharing");
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 4, 180, 0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: GestureDetector(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color(0xFF66D2AB), width: 1.5),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 130,
                                  width: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:
                                        Image.asset('assets/images/books.png'),
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('IMPORTANT QUES'),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          launch(
                              "https://drive.google.com/file/d/1TobUFCDKrjAgZ1sAO0XJjSGFjiXKYK-T/view?usp=sharing");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
              height: 70,
             
              
              child: NativeAdmob(
                // Your ad unit id
                adUnitID: _adUnitID,
                numberAds: 3,
                controller: _nativeAdController,
                type: NativeAdmobType.banner,
              ),
            ),
    );
  }
}

class Layout2 extends StatelessWidget {
  static const _adUnitID = "ca-app-pub-3940256099942544/2247696110";
  final _nativeAdController = NativeAdmobController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Center(
          child: Text(
            'AEC             ',
          ),
        ),
        backgroundColor: Color(0xFF06292e),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 4.0, 8.0, 0.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color(0xFF66D2AB), width: 1.5),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 110,
                                  width: 130,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:
                                        Image.asset('assets/images/books.png'),
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text('FULL NOTES'),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          launch(
                              "https://drive.google.com/file/d/1lv4ojpIxck2nDEnXm-b_qEZ6vJb8WpQq/view?usp=sharing");
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 4, 10, 4.0),
                      child: GestureDetector(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color(0xFF66D2AB), width: 1.5),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 110,
                                width: 130,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assets/images/books.png'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('IMP TOPICs'),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          launch(
                              "https://drive.google.com/file/d/1A8M2oUwFqdocHsDLEWyi3xCzcjmfeESf/view?usp=sharing");
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 4, 180, 0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: GestureDetector(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color(0xFF66D2AB), width: 1.5),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 110,
                                  width: 130,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:
                                        Image.asset('assets/images/books.png'),
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('IMP QUES'),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          launch(
                              "https://drive.google.com/file/d/1TobUFCDKrjAgZ1sAO0XJjSGFjiXKYK-T/view?usp=sharing");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
              height: 70,
             
              
              child: NativeAdmob(
                // Your ad unit id
                adUnitID: _adUnitID,
                numberAds: 3,
                controller: _nativeAdController,
                type: NativeAdmobType.banner,
              ),
            ),
    );
  }
}
