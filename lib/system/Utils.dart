import 'dart:convert';
import 'package:http/http.dart' as http;

import 'Info.dart';

class Utils {
  checkAppVersion(platform, version) async {
    Map _map = {};
    _map.addAll({
      "platform": platform,
      "version": version,
    });
    var body = json.encode(_map);
    final response = await http.Client().post(Uri.parse(Info().checkAppVersion), headers: {"Content-Type": "application/json"}, body: body);
    return json.decode(response.body);
  }
}
