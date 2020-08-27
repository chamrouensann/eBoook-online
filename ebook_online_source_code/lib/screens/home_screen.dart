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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.display1,
                        children: [
                          TextSpan(text: "Best of the "),
                          TextSpan(
                            text: "Day",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    height: 205,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 24, top: 50, right: size.width * .35),
                            height: 185,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFFEAEAEA).withOpacity(.45),
                              borderRadius: BorderRadius.circular(19),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "The best book in Cambodia for the first 11 March 2020. I really love the book.",
                                  style: TextStyle(
                                    fontSize: 9,
                                    color: kLightBlackColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "How to win friend & Influence people",
                                  style: Theme.of(context).textTheme.title,
                                ),
                                Text(
                                  "Gary Vanchuk",
                                  style: TextStyle(
                                    color: kLightBlackColor,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: <Widget>[
                                    BookRating(score: 4.6),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Text(
                                        "When I read this book, I feel like this book is very good for student to study and mental break down, So please don't give up of the life during this COVID-19. I know I love you more than I like you.",
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: kLightBlackColor,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: Image.asset(
                            "assets/images/book-3.png",
                            width: size.width * .27,
                          ),
                        )
                      ],
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
