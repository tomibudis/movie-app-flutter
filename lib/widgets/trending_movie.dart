import 'package:flutter/material.dart';
import 'package:myapp_flutter/constants/colors.dart';
import 'package:myapp_flutter/constants/style_constant.dart';

class TrendingMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.all(16),
              child: Text('Trending', style: mTitleStyle)),
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
                    height: 200,
                    width: (MediaQuery.of(context).size.width - 42) / 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4)),
                            image: DecorationImage(
                              image: AssetImage('assets/images/up-movie.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Title Movie', style: mServiceTitleStyle),
                                Text('4.3')
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
