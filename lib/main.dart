import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sarrafi/Ui/Ui_helper/themeswitcher.dart';
import 'package:sarrafi/Ui/mainrapper.dart';
import 'package:sarrafi/providers/MArketviweproviders.dart';
import 'package:sarrafi/providers/Thrmeprovider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sarrafi/providers/cryptodataprovider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => CryptoDataProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => MarketViewProvider(),
      ),
    ], child: const Mymaterialapp()),
  );
}

class Mymaterialapp extends StatefulWidget {
  const Mymaterialapp({super.key});

  @override
  State<Mymaterialapp> createState() => _MymaterialappState();
}

class _MymaterialappState extends State<Mymaterialapp> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themprovider, child) {
      return MaterialApp(
        // localizationsDelegates: [
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        //   GlobalCupertinoLocalizations.delegate,
        // ],
        // supportedLocales: [
        //   Locale('en', ''), // English, no country code
        //   Locale('fa', ''), // persian, no country code
        // ],
        themeMode: themprovider.themeMode,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        debugShowCheckedModeBanner: false,
        home: const Mainrapper(),
      );
    });
  }
}
