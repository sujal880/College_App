//Wap in Flutter To Design A Science Page
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Science extends StatelessWidget {
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
                        child: Image.asset('assets/images/sci.jpg',
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
                            child: Text('Faculty of Science',
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
                  Text('1.Bachelor of Science (B.S.C)',style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  Text('          The professional BSc. courses cover more\n           job oriented subjects like agriculture,\n          animation, aquaculture, biochemistry,\n          bioinformatics, genetics, computer science,\n          fashion technology, electronics, multimedia,\n          physiotherapy, psychology and many others.',style: TextStyle(fontSize: 15),),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text('2.Master of Science (M.S.C)',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 50),
                child: Text('           Full form of M.Sc is Master of Science (MSc).\n           MSc is a two-year duration postgraduate degree\n           course offered by universities and colleges in\n           various specialised Science fields such as Physics,\n           Biology, Chemistry, Mathematics, Botany,\n           Biotechnology, Microbiology, Environmental\n           Sciences,Food Sciences, Life Sciences, and so on.'),
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
