import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/sockets/src/socket_notifier.dart';

class LoginController extends GetxController {
  RxBool cheked = false.obs;

  TextEditingController phone = TextEditingController();

  @override
  void onClose() {
    phone.dispose();
    super.onClose();
  }
}
