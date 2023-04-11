import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List size = ['UE', 'US', 'UK'];
  var select;
  var sizeSelect = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.arrow_back_ios_new),
            Text(
              'Detail',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  letterSpacing: 1.3),
            ),
            Icon(
              Icons.favorite,
              color: Colors.red,
            )
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://github.com/abenkoula71/day20/blob/main/nike-air-max-190-og-red-removebg-preview.png?raw=true'))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nike Air Force',
                  style: TextStyle(
                      letterSpacing: 1.3,
                      wordSpacing: 1.5,
                      fontWeight: FontWeight.w900,
                      fontSize: 20),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 28,
                      color: Color.fromARGB(255, 253, 190, 42),
                    ),
                    Text(
                      '4.7',
                      style: TextStyle(
                          letterSpacing: 1.3,
                          wordSpacing: 1.5,
                          fontWeight: FontWeight.w900,
                          fontSize: 20),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'men runnig shoes',
              style:
                  TextStyle(color: Colors.black38, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Size',
                  style: TextStyle(
                      letterSpacing: 1.3,
                      wordSpacing: 1.5,
                      fontWeight: FontWeight.w900,
                      fontSize: 18),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ...List.generate(
                        size.length,
                        (index) => GestureDetector(
                              onTap: () {
                                sizeSelect = index;
                                setState(() {});
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 7),
                                child: Text(
                                  size[index],
                                  style: TextStyle(
                                      letterSpacing: 1.3,
                                      wordSpacing: 1.5,
                                      color: sizeSelect == index
                                          ? Color.fromARGB(255, 30, 123, 199)
                                          : Colors.black38,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                            ))
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...List.generate(
                    7,
                    (index) => GestureDetector(
                          onTap: () {
                            select = index;
                            setState(() {});
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 40,
                            margin: EdgeInsets.only(right: 11.8),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: select == index
                                        ? Color.fromARGB(255, 30, 123, 199)
                                        : Colors.transparent),
                                borderRadius: BorderRadius.circular(10),
                                color: select == index
                                    ? Colors.transparent
                                    : Color.fromARGB(185, 216, 216, 216)),
                            child: Text(
                              '${index + 40}',
                              style: TextStyle(
                                  letterSpacing: 1.3,
                                  wordSpacing: 1.5,
                                  color: select == index
                                      ? Color.fromARGB(255, 30, 123, 199)
                                      : Colors.black38,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Description',
              style: TextStyle(
                  letterSpacing: 1.3,
                  wordSpacing: 1.5,
                  fontWeight: FontWeight.w900,
                  fontSize: 18),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'DescriptionDescription Description Description Description Description Description DescriptionDescription Description Description Description Description Description  Description Description Description Description Description  Description Description Description Description Description  Description Description Description Description Description',
              style: TextStyle(
                  letterSpacing: 1.3,
                  wordSpacing: 1.5,
                  height: 1.5,
                  fontSize: 12,
                  color: Colors.black45),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    '\$ 150.00',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 26, 97, 229)),
                    child: Text(
                      '+ Add To Chart',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
