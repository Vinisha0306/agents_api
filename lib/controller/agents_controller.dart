import 'dart:math';

import 'package:agents_api/helper/agents_helper.dart';
import 'package:flutter/material.dart';

import '../modals/agents_modal.dart';

class AgentsController extends ChangeNotifier {
  List<Agents> allAgents = [];

  AgentsController() {
    loaddata();
  }

  Future<void> loaddata() async {
    allAgents = await AgentsApi.agentsApi.getAllAgents();
    notifyListeners();
  }
}
