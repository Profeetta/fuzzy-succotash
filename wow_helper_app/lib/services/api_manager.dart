import 'package:http/http.dart' as http;
import 'package:wow_helper_app/constants/strings.dart';

class API_Manager {
  void getInformation() async {
    var client = http.Client();

    var response = await client.get(Uri.parse(Strings.info_url));
    if (response.statusCode == 200) {
      response.body;
    }
  }
}
