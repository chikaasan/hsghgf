import 'package:hackaton/costans/images.dart';

class BludoModel {
  String bludo;
  int price;
  String img;
  BludoModel({this.bludo, this.img, this.price});
}

class BludoData {
  final List bludoData = [
    BludoModel(bludo: "блинчики", img: TaskImage.blin, price: 10),
    BludoModel(bludo: "блинчики", img: TaskImage.blin, price: 11),
    BludoModel(bludo: "блинчики", img: TaskImage.blin, price: 12),
    BludoModel(bludo: "блинчики", img: TaskImage.blin, price: 13),
  ];
}
