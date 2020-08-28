import 'package:ebookonlinesourcecode/constants.dart';
import 'package:ebookonlinesourcecode/widgets/book_rating.dart';
import 'package:ebookonlinesourcecode/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  height: size.height * .4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: size.height * .1),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Crushing &",
                                    style: Theme.of(context).textTheme.display1,
                                  ),
                                  Text(
                                    "Influence",
                                    style: Theme.of(context)
                                        .textTheme
                                        .display1
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                              "August has a special hold on those of us who are incurable romantics. Somewhere between daydreaming in the sun and gazing at the Perseid meteor shower at night, we chase the last glimpse of summer in swoon-worthy romance novels. August has a special hold on those of us who are incurable romantics. Somewhere between daydreaming in the sun and gazing at the Perseid meteor shower at night, we chase the last glimpse of summer in swoon-worthy romance novels.August has a special hold on those of us who are incurable romantics. Somewhere between daydreaming in the sun and gazing at the Perseid meteor shower at night, we chase the last glimpse of summer in swoon-worthy romance novels.",
                                              maxLines: 6,
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: kLightBlackColor,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            RoundedButton(
                                              text: "Read More",
                                              verticalPadding: 12,
                                            )
                                          ],
                                        ),
                                      ),
                                      Column(
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(Icons.favorite_border),
                                            onPressed: () {},
                                          ),
                                          BookRating(score: 5.0),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Image.asset(
                              "assets/images/book-1.png",
                              height: 200,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
