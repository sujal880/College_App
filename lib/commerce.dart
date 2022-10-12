//Wap in Flutter To Design A Commerce Page

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Commerce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(children: [
                      Container(
                        height: 300,
                        width: 400,
                        child: Image.asset('assets/images/commerce1.png',
                            fit: BoxFit.fill),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 230),
                        child: Stack(children: [
                          Container(
                            height: 800,
                            width: 400,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                start: 20, top: 20),
                            child: Text('Aishwarya College',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue)),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                top: 50, start: 20),
                            child: Text('Faculty of Commerce',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25)),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        top: 90, start: 20),
                                    child: Text('4.5',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                            fontSize: 18)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        top: 90),
                                    child:
                                    Icon(Icons.star, color: Colors.yellow),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        top: 70),
                                    child: Text('.',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 40,
                                            color: Colors.grey)),
                                  ),
                                  SizedBox(width: 4),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        top: 95),
                                    child: Text('48K learners',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                            fontSize: 18)),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 415,
                                height: 50,
                                color: Colors.blue,
                                child: TabBar(
                                  tabs: [
                                    Tab(
                                      child: Text('Overview',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Tab(
                                      child: Text('Curriculum',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Tab(
                                      child: Text('Related',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20)),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 415,
                                height: 900,
                                color: Colors.greenAccent,
                                child: TabBarView(
                                  children: [One(), Two(), Three()],
                                ),
                              )
                            ],
                          ),
                        ]),
                      ),
                    ]),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class One extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 20),
                  Image.asset('assets/images/certificate.png',height:50),
                  SizedBox(width: 20),
                  Text('Completion certificate',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(width: 20),
                  Icon(Icons.calendar_month,size: 50,color: Colors.black38),
                  SizedBox(width: 20),
                  Text('3 Years of Free Access',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(width: 20),
                  Image.asset('assets/images/level.png',height: 50,color: Colors.black38),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Text('Graduation Level Course',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 7),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(end: 160),
                        child: Text('(3 Years)',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.grey)),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(width: 20),
                  Image.asset('assets/images/trophy.png',height: 50),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Text('Enroll Now',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 20,
                width: double.infinity,
                color: Colors.black12,
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text('What will I learn?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text('1.Bachelor of Commerce (B.Com)',style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  Text('          BCom or Bachelor of Commerce course is a\n          three-year UG degree course recognised by the\n          Universities Grants Commission (UGC). Along\n          with the full-time delivery mode, one can also\n          pursue Distance BCom or Online BCom course',style: TextStyle(fontSize: 15),),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text('2.Master of Commerce (M.Com)',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 50),
                child: Text('         In this course, you will study about principles of\n         accounting, money & banking systems, economic\n         theory, knowledge about business, micro &\n         macroeconomics, management, etc. This course\n         is suitable for students, those want to go for higher\n         studies or do research work in the area of statistics &\n         other related areas.'),
              ),
              SizedBox(height: 30),
              Container(
                height: 20,
                width: double.infinity,
                color: Colors.black12,
              )
            ],
          ),
        )
    );
  }
}
class Two extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey
                  ),
                )
              ],
            )
          ],
        )
    );
  }
}

class Three extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Hello'),
    );
  }
}
