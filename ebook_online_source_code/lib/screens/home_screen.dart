import 'package:ebookonlinesourcecode/constants.dart';
import 'package:ebookonlinesourcecode/widgets/reading_cart_list.dart';
import 'package:ebookonlinesourcecode/widgets/two_side_rounded_button.dart';
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
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  ReadingListCard(
                    image: "assets/images/book-1.png",
                    title: "Crushing & Influence",
                    auth: "Rouen Pro",
                    rating: 4.7,
                  ),
                  ReadingListCard(
                    image: "assets/images/book-2.png",
                    title: "Top 10 Business hack",
                    auth: "Dara Lay",
                    rating: 4.7,
                  ),
                  ReadingListCard(
                    image: "assets/images/book-3.png",
                    title: "How to win friends",
                    auth: "Hong Kimvai",
                    rating: 4.7,
                  ),
                  ReadingListCard(
                    image: "assets/images/book-1.png",
                    title: "Crushing & Influence",
                    auth: "Hong Kimvai",
                    rating: 4.7,
                  ),
                  ReadingListCard(
                    image: "assets/images/book-1.png",
                    title: "Crushing & Influence",
                    auth: "Rouen Pro",
                    rating: 4.7,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
