import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shimmer/shimmer.dart';

class SecondPage extends StatefulWidget {
  SecondPage({required this.result});

  double result;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Result"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [Center(),
          Container (
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0,),
              color: Colors.pink,
            ),
            width: 400,
            height: 55.0,
            child: MaterialButton(
              onPressed: (){
                Navigator.pop(context);

              },
              child: const Text(
                "RE CALCULATE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),

          Container (
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0,),
                color: Colors.green,
              ),
            width: 400,
            height: 55.0,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [Text("Your BMI is ${widget.result.round()}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
              ],
            ),
          ),

          SizedBox(
            width: 200.0,
            height: 100.0,
            child: Shimmer.fromColors(
              baseColor: Colors.cyanAccent,
              highlightColor: Colors.pink,
              child: Text(
                'Rate the app:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight:
                  FontWeight.bold,
                ),
              ),
            ),
          ),


         
          RatingBar.builder(
            initialRating: 5,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          )



        ]
      ),

    );
  }
}
