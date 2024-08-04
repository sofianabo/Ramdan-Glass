import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

getAppBar(BuildContext context) {
  var _h = MediaQuery.of(context).size.height;
  var _w = MediaQuery.of(context).size.width;
  return AppBar(
    automaticallyImplyLeading: false,
    toolbarHeight: _h / 10,
    backgroundColor: Color(0XFF2D2D3F),
    title: Stack(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          width: 80,
          child: Row(children: [
            IconButton(
              icon: Image.asset("images/ar.png"),
              onPressed: () => {
                translator.setNewLanguage(context,
                    newLanguage: 'ar', restart: true, remember: true),
              },
              iconSize: 15,
            ),
            IconButton(
              icon: Image.asset("images/en.png"),
              onPressed: () => {
                translator.setNewLanguage(context,
                    newLanguage: 'en', restart: true, remember: true),
              },
              iconSize: 15,
            ),
          ]),
        ),
        Container(
          alignment: Alignment.center,
          width: _w,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(width: 150, "images/title.png"),
          ),
        ),
      ],
    ),
    // leading: Row(
    //   children: [
    //     Padding(
    //       padding: const EdgeInsets.only(left: 10.0),
    //       child: Column(
    //         children: [
    //           Container(
    //             height: 30,
    //             width: 8,
    //           ),
    //           Text('selectLanguage'.tr(), style: TextStyle(fontSize: 6)),
    //         ],
    //       ),
    //     ),
    //   ],
    // ),
    // backgroundColor:Color(#2d2d39),
  );
}
