import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:pp/secondscreen.dart';
import 'package:pp/utils.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var _h;
    var _w;
    _h = MediaQuery.of(context).size.height;
    _w = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: getAppBar(context),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Stack(children: [
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
                        'Select Design'.tr(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    height: _h,
                    child: Column(children: [
                      SizedBox(
                        height: (_h / 10) * 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: (_h / 10) * 2,
                            width: _w / 4,
                            child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset('images/image_1.png',
                                        height: (_h / 10) * 1.25),
                                    SizedBox(
                                      height: (_h / 10) * 0.25,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SecondScreen(
                                                        "image_1.png")));
                                      },
                                      child: Container(
                                          height: (_h / 10) * 0.5,
                                          width: _w / 1 > 100 ? 100 : _w / 1,
                                          decoration: BoxDecoration(
                                            color: Color(0XFF2D2D3F),
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Center(
                                              child: Text(
                                            'Type Here'.tr(),
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white),
                                          ))),
                                    )
                                  ],
                                )),
                          ),
                          Container(
                            height: (_h / 10) * 2,
                            width: _w / 4,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset('images/image_2.png',
                                      height: (_h / 10) * 1.25),
                                  SizedBox(
                                    height: (_h / 10) * 0.25,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SecondScreen("image_2.png")));
                                    },
                                    child: Container(
                                        height: (_h / 10) * 0.5,
                                        width: _w / 1 > 100 ? 100 : _w / 1,
                                        decoration: BoxDecoration(
                                          color: Color(0XFF2D2D3F),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        child: Center(
                                            child: Text(
                                          'Type Here'.tr(),
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white),
                                        ))),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: (_h / 10) * 2,
                            width: _w / 4,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset('images/image_3.png',
                                      height: (_h / 10) * 1.25),
                                  SizedBox(
                                    height: (_h / 10) * 0.25,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SecondScreen("image_3.png")));
                                    },
                                    child: Container(
                                        height: (_h / 10) * 0.5,
                                        width: _w / 1 > 100 ? 100 : _w / 1,
                                        decoration: BoxDecoration(
                                          color: Color(0XFF2D2D3F),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        child: Center(
                                            child: Text(
                                          'Type Here'.tr(),
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white),
                                        ))),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: (_h / 10) * 2,
                            width: _w / 4,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset('images/image_4.png',
                                      height: (_h / 10) * 1.25),
                                  SizedBox(
                                    height: (_h / 10) * 0.25,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SecondScreen("image_4.png")));
                                    },
                                    child: Container(
                                        height: (_h / 10) * 0.5,
                                        width: _w / 1 > 100 ? 100 : _w / 1,
                                        decoration: BoxDecoration(
                                          color: Color(0XFF2D2D3F),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        child: Center(
                                            child: Text(
                                          'Type Here'.tr(),
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white),
                                        ))),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: _h / 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: (_h / 10) * 2,
                            width: _w / 5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('images/image_5.png',
                                    height: (_h / 10) * 1.25),
                                SizedBox(
                                  height: (_h / 10) * 0.25,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SecondScreen("image_5.png")));
                                  },
                                  child: Container(
                                      height: (_h / 10) * 0.5,
                                      width: _w / 1 > 100 ? 100 : _w / 1,
                                      decoration: BoxDecoration(
                                        color: Color(0XFF2D2D3F),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Center(
                                          child: Text(
                                        'Type Here'.tr(),
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ))),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: (_h / 10) * 2,
                            width: _w / 5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('images/image_6.png',
                                    height: (_h / 10) * 1.25),
                                SizedBox(
                                  height: (_h / 10) * 0.25,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SecondScreen("image_6.png")));
                                  },
                                  child: Container(
                                      height: (_h / 10) * 0.5,
                                      width: _w / 1 > 100 ? 100 : _w / 1,
                                      decoration: BoxDecoration(
                                        color: Color(0XFF2D2D3F),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Center(
                                          child: Text(
                                        'Type Here'.tr(),
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ))),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: (_h / 10) * 2,
                            width: _w / 5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('images/image_7.png',
                                    height: (_h / 10) * 1.25),
                                SizedBox(
                                  height: (_h / 10) * 0.25,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SecondScreen("image_7.png")));
                                  },
                                  child: Container(
                                      height: (_h / 10) * 0.5,
                                      width: _w / 1 > 100 ? 100 : _w / 1,
                                      decoration: BoxDecoration(
                                        color: Color(0XFF2D2D3F),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Center(
                                          child: Text(
                                        'Type Here'.tr(),
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ))),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      // GestureDetector(
                      //   onTap: () {},
                      //   child: Align(
                      //     alignment: translator.activeLanguageCode == 'ar'
                      //         ? Alignment.bottomLeft
                      //         : Alignment.bottomRight,
                      //     child: Padding(
                      //       padding: EdgeInsets.all((_h / 10) * 0.2),
                      //       child: Container(
                      //         height: (_h / 10) * 0.6,
                      //         width: _w / 15 < 100 ? 100 : _w / 15,
                      //         decoration: BoxDecoration(
                      //           color: Colors.white60,
                      //           borderRadius: BorderRadius.circular(25),
                      //         ),
                      //         child: Padding(
                      //           padding: EdgeInsets.only(
                      //               top: 7, right: 22, left: 22, bottom: 7),
                      //           child: Row(
                      //             children: [
                      //               Text(
                      //                 'Next'.tr(),
                      //                 style: TextStyle(
                      //                   fontSize: 12,
                      //                   color: Colors.white,
                      //                 ),
                      //               ),
                      //               Icon(
                      //                 Icons.arrow_right,
                      //                 color: Colors.black,
                      //               )
                      //             ],
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // )
                    ]),
                  ),
                ]),
              ),
            ],
          ),
        ));
  }
}
