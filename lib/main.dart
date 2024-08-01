import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telegram_web_app/telegram_web_app.dart';
import 'package:tg_shop_app/utils/request.dart';

import 'app.dart';
import '/utils/logger.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Get.log = Logger.getx;
  registerErrorHandler();

  initTelegram();
  Request.init();

  runApp(const MainApp());
}

initTelegram() async {
  try {
    if (TelegramWebApp.instance.isSupported) {
      TelegramWebApp.instance.ready().then((value) => {
            Future.delayed(const Duration(seconds: 1), () {
              TelegramWebApp.instance.expand();
            })
          });
    }
  } catch (e) {
    Logger.e(e);
  }
}

registerErrorHandler() {
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    Logger.e(details);
  };

  PlatformDispatcher.instance.onError = (err, stack) {
    Logger.e('$err\n$stack');
    return true;
  };

  ErrorWidget.builder = (detials) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: Center(
        child: Text('An error occurred\n${detials.toString()}'),
      ),
    );
  };
}
