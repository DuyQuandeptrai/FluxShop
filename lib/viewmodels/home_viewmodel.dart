import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  String welcomeMessage = "Welcome to the Shop!";

  void updateMessage(String newMessage) {
    welcomeMessage = newMessage;
    notifyListeners(); // Báo cho UI biết để rebuild
  }
}
