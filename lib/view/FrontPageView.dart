import 'package:app_template/view/policy/PolicyBanner.dart';
import 'package:flutter/material.dart';

import 'NoDataView.dart';
import 'home/HomeView.dart';

class FrontPageView extends StatefulWidget {
  FrontPageView({
    Key? key,
    this.payload = "",
  }) : super(key: key);

  String payload;

  @override
  State<FrontPageView> createState() => _FrontPageViewState();
}

class _FrontPageViewState extends State<FrontPageView> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = [HomeView(), NoDataView(), NoDataView(), NoDataView(), NoDataView()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
            Positioned(
              bottom: 0,
              child: PrivacyPolicyBanner(),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          elevation: 5,
          unselectedItemColor: Colors.blue,
          //selectedItemColor: Colors.orange,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/home.png',
                  height: 22,
                ),
                label: 'หน้าแรก',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/newspaper.png',
                height: 22,
              ),
              label: 'ข่าว',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/search_btn.png',
                height: 46,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/noti.png',
                height: 22,
              ),
              label: 'แจ้งเตือน',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/list.png',
                height: 22,
              ),
              label: 'เมนูอื่น',
            ),
          ],
        ),
      ),
    );
  }
}
