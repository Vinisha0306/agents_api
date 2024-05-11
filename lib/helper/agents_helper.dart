import 'dart:convert';
import 'package:agents_api/modals/agents_modal.dart';
import 'package:http/http.dart' as http;

class AgentsApi {
  AgentsApi._();

  static final AgentsApi agentsApi = AgentsApi._();

  String api = "https://valorant-api.com/v1/agents";

  Future<List<Agents>> getAllAgents() async {
    List<Agents> allAgents = [];

    http.Response response = await http.get(Uri.parse(api));

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);

      List alldata = data['data'];

      allAgents = alldata.map((e) => Agents.fromJson(e)).toList();
    }
    return allAgents;
  }
}
