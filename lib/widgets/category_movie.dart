import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myapp_flutter/constants/colors.dart';
import 'package:myapp_flutter/constants/style_constant.dart';

class CategoryMovie extends StatefulWidget {
  @override
  _CategoryMovieState createState() => _CategoryMovieState();
}

class _CategoryMovieState extends State<CategoryMovie> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.all(16),
              child: Text('Category', style: mTitleStyle)),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: mGreyColor,
                    ),
                  ),
                  height: 70,
                  width: (MediaQuery.of(context).size.width - 52) / 3,
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image(
                              image: AssetImage('assets/images/confetti.png')),
                        ),
                        Text('Action', style: mServiceTitleStyle)
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: mGreyColor,
                    ),
                  ),
                  height: 70,
                  width: (MediaQuery.of(context).size.width - 52) / 3,
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image(
                              image: AssetImage('assets/images/dancing.png')),
                        ),
                        Text('Comedy', style: mServiceTitleStyle)
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: mGreyColor,
                    ),
                  ),
                  height: 70,
                  width: (MediaQuery.of(context).size.width - 52) / 3,
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image(
                              image: AssetImage('assets/images/drum-set.png')),
                        ),
                        Text('Fantasy', style: mServiceTitleStyle)
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: mGreyColor,
                    ),
                  ),
                  height: 70,
                  width: (MediaQuery.of(context).size.width - 52) / 3,
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image(
                              image: AssetImage('assets/images/fried.png')),
                        ),
                        Text('Cooking', style: mServiceTitleStyle)
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: mGreyColor,
                    ),
                  ),
                  height: 70,
                  width: (MediaQuery.of(context).size.width - 52) / 3,
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image(
                              image: AssetImage('assets/images/love.png')),
                        ),
                        Text('Romatic', style: mServiceTitleStyle)
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: mGreyColor,
                    ),
                  ),
                  height: 70,
                  width: (MediaQuery.of(context).size.width - 52) / 3,
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image(
                              image: AssetImage('assets/images/reading.png')),
                        ),
                        Text('Sci-fi', style: mServiceTitleStyle)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
