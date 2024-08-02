import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

import '/i18n/index.dart';
import '/utils/logger.dart';
import '/routers/index.dart';
import '/services/index.dart';
import 'configs/languages.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      builder: (ctx, widget) => GetMaterialApp(
        translations: I18n(),
        locale: _getLocale(),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        theme: ThemeData(fontFamily: 'cfont'),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        getPages: getPages,
        routingCallback: (value) {
          final current = value?.current;
          Logger.d('current route: $current  ${current == '/'}');
          if (current == '/') {
            TelegramWebApp.instance.backButton.hide();
          } else {
            TelegramWebApp.instance.backButton.show();
          }
        },
        initialBinding: ServiceBinding(),
        logWriterCallback: Logger.getx,
      ),
    );
  }
}

/// 加载语言设置
Locale _getLocale() {
  var language = "en";
  if (!supportLocale.containsKey(language)) {
    return getSystemLocale();
  } else {
    return supportLocale[language]!;
  }
}
