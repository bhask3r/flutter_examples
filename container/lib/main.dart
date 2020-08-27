import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          //center is used to keep container in center
          child: Container(
            width: 400,
            height: 400,

            padding: const EdgeInsets.all(
                20), //gives the padding to the content inside it
            // color: Colors
            //     .red,
            //color property cannot be used here while using box decoration
            decoration: BoxDecoration(
                color: Colors.red, //add color to container
                // shape: BoxShape.circle, // it makes container shape to circle
                // border: Border.all(
                //   width: 5,
                //   color: Colors.black,
                // ),
                //cutomize every side
                // border: Border(
                //     left: BorderSide(
                //   width: 10,
                //   color: Colors.blue,
                // )),
                image: DecorationImage(
                  image: AssetImage(
                    'images/img.jpg',
                  ),
                  onError: (exception, stackTrace) =>
                      print(stackTrace.toString()),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))),

            constraints: BoxConstraints(
              maxHeight: 400,
              minHeight: 200,
              maxWidth: 400,
              minWidth: 200,
              //it depends on devices smaller device will go to minimum
            ),
            clipBehavior: Clip.none,
            foregroundDecoration: BoxDecoration(
                //same properties as above

                ),
          ),
        ),
      ),
    );
  }
}
