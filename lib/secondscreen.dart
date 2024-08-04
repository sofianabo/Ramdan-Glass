import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:pp/utils.dart';

class SecondScreen extends StatefulWidget {
  final String selectedImage;

  const SecondScreen(this.selectedImage, {Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState(selectedImage);
}

class _SecondScreenState extends State<SecondScreen> {
  final String selectedImage;
  String selectedFont = 'Roboto';
  bool fontBold = true;

  _SecondScreenState(this.selectedImage);

  setFont(String fontName, bool bold) {
    setState(() {
      this.selectedFont = fontName;
      this.fontBold = bold;
    });
  }

  getFontButtonsByWidth(BuildContext context) {
    var _h = MediaQuery.of(context).size.height;
    var _w = MediaQuery.of(context).size.width;
    if (_w <= 600) {
      return Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  this.setFont('Roboto', true);
                },
                child: Padding(
                  padding: EdgeInsets.only(
                      left: (_w / 2) * 0.1,
                      right: (_w / 2) * 0.1,
                      top: (_h / 10) * 0.1,
                      bottom: (_h / 10) * 0.1),
                  child: Image.asset('images/l1.jpg',
                      width: (_w / 2) * 0.8, height: (_h / 10) * 0.8),
                ),
              ),
              GestureDetector(
                onTap: () {
                  this.setFont('Lobster', false);
                },
                child: Padding(
                  padding: EdgeInsets.only(
                      left: (_w / 2) * 0.1,
                      right: (_w / 2) * 0.1,
                      top: (_h / 10) * 0.1,
                      bottom: (_h / 10) * 0.1),
                  child: Image.asset('images/l2.jpg',
                      width: (_w / 2) * 0.8, height: (_h / 10) * 0.8),
                ),
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  this.setFont('Satisfy', false);
                },
                child: Padding(
                  padding: EdgeInsets.only(
                      left: (_w / 2) * 0.1,
                      right: (_w / 2) * 0.1,
                      top: (_h / 10) * 0.1,
                      bottom: (_h / 10) * 0.1),
                  child: Image.asset('images/l3.jpg',
                      width: (_w / 2) * 0.8, height: (_h / 10) * 0.8),
                ),
              ),
              GestureDetector(
                onTap: () {
                  this.setFont('Satisfy', true);
                },
                child: Padding(
                  padding: EdgeInsets.only(
                      left: (_w / 2) * 0.1,
                      right: (_w / 2) * 0.1,
                      top: (_h / 10) * 0.1,
                      bottom: (_h / 10) * 0.1),
                  child: Image.asset('images/l4.jpg',
                      width: (_w / 2) * 0.8, height: (_h / 10) * 0.8),
                ),
              ),
            ],
          ),
        ],
      );
    }
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            this.setFont('Roboto', true);
          },
          child: Padding(
            padding: EdgeInsets.only(
                left: (_w / 4) * 0.1,
                right: (_w / 4) * 0.1,
                top: (_h / 10) * 0.3,
                bottom: (_h / 10) * 0.3),
            child: Image.asset('images/l1.jpg',
                width: (_w / 4) * 0.8, height: (_h / 10) * 1.4),
          ),
        ),
        GestureDetector(
          onTap: () {
            this.setFont('Lobster', false);
          },
          child: Padding(
            padding: EdgeInsets.only(
                left: (_w / 4) * 0.1,
                right: (_w / 4) * 0.1,
                top: (_h / 10) * 0.3,
                bottom: (_h / 10) * 0.3),
            child: Image.asset('images/l2.jpg',
                width: (_w / 4) * 0.8, height: (_h / 10) * 1.4),
          ),
        ),
        GestureDetector(
          onTap: () {
            this.setFont('Satisfy', false);
          },
          child: Padding(
            padding: EdgeInsets.only(
                left: (_w / 4) * 0.1,
                right: (_w / 4) * 0.1,
                top: (_h / 10) * 0.3,
                bottom: (_h / 10) * 0.3),
            child: Image.asset('images/l3.jpg',
                width: (_w / 4) * 0.8, height: (_h / 10) * 1.4),
          ),
        ),
        GestureDetector(
          onTap: () {
            this.setFont('Satisfy', true);
          },
          child: Padding(
            padding: EdgeInsets.only(
                left: (_w / 4) * 0.1,
                right: (_w / 4) * 0.1,
                top: (_h / 10) * 0.3,
                bottom: (_h / 10) * 0.3),
            child: Image.asset('images/l4.jpg',
                width: (_w / 4) * 0.8, height: (_h / 10) * 1.4),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var _h;
    var _w;
    _h = MediaQuery.of(context).size.height;
    _w = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: getAppBar(context),
        body: SafeArea(
            child: Column(children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: Color(0XFF2D2D3F),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                      image: DecorationImage(
                          image: AssetImage(
                            'images/im4.png',
                          ),
                          fit: BoxFit.cover),
                      color: Color(0XFF2D2D3F)),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    child: Image.asset('images/bar.jpg',
                        width: double.infinity, fit: BoxFit.fitWidth),
                  ),
                ),
                Align(
                    alignment: Alignment.topCenter,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: _h / 10,
                        width: _w / 2 > 415 ? 415 : _w / 2,
                        decoration: BoxDecoration(
                            color: Color(0XFF2D2D3F),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25))),
                        alignment: Alignment.center,
                        child: Text(
                          'Preview'.tr(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )),
                Container(
                  height: _h,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: (_h / 10),
                        ),
                        Container(
                          height: (_h / 10) * 3,
                          child: Stack(children: [
                            Center(
                              child: Image.asset(
                                  "images/g_" + this.selectedImage,
                                  height: (_h / 10) * 3),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: (_h / 10) * 1.3,
                                  left: _w / 10,
                                  right: _w / 10),
                              child: Center(
                                child: Column(children: [
                                  TextFormField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: this.selectedFont,
                                        fontWeight: this.fontBold
                                            ? FontWeight.bold
                                            : FontWeight.normal),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                          ]),
                        ),
                        Container(
                          height: _h / 10,
                          child: Padding(
                            padding: EdgeInsets.all((_h / 10) * 0.3),
                            child: Text(
                              'selectFont'.tr(),
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        getFontButtonsByWidth(context),
                        Stack(children: [
                          Container(
                              height: _h / 10,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Align(
                                  alignment:
                                      translator.activeLanguageCode == 'ar'
                                          ? Alignment.bottomLeft
                                          : Alignment.bottomRight,
                                  child: Padding(
                                    padding: EdgeInsets.all((_h / 10) * 0.2),
                                    child: Container(
                                      height: 35,
                                      width: 60,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Colors.white60,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Back'.tr(),
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_right,
                                            color: Colors.black,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                          Container(
                              height: _h / 10,
                              child: GestureDetector(
                                onTap: () {
                                  //Navigator.of(context).pop();
                                },
                                child: Align(
                                  alignment:
                                      translator.activeLanguageCode == 'ar'
                                          ? Alignment.bottomCenter
                                          : Alignment.bottomCenter,
                                  child: Padding(
                                    padding: EdgeInsets.all((_h / 10) * 0.2),
                                    child: Container(
                                      height: (_h / 10) * 1.2,
                                      width: 125,
                                      decoration: BoxDecoration(
                                        color: Colors.white60,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 7,
                                            right: 22,
                                            left: 22,
                                            bottom: 7),
                                        child: Text(
                                          'Submit'.tr(),
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                        ]),
                        SizedBox(
                          height: (_h / 10),
                        ),
                      ]),
                ),
              ],
            ),
          )
        ])));
  }
}
