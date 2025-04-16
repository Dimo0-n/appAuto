import 'package:flutter/material.dart';
import 'package:flutter_social/_routing/routes.dart';
import 'package:flutter_social/_routing/router.dart' as router;
import 'package:flutter_social/theme.dart';
import 'package:flutter_social/utils/utils.dart';
import 'package:flutter_social/utils/colors.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.appName,
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(),
      darkTheme: buildThemeData().copyWith(
        brightness: Brightness.dark,
        colorScheme: darkColorScheme,
      ),
      themeMode: ThemeMode.system,
      onGenerateRoute: router.generateRoute,
      initialRoute: landingViewRoute,
    );
  }
}
