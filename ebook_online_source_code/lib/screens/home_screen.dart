import 'package:ebookonlinesourcecode/constants.dart';
import 'package:flutter/material.dart';
import 'package:ebookonlinesourcecode/widgets/book_rating.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/main_page_bg.png"),
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: size.height * .1),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.display1,
                  children: [
                    TextSpan(text: "What are you \nreading "),
                    TextSpan(
                        text: "today?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 240,
              width: 210,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 10,
                    left: 10,
                    right: 0,
                    child: Container(
                      height: 221,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(29),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 33,
                            color: kShadowColor,
                          )
                        ],
                      ),
                    ),
                  ),
                  Image.asset("assets/images/book-1.png"),
                  Positioned(
                    top: 35,
                    right: 0,
                    child: Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.favorite_border),
                          onPressed: () {},
                        ),
                        BookRating(
                          score: 3.9,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 200,
                    child: Container(
                      height: 85,
                      width: 202,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 24),
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(color: kBlackColor),
                                children: [
                                  TextSpan(
                                    text: "Crushing & Influence\n",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "Rouen Pro",
                                    style: TextStyle(color: kLightBlackColor),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
