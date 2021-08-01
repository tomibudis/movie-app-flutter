import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:myapp_flutter/constants/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp_flutter/constants/style_constant.dart';
import 'package:myapp_flutter/models/carousel_model.dart';
import 'package:myapp_flutter/widgets/bottom_navigation_hellotoms.dart';
import 'package:myapp_flutter/widgets/category_movie.dart';
import 'package:myapp_flutter/widgets/trending_movie.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  void _onIndexChange(int indexKey) {
    setState(() {
      _currentIndex = indexKey;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: mBackgroundColor,
          title: Row(
            children: [
              SvgPicture.asset(
                'assets/svg/logo.svg',
                width: 20,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  'hellotoms',
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          elevation: 0,
        ),
        backgroundColor: mBackgroundColor,
        bottomNavigationBar: BottomNavigationHellotoms(),
        body: Container(
            child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: Text('Hi, tomi 🤘 this Movies for You!',
                    style: mTitleStyle)),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 16, right: 16),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 190,
                    child: Swiper(
                      onIndexChanged: _onIndexChange,
                      autoplay: false,
                      layout: SwiperLayout.DEFAULT,
                      itemCount: carousels.length,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage(carousels[index].image),
                                fit: BoxFit.cover,
                              )),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: map<Widget>(carousels, (index, image) {
                          return Container(
                            alignment: Alignment.centerLeft,
                            height: 10,
                            width: 6,
                            margin: EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _currentIndex == index
                                    ? mBlueColor
                                    : mGreyColor),
                          );
                        }),
                      ),
                      Text('More...', style: mMoreDiscountStyle)
                    ],
                  ),
                ],
              ),
            ),
            CategoryMovie(),
            TrendingMovie(),
          ],
        )));
  }
}
