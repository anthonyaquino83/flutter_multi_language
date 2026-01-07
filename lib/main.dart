import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/app_localizations.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Localizations Sample App',
      // localizationsDelegates: const [
      //   AppLocalizations.localizationsDelegates,
      //   // GlobalMaterialLocalizations.delegate,
      //   // GlobalWidgetsLocalizations.delegate,
      //   // GlobalCupertinoLocalizations.delegate,
      // ],
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      // supportedLocales: const [
      //   Locale('en'), // English
      //   Locale('es'), // Spanish
      // ],
      // locale: const Locale('es'),
      home: HomePage(),
      onGenerateTitle: (context) => AppLocalizations.of(context)!.title,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(AppLocalizations.of(context)!.helloWorld)),
    );
  }
}
