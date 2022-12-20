import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab10/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Start extends GetxService {
  checkuser() async {
    var inst = FirebaseAuth.instance;
    var userID = inst.currentUser?.uid;
    print(userID);
    if (userID?.isEmpty == false) {
      prefs?.setString("id", userID!);
      // Prefs?.setString(),
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkuser();
  }
}
