part of 'hackathon_bloc.dart';

@immutable
// abstract class HackathonState {}

// class HackathonInitial extends HackathonState {}

class HackathonState /*extends HackathonState */{
  String name;
  int price;
  String img;
  HackathonState({this.name, this.price, this.img});
}