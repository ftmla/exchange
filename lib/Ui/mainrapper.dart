import 'package:flutter/material.dart';
import 'package:sarrafi/Ui/Homepage.dart';
import 'package:sarrafi/Ui/Ui_helper/bottomnav.dart';
import 'package:sarrafi/Ui/marketviwepage.dart';
import 'package:sarrafi/Ui/profilepage.dart';

import 'Watchlistpage.dart';

class Mainrapper extends StatefulWidget {
  const Mainrapper({super.key});

  @override
  State<Mainrapper> createState() => _MainrapperState();
}

class _MainrapperState extends State<Mainrapper> {
  final PageController _mypage = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.compare_arrows_outlined,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:  Bottomnav(controller: _mypage,),
      body: PageView(
        controller: _mypage,
        children: [Homepage(), MarketViewPage(), Profilepage(),Watchlistpage()],
      ),
    );
  }
}
