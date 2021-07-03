import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackaton/components/tittle.dart';
import 'package:hackaton/costans/colors.dart';
import 'package:hackaton/costans/images.dart';
import 'package:hackaton/model/model.dart';
import 'package:hackaton/screens/main_screen_bloc/bloc/hackathon_bloc.dart';
import 'package:sizer_mod/sizer_mod.dart';

class MainPageCard extends StatefulWidget {
  final BludoModel model;
  MainPageCard(this.model);

  @override
  _MainPageCardState createState() => _MainPageCardState();
}

class _MainPageCardState extends State<MainPageCard> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HackathonBloc, HackathonState>(
      builder: (context, state) {
        return Padding(
            padding: EdgeInsets.all(0.5.w),
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Ink.image(
                    image: AssetImage(state.img),
                    child: InkWell(
                      onTap: () {},
                    ),
                    width: 46.0.w,
                    height: 18.0.h,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 2.0.w),
                    decoration: BoxDecoration(color: AppColors.greywithopacity),
                    height: 5.0.h,
                    child: Text(
                      widget.model.bludo,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      width: 10.0.w,
                      margin: EdgeInsets.only(bottom: 2.2.w, left: 34.0.w),
                      decoration: BoxDecoration(
                          color: AppColors.blackwicthopacity,
                          borderRadius: BorderRadius.circular(50)),
                      height: 10.0.w,
                      child: Text(
                        widget.model.price.toString() + "c/шт",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ))
                ],
              ),
            ));
      },
    );
  }
}
