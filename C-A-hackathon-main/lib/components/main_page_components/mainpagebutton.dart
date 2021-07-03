import 'package:flutter/material.dart';
import 'package:sizer_mod/sizer_mod.dart';

class MainPageButton extends StatefulWidget {
  MainPageButton({Key key}) : super(key: key);

  @override
  _MainPageButtonState createState() => _MainPageButtonState();
}

class _MainPageButtonState extends State<MainPageButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(
                0.8, 0.0), // 10% of the width, so there are ten blinds.
            colors: <Color>[
              Color(0xffDADADA),
              Color(0xffFFFFFF)
            ], // red to yellow
            // repeats the gradient over the canvas
          ),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(51, 51, 51, 0.2155),
                blurRadius: 14,
                offset: Offset(0.7, 29)),
            BoxShadow(
              color: Color(0xFFD0D0D0),
              spreadRadius: -4,
              offset: Offset(-0.23, -4.40),
            ),
            BoxShadow(
              color: Color(0xFFFFFFFF),
              blurRadius: 0.23,
              offset: Offset(4, 4),
            )
          ],
          borderRadius: BorderRadius.circular(16)),
      width: 14.0.w,
      height: 14.0.w,
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.shopping_basket_outlined,
          size: 7.0.w,
        ),
      ),
    );
  }
}
