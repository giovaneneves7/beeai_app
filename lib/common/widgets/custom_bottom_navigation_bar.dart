import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomBottomNavigationBar extends StatelessWidget {

  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: currentIndex == 0
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).iconTheme.color,
            ),
            onPressed: () => onTap(0),
          ),
          IconButton(
            icon: Icon(
              Icons.event_note,
              color: currentIndex == 1
                  ? Theme.of(context).primaryColor 
                  : Theme.of(context).iconTheme.color,
            ),
            onPressed: () => onTap(1),
          ),
        ],
      ),
    );
  }
}