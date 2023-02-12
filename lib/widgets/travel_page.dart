import 'package:day18/model/travel.dart';
import 'package:flutter/material.dart';

class TravelBlogPage extends StatefulWidget {
  const TravelBlogPage({Key? key}) : super(key: key);

  @override
  State<TravelBlogPage> createState() => _TravelBlogPageState();
}

class _TravelBlogPageState extends State<TravelBlogPage> {
  final travel_list = Travel.generatedTravelList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: travel_list.length,
          itemBuilder: (context, index) {
        var travelList = travel_list[index];
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5,right: 10,bottom: 40),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  travelList.img,
                  height: double.infinity,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
            Positioned(
              bottom: 50,
                left: 20,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(travelList.name,style: TextStyle(fontSize: 20,color: Colors.white),),
                Text(travelList.address,style: TextStyle(fontSize: 30,color: Colors.white),),
              ],
            ),),
            Positioned(
              right: 0,
                bottom: 10,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.orange
                  ),
                  child: Icon(Icons.arrow_forward),
                ),
              
            ),
          ],
        );
      }),
    );
  }
}
