import 'package:day18/widgets/most_popular.dart';
import 'package:day18/widgets/travel_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(
              Icons.menu,
              size: 40,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "Travel Blog",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Expanded(flex: 2, child: TravelBlogPage()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Most Popular",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "View All ->",
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
          Expanded(flex: 1, child: MostPopularPage()),
        ],
      ),
    );
  }
}
