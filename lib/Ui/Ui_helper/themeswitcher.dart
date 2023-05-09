import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sarrafi/providers/Thrmeprovider.dart';

class themeswitcher extends StatelessWidget {
  themeswitcher({super.key});
  @override
  Widget build(BuildContext context) {
    final switchedprovider = Provider.of<ThemeProvider>(context);
    var switchicon = Icon(switchedprovider.isDarkMode
        ? CupertinoIcons.moon_fill
        : CupertinoIcons.sun_max_fill);
    return IconButton(
      onPressed: () {
        // Provider.of<ThemeProvider>(listen: false, context).toggleTheme();
        switchedprovider.toggleTheme();
      },
      icon: switchicon,
    );
  }
}
