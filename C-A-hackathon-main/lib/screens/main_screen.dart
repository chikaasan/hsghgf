import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hackaton/components/main_page_components/mainpagebutton.dart';
import 'package:hackaton/components/main_page_components/mainpagecard.dart';
import 'package:hackaton/components/main_page_components/mainrow.dart';
import 'package:hackaton/costans/colors.dart';
import 'package:hackaton/costans/images.dart';
import 'package:sizer_mod/sizer_mod.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: SizerUtil.deviceType == DeviceType.Tablet
              ? Size.fromHeight(180)
              : Size.fromHeight(120),
          child: Center(
            child: AppBar(
              flexibleSpace: Container(
                  child: SizerUtil.deviceType == DeviceType.Tablet
                      ? Container(
                          width: width,
                          height: height,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage(TaskImage.appbarBg),
                            fit: SizerUtil.orientation == Orientation.portrait
                                ? BoxFit.fill
                                : BoxFit.fill,
                          )),
                        )
                      : Container(
                          width: width,
                          height: height,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage(TaskImage.appbarBg),
                            fit: SizerUtil.orientation == Orientation.portrait
                                ? BoxFit.fill
                                : BoxFit.fill,
                          )),
                        )),
              actions: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 11, 0),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.account_balance_wallet_sharp,
                        size: 38.5,
                      )),
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(1.5.w),
                child: MainRow(),
              ),
            ],
          ),
        ));
  }
}
