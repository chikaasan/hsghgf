import 'package:hackaton/model/model.dart';

class HackathonProvider  {
  
  Future<BludoData> getHackathon() async {
    try {
      // ApiRequester requester = ApiRequester();
      // Response response = await requester.toGet("");
      // if(response.statusCode == 200) {
      //   return UserModel.fromJson(response.data);
      // }
      throw BludoData();
    } catch (e) {
      throw Exception("Ошибка");
    }
  }
}