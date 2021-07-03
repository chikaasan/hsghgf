import 'package:flutter/cupertino.dart';
import 'package:hackaton/components/main_page_components/mainpagecard.dart';
import 'package:hackaton/model/model.dart';
import 'package:sizer_mod/sizer_mod.dart';

class MainRow extends StatefulWidget {
  MainRow({Key key}) : super(key: key);

  @override
  _MainRowState createState() => _MainRowState();
}

class _MainRowState extends State<MainRow> {
  final data = BludoData();
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            // maxCrossAxisExtent: 200,
            crossAxisCount: 2,
            childAspectRatio: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: data.bludoData.length,
        itemBuilder: (BuildContext context, index) {
          return MainPageCard(data.bludoData[index]);
        });
  }
}
