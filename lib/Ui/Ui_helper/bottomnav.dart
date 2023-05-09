import 'package:flutter/material.dart';

class Bottomnav extends StatelessWidget {
  PageController controller;

  Bottomnav({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 5,
      color: Theme.of(context).primaryColor,
      child: SizedBox(
        height: 63,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              // color: Colors.deepPurple,
              height: 50,
              width: MediaQuery.of(context).size.width / 2 - 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {
                        controller.animateToPage(0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      },
                      icon: const Icon(Icons.home)),
                  IconButton(
                      onPressed: () {
                        controller.animateToPage(1,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      },
                      icon: Icon(Icons.bar_chart))
                ],
              ),
            ),
            Container(
              // color: Colors.deepOrange,
              height: 50,
              width: MediaQuery.of(context).size.width / 2 - 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {
                        controller.animateToPage(2,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      },
                      icon: Icon(Icons.person)),
                  IconButton(
                      onPressed: () {
                        controller.animateToPage(3,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      },
                      icon: Icon(Icons.mark_chat_unread))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
