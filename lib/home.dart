import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key?key}) : super (key:key);

// IconButton(
//                           onPressed:
//                           Icons.navigate_next_rounded,
//                           color: Colors.white,
//                           size: 32,
//                         ),
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: SafeArea(
        //to save children from any obstruction from notch and enough padding to avoid status bar
        child: Scaffold(
          body: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "images/a.png"
                ),
                fit: BoxFit.fitHeight,
                alignment: Alignment.bottomRight
              )
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150,left: 30,right: 30),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Anshika',
                        style: TextStyle(
                          color: Color.fromARGB(255, 39, 38, 38),
                          fontSize: 45,
                          fontWeight: FontWeight.bold

                        ),
                      ),
                      // ignore: prefer_const_constructors
                      Text(
                        'Maini',
                        style: TextStyle(
                          color: Color.fromARGB(255, 54, 53, 53),
                          fontSize: 40,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top:15,bottom: 20),
                        width: 220,
                        child: Text(
                        'A UI/UX designer and a Computer Science student ,who has a passion for creating minimalistic designs.',
                        style: TextStyle(
                          color: Color.fromARGB(255, 73, 72, 72),
                        ),
                      ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFf1067c).withOpacity(0.8)
                        ),
                        child:IconButton(
                          onPressed: (){
                              Navigator.pushNamed(context, 'projects_page');
                          },
                          icon: const Icon(
                          Icons.navigate_next_rounded,
                          color: Colors.white,
                          size: 32,
                        ),
                          )
                      ),
                      
                    ],
                  )
                ],
              ),

            ),
          )
        ),
      ),
    );
  }
}