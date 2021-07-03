import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hackaton/model/model.dart';
import 'package:meta/meta.dart';

part 'hackathon_event.dart';
part 'hackathon_state.dart';

class HackathonBloc extends Bloc<HackathonEvent, HackathonState> {
  HackathonBloc() : super(HackathonState(
    name: "Samsa",
    price: 30,
    img: "assets/images/blinchiki.png"
  ));

  @override
  Stream<HackathonState> mapEventToState(
    HackathonEvent event,
  ) async* {
    if(event is GetHackathonEvent) {
      yield HackathonState(
        name: state.name = "samsa",
        price: state.price = 35,
        img: state.img = "assets/images/blinchiki.png",
      );
    }
  }
}
