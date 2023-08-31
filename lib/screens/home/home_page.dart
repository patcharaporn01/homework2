import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    '/Users/patcharaporn/StudioProjects/untitled/asset/cancel.png',
                    height: 40,
                    width: 40,
                  ),
                ),
                Text(
                  'Premium',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      ' ',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Text('The Secrets to be Fluent in English'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Row(
                      children: [
                        Expanded(child: _buildCategoryButton('Full Access to \nPattern Lessons','/Users/patcharaporn/StudioProjects/untitled/asset/notebook.png', true,)),
                        SizedBox(width: 16.0),
                        Expanded(child: _buildCategoryButton('Unlock \n All Limitations', '/Users/patcharaporn/StudioProjects/untitled/asset/board.png', false,)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Row(
                      children: [
                        Expanded(child: _buildCategoryButton('All Topic \n Available','/Users/patcharaporn/StudioProjects/untitled/asset/info.png' , false,)),
                        SizedBox(width: 16.0),
                        Expanded(child: _buildCategoryButton('Personlized \n Coaching','/Users/patcharaporn/StudioProjects/untitled/asset/graduation.png',false,)),
                      ],
                    ),
                  ),
                    SizedBox(height: 30),
                    Text(
                        '2021 Special Early Birds Offer',
                      style:TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurpleAccent,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.deepPurpleAccent,
                    )
                    ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'IDR50.000',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '/month',
                        style: TextStyle(
                          fontSize: 10.0,
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: ElevatedButton(
                          onPressed: () {

                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                          ),
                          child: Text(
                            'Start 3 Days Free trial',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 30),
                  Text(
                      'View all Plan',
                      style:TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black,
                      )
                  ),

                ],
              ),

            ),
          ),
        ],
      ),
    );
  }

  Container _buildCategoryButton(String text, String imagePath, bool isSelected ) {
      return Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: isSelected ? Colors.greenAccent : Colors.lightBlue,
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.cyan.withOpacity(0.3),
              spreadRadius: 7,
              blurRadius: 12,
              offset: Offset(0, 10),
            ),
          ],
        ),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 60,
            width: 60,
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),

        ],
      ),
    );

  }
}
