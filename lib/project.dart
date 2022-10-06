import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPage extends StatelessWidget{
  const ProjectsPage({Key?key}) : super (key:key);
   @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      home: SafeArea(
        
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            // title: const Text('Projects',
            // style: TextStyle(
            //   fontSize: 20,
            //   color: Color.fromARGB(255, 30, 29, 29),
            // ),
            // ),
            leading: IconButton(
              onPressed:  () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 30, 29, 29),),
              ),
          ),
          body: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    final Uri _url = Uri.parse('https://github.com/hamdifu/LangLearn');
                    _launchUrl(_url);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top:10,left: 25,right: 25),
                    width: double.maxFinite,
                    height: 148,
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFFf1067c).withOpacity(0.8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10.0,
                          spreadRadius: 5,
                          offset: Offset(5.0,5.0,),
                        )
                      ],
                                      ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'LangLearn',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                              'An app that can help one learn the language of their choice',
                              style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ),
                GestureDetector(
                  onTap: () {
                    final Uri _url = Uri.parse('https://github.com/hamdifu/Anshika-blog');
                    _launchUrl(_url);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top:25,left: 25,right: 25),
                    width: double.maxFinite,
                    height: 166,
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFFf1067c).withOpacity(0.8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10.0,
                          spreadRadius: 5,
                          offset: Offset(5.0,5.0,),
                        )
                      ],
                                      ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Blogging Website',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                              'A website with fully encrypted authentication system and features to edit,add,delete and comment on blogs.',
                              style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ),
                GestureDetector(
                  onTap: () {
                    final Uri _url = Uri.parse('https://github.com/');
                    _launchUrl(_url);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top:25,left: 25,right: 25),
                    width: double.maxFinite,
                    height: 143,
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFFf1067c).withOpacity(0.8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10.0,
                          spreadRadius: 5,
                          offset: Offset(5.0,5.0,),
                        )
                      ],
                                      ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'LangLearn',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                              'An app that can help one learn the language of their choice',
                              style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ),
              ],
            ),
        )
      ),
    );
  }
  
}
Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}