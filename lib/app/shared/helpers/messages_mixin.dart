import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horadedoar/app/theme/app_theme.dart';

mixin MessagesMixin on GetxController {
  void messageListener(Rx<MessageModel> message) {
    ever<MessageModel>(message, (model) async {
      if (model != null) {
        Get.defaultDialog(
          title: model.title,
          middleText: model.message,
          onConfirm: () {
            Get.back();
          },
          buttonColor: appThemeData.primaryColor,
          confirmTextColor: Colors.white,
          barrierDismissible: false,
        );
      }
    });
  }
}

class MessageModel {
  final String title;
  final String message;
  final MessageType type;

  MessageModel(this.title, this.message, {this.type});
}

enum MessageType { error, info }

extension MessageTypeColorExt on MessageType {
  Color color() {
    switch (this) {
      case MessageType.error:
        return Colors.red[800];
      case MessageType.info:
        return Colors.blue[200];
      default:
        return Colors.black38;
    }
  }
}
