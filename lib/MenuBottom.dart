import 'package:flutter/material.dart';
import 'package:joggigsir/mainpage.dart';
import 'package:joggigsir/routelist.dart';
import 'package:joggigsir/mypage.dart';

class MenuBottom extends StatelessWidget {
  const MenuBottom({Key? key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (int index) {
        // index에 따라 각 아이템에 대한 동작을 수행
        switch (index) {
          case 0:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => MainPage(),
              ),
            );
            break;
          case 1:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => RouteList(),
              ),
            );
            break;
          case 2:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => MyPage(),
              ),
            );
            break;
          default:
            break;
        }
      },
      selectedItemColor: Colors.blue,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.run_circle),
          label: 'Route',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'MyPage',
        ),
      ],
    );
  }
}