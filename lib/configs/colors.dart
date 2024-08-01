import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

class AppColors {
  static final bg = TelegramWebApp.instance.themeParams.bgColor ?? Colors.white;
  static final secondary =
      TelegramWebApp.instance.themeParams.secondaryBgColor ?? Colors.grey[300];
  static final text =
      TelegramWebApp.instance.themeParams.textColor ?? Colors.black;
  static final hint =
      TelegramWebApp.instance.themeParams.hintColor ?? Colors.grey;
  static final button =
      TelegramWebApp.instance.themeParams.buttonColor ?? Colors.blue;
  static final buttonText =
      TelegramWebApp.instance.themeParams.buttonTextColor ?? Colors.white;
}
