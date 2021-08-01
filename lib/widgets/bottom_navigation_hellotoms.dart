import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp_flutter/constants/colors.dart';

class BottomNavigationHellotoms extends StatefulWidget {
  @override
  _BottomNavigationHellotomsState createState() =>
      _BottomNavigationHellotomsState();
}

class _BottomNavigationHellotomsState extends State<BottomNavigationHellotoms> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 64,
        decoration: BoxDecoration(
            color: mFillColor,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 15,
                  offset: Offset(0, 4))
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            )),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 20,
                height: 20,
                child: _selectedIndex == 0
                    ? new SvgPicture.asset('assets/icons/homepage_active.svg')
                    : new SvgPicture.asset('assets/icons/homepage.svg'),
              ),
              label: ("Home"),
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 20,
                height: 20,
                child: _selectedIndex == 1
                    ? new SvgPicture.asset('assets/icons/order_active.svg')
                    : new SvgPicture.asset('assets/icons/order.svg'),
              ),
              label: ("My Order"),
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 20,
                height: 20,
                child: _selectedIndex == 2
                    ? new SvgPicture.asset('assets/icons/history_active.svg')
                    : new SvgPicture.asset('assets/icons/history.svg'),
              ),
              label: ("History"),
              // 2071c1
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 20,
                height: 20,
                child: _selectedIndex == 3
                    ? new SvgPicture.asset('assets/icons/user_active.svg')
                    : new SvgPicture.asset('assets/icons/user.svg'),
              ),
              label: ("Account"),
            )
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: mBlueColor,
          unselectedItemColor: mSubtitleColor,
          onTap: _onItemTapped,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          showUnselectedLabels: true,
          elevation: 0,
        ));
  }
}
