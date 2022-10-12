//Wap in Flutter To Design College App
import 'dart:async';
import 'package:college_app/science.dart';
import 'package:college_app/search.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:particles_flutter/particles_flutter.dart';
import 'e_library.dart';
import 'externallinks.dart';
import 'college_arts.dart';
import 'commerce.dart';
import 'cscience.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
main() {
  runApp(My_App());
}

class My_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreen();
}
class SplashScreen extends State<Splash>{
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
    });
    super.initState();
  }

  @override

  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            CircularParticle(
              width: w,
              height: h,
              awayRadius: w / 5,
              numberOfParticles: 150,
              speedOfParticles: 1.5,
              maxParticleSize: 7,
              particleColor: Colors.blue.withOpacity(.7),
              awayAnimationDuration: Duration(milliseconds: 600),
              awayAnimationCurve: Curves.easeInOutBack,
              onTapAnimation: true,
              isRandSize: true,
              isRandomColor: false,
              connectDots: true,
              enableHover: true,
              hoverColor: Colors.black12,
              hoverRadius: 90,
            ),
            Center(child: Image.asset('assets/images/WhatsApp Image 2022-08-24 at 8.37.01 AM.jpeg'))
          ],
        )
    );
  }
}
class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 900,
                child: Image.asset(
                  'assets/images/login.jpeg',
                  fit: BoxFit.fitHeight,
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                      top: 140, start: 40, end: 40, bottom: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 80,
                        color: Colors.cyan,
                      ),
                      Stack(
                        children: [
                          Column(
                            children: [
                              Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 8,
                                shadowColor: Colors.blueGrey,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(26)),
                                child: SizedBox(
                                  height: 440,
                                  width: 315,
                                  child: Stack(
                                    children: [
                                      //Image.asset('assets/images/card7.jpg',fit: BoxFit.cover,height: 440,width: 315,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsetsDirectional.only(
                                              top: 25,
                                              start: 15,
                                              end: 15,
                                            ),
                                            child: TextField(
                                              keyboardType: TextInputType.text,
                                              decoration: InputDecoration(
                                                  suffixIcon: Icon(Icons.account_circle),
                                                  hintText: 'Name',
                                                  label: Text(
                                                    'User-Name',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold),
                                                  ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(26),
                                                    borderSide:
                                                    BorderSide(color: Colors.black),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(26)
                                                  )
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional.only(
                                              top: 20,
                                              start: 15,
                                              end: 15,
                                            ),
                                            child: TextField(
                                              keyboardType: TextInputType.text,
                                              obscureText: true,
                                              decoration: InputDecoration(
                                                  suffixIcon: Icon(Icons.key),
                                                  hintText: 'Password',
                                                  label: Text(
                                                    'Password',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 16,
                                                        color: Colors.black),
                                                  ),
                                                  enabledBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(26),
                                                      borderSide:
                                                      BorderSide(color: Colors.black)
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(26)
                                                  )
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          TextButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) => Forgot()));
                                              },
                                              child: Text(
                                                'Forgot Password?',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              )),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen())
                                                );
                                              },
                                              child: Text(
                                                'LOG IN',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              )),
                                          TextButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) => SignUp()));
                                              },
                                              child: Text(
                                                'SIGNUP',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,color: Colors.black
                                                ),
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
            children: [

              Container(
                height: 1070,
                width: double.infinity,
                child: Image.asset('assets/images/backsign.jpeg',),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Column(
                children: [

                  Container(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(
                          start: 35, bottom: 100, end: 35),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.only(top: 150),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.account_circle,
                                size: 80,
                                color: Colors.blue,
                              ),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(26)),
                                child: Container(
                                  height: 440,
                                  width: 315,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: TextField(
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                            suffixIcon:
                                            Icon(Icons.account_circle),
                                            hintText: 'Name',
                                            label: Text(
                                              'Name',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(26),
                                                borderSide: BorderSide(
                                                    color: Colors.black)
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(26)
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: TextField(
                                          keyboardType: TextInputType.text,
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            suffixIcon: Icon(Icons.key),
                                            hintText: 'Password',
                                            label: Text(
                                              'Password',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(26),
                                                borderSide: BorderSide(
                                                    color: Colors.black)
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(26)
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              suffixIcon: Icon(Icons.phone),
                                              hintText: 'Number',
                                              label: Text(
                                                'Phone Number',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                    color: Colors.black),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(26),
                                                  borderSide: BorderSide(
                                                      color: Colors.black)
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(26)
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Sign Up',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )


      ),
    );
  }
}

class Forgot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 860,
              width: 600,
              color: Colors.blueGrey,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 35, end: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.key, size: 50,color: Colors.cyan,),
                    Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                      child: Container(
                        height: 440,
                        width: 315,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.key),
                                    hintText: 'Password',
                                    label: Text(
                                      'Current Password',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          fontFamily: ' Monteserrat',
                                          color: Colors.black),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(26)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(26)
                                    )
                                ),

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.lock),
                                    hintText: 'Password',
                                    label: Text(
                                      'New Password',
                                      style: TextStyle(
                                          fontFamily: 'Monteserrat',
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(26),
                                        borderSide:
                                        BorderSide(color: Colors.black)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(26)
                                    )
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      suffixIcon: Icon(Icons.key),
                                      hintText: 'Password',
                                      label: Text('Confirm Password',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              fontFamily: 'Monteserrat',
                                              color: Colors.black)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(26)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(26)
                                      )
                                  )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Continue',
                                  style: TextStyle(
                                      fontFamily: 'Monteserrat',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}






class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Stack(children: [
                    Container(
                      height: 100,
                      width: 400,
                      color: Colors.blue,
                    ),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(top: 60),
                          child: Text('Hi, Sujal!',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                        Row(
                          children: [
                            SizedBox(width: 200),
                            Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(top: 60),
                              child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Search()));
                                  },
                                  child: Hero(
                                      tag: 'hero',
                                      child: Icon(Icons.search,
                                          color: Colors.white))),
                            ),
                            SizedBox(width: 30),
                            Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(top: 60),
                              child: Icon(
                                Icons.notifications_none,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ])
                ],
              ),
            ),
            SizedBox(height: 20),
            CarouselSlider(
              items: [
                Card(
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    height: 170,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Image.asset('assets/images/edu.webp',
                        fit: BoxFit.cover),
                  ),
                ),
                Card(
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14)),
                  child: Container(
                      clipBehavior: Clip.antiAlias,
                      height: 170,
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14)),
                      child: Image.asset('assets/images/education.jpg',
                          fit: BoxFit.cover)),
                ),
                Card(
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Container(
                      clipBehavior: Clip.antiAlias,
                      height: 170,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Image.asset('assets/images/edu2.jpg',
                          fit: BoxFit.cover)),
                ),
              ],
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayInterval: Duration(milliseconds: 100),
              ),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                SizedBox(width: 20),
                Text('Top Categories', style: TextStyle(fontSize: 26)),
              ],
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 24),
                  Stack(children: [
                    Container(
                      height: 70,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                            colors: [Colors.lightBlueAccent, Colors.white]),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only(top: 15, start: 30),
                      child: Row(
                        children: [
                          CircleAvatar(
                            child: Image.asset('assets/images/info.png'),
                            radius: 20,
                          ),
                          SizedBox(width: 5),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(top: 5),
                            child: Text('About Us',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22)),
                          )
                        ],
                      ),
                    )
                  ]),
                  SizedBox(width: 20),
                  Stack(children: [
                    Container(
                      height: 70,
                      width: 210,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                              colors: [Colors.purpleAccent, Colors.white])),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only(top: 15, start: 15),
                      child: Row(
                        children: [
                          CircleAvatar(
                            child: Image.asset('assets/images/external.png',
                                height: 35),
                            backgroundColor: Colors.black12,
                          ),
                          SizedBox(width: 5),
                          InkWell(onTap:(){
                            Navigator.push(context,MaterialPageRoute(builder:(context)=>ExternalLinks()));
                          },
                            child: Text('External Links',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22)),
                          )
                        ],
                      ),
                    )
                  ]),
                  SizedBox(width: 25),
                  Stack(children: [
                    Container(
                      height: 70,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                              colors: [Colors.yellowAccent, Colors.white])),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only(start: 20, top: 15),
                      child: Row(
                        children: [
                          CircleAvatar(
                            child:
                                Icon(Icons.tv, size: 35, color: Colors.black),
                            backgroundColor: Colors.black12,
                            radius: 20,
                          ),
                          SizedBox(width: 15),
                          Text('Lectures',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold))
                        ],
                      ),
                    )
                  ]),
                  SizedBox(width: 20),
                  Stack(children: [
                    Container(
                      height: 70,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                              colors: [Colors.greenAccent, Colors.white])),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only(top: 15, start: 20),
                      child: Row(
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.menu_book_sharp,
                                color: Colors.black, size: 35),
                            backgroundColor: Colors.black12,
                            radius: 20,
                          ),
                          SizedBox(width: 15),
                          InkWell(onTap:(){
                            Navigator.push(context,MaterialPageRoute(builder:(context)=>E_Library()));
                          },
                            child: Text('E-Library',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22)),
                          )
                        ],
                      ),
                    )
                  ])
                ],
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 15,
                    width: 400,
                    color: Colors.black12,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                Text('Our Courses', style: TextStyle(fontSize: 26)),
                SizedBox(width: 130),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 7),
                      child: Text('SEE ALL',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue)),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 7),
                      child: Icon(Icons.arrow_circle_right,
                          color: Colors.blue, size: 20),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Card(
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Arts()));
                          },
                          child: Container(
                            height: 260,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.black12),
                          ),
                        ),
                        Row(children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                top: 20, start: 20),
                            child: Text('Arts',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30)),
                          ),
                        ]),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                              start: 180, top: 20),
                          child: Stack(children: [
                            Container(
                              clipBehavior: Clip.antiAlias,
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Image.asset('assets/images/arts.jpg',
                                  fit: BoxFit.cover),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  start: 20, top: 90),
                              child: Stack(children: [
                                Container(
                                  height: 20,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.green),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                      start: 15, top: 2),
                                  child: Text('Arts',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                )
                              ]),
                            )
                          ]),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  top: 115, start: 20),
                              child: Text('4.5',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: 16)),
                            ),
                            SizedBox(width: 3),
                            Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(top: 115),
                              child: Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                            ),
                            SizedBox(width: 3),
                            Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(top: 95),
                              child: Text('.',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey)),
                            ),
                            SizedBox(width: 3),
                            Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(top: 120),
                              child: Text('48K learners',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey)),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                              top: 145, start: 20),
                          child: Stack(children: [
                            Container(
                              height: 20,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.blueAccent),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  top: 2, start: 3),
                              child: Text('Video Lessons',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(top: 40),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                      child: Image.asset(
                                          'assets/images/trophy.png')),
                                  SizedBox(width: 6),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        top: 2),
                                    child: Text('Enroll Now',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                            fontSize: 16)),
                                  ),
                                ],
                              ),
                            )
                          ]),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Card(
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Stack(children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Commerce()));
                        },
                        child: Container(
                          height: 260,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black12),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 20, start: 20),
                        child: Text('Commerce',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            start: 185, top: 20),
                        child: Stack(children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.asset('assets/images/commerce.png',
                                fit: BoxFit.fill),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                start: 23, top: 90),
                            child: Stack(children: [
                              Container(
                                height: 20,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.green),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 5, top: 4),
                                child: Text('Commerce',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              )
                            ]),
                          )
                        ]),
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    top: 115, start: 20),
                                child: Text('4.3K',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsetsDirectional.only(top: 110),
                                child: Icon(Icons.star, color: Colors.yellow),
                              ),
                              SizedBox(width: 3),
                              Padding(
                                padding:
                                    const EdgeInsetsDirectional.only(top: 95),
                                child: Text('.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40,
                                        color: Colors.grey)),
                              ),
                              SizedBox(width: 3),
                              Padding(
                                padding:
                                    const EdgeInsetsDirectional.only(top: 115),
                                child: Text('40K learners',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 145, start: 20),
                        child: Stack(children: [
                          Container(
                            height: 20,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.blue),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                start: 3, top: 2),
                            child: Text(
                              'Video Lessons',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ]),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                top: 180, start: 20),
                            child: CircleAvatar(
                              child: Image.asset('assets/images/trophy.png'),
                            ),
                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(top: 180),
                            child: Text('Enroll Now',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 16)),
                          )
                        ],
                      )
                    ]),
                  ),
                  SizedBox(width: 20),
                  Card(
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Stack(children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Science()));
                        },
                        child: Container(
                          height: 260,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black12),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 20, start: 20),
                        child: Text('Science',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            start: 185, top: 20),
                        child: Stack(children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.asset('assets/images/Science.jpg',
                                fit: BoxFit.fill),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                start: 23, top: 90),
                            child: Stack(children: [
                              Container(
                                height: 20,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.green),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 13, top: 5),
                                child: Text('Science',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              )
                            ]),
                          )
                        ]),
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    top: 115, start: 20),
                                child: Text('4.3K',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsetsDirectional.only(top: 110),
                                child: Icon(Icons.star, color: Colors.yellow),
                              ),
                              SizedBox(width: 3),
                              Padding(
                                padding:
                                    const EdgeInsetsDirectional.only(top: 95),
                                child: Text('.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40,
                                        color: Colors.grey)),
                              ),
                              SizedBox(width: 3),
                              Padding(
                                padding:
                                    const EdgeInsetsDirectional.only(top: 115),
                                child: Text('40K learners',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 145, start: 20),
                        child: Stack(children: [
                          Container(
                            height: 20,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.blue),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                start: 3, top: 2),
                            child: Text(
                              'Video Lessons',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ]),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                top: 180, start: 20),
                            child: CircleAvatar(
                              child: Image.asset('assets/images/trophy.png'),
                            ),
                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(top: 180),
                            child: Text('Enroll Now',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 16)),
                          )
                        ],
                      )
                    ]),
                  ),
                  SizedBox(width: 20),
                  Card(
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Stack(children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CScience()));
                        },
                        child: Container(
                          height: 260,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black12),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 20, start: 20),
                        child: Text('Computer\nScience',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            start: 185, top: 20),
                        child: Stack(children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.asset('assets/images/computersci.jpg',
                                fit: BoxFit.fill),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                start: 23, top: 90),
                            child: Stack(children: [
                              Container(
                                height: 20,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.green),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 10, top: 5),
                                child: Text('CScience',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              )
                            ]),
                          )
                        ]),
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    top: 115, start: 20),
                                child: Text('4.3K',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsetsDirectional.only(top: 110),
                                child: Icon(Icons.star, color: Colors.yellow),
                              ),
                              SizedBox(width: 3),
                              Padding(
                                padding:
                                    const EdgeInsetsDirectional.only(top: 95),
                                child: Text('.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40,
                                        color: Colors.grey)),
                              ),
                              SizedBox(width: 3),
                              Padding(
                                padding:
                                    const EdgeInsetsDirectional.only(top: 115),
                                child: Text('40K learners',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 145, start: 20),
                        child: Stack(children: [
                          Container(
                            height: 20,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.blue),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                start: 3, top: 2),
                            child: Text(
                              'Video Lessons',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ]),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                top: 180, start: 20),
                            child: CircleAvatar(
                              child: Image.asset('assets/images/trophy.png'),
                            ),
                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(top: 180),
                            child: Text('Enroll Now',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 16)),
                          )
                        ],
                      )
                    ]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                SizedBox(width: 20),
                Text('Our College', style: TextStyle(fontSize: 26)),
                SizedBox(width: 140),
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 7),
                  child: Text('SEE ALL',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 7),
                  child: Icon(Icons.arrow_circle_right,
                      color: Colors.blue, size: 20),
                )
              ],
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Card(
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Stack(children: [
                      Container(
                        height: 260,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black12),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 20, start: 20),
                        child: Text("Principal's\nMessage",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            start: 185, top: 20),
                        child: Stack(children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.asset('assets/images/principal.jpg',
                                fit: BoxFit.fill),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                start: 23, top: 90),
                            child: Stack(children: [
                              Container(
                                height: 20,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.green),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 5, top: 7),
                                child: Text('Dr.Rishi Nepalia',
                                    style: TextStyle(
                                        fontSize: 7,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              )
                            ]),
                          ),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 140, start: 20),
                        child: Text(
                            'It gives me great pleasure to invite\nyou to take initial peek into the heart that\nbeats behind the appealing facade of\nAishwarya College.I thank you for your\ninterest in this exceptional institution.',
                            style: TextStyle(fontSize: 14)),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 230, start: 180),
                        child: Text('-Dr.Rishi Nepalia',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      )
                    ]),
                  ),
                  SizedBox(width: 20),
                  Card(
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Stack(children: [
                      Container(
                        height: 260,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black12),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 20, start: 20),
                        child: Text("HOD's\nMessage",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            start: 185, top: 20),
                        child: Stack(children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.asset('assets/images/naveensir.jpg',
                                fit: BoxFit.fill),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                start: 23, top: 90),
                            child: Stack(children: [
                              Container(
                                height: 20,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.green),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 5, top: 7),
                                child: Text('Mr.Naveen Joshi',
                                    style: TextStyle(
                                        fontSize: 7,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              )
                            ]),
                          ),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 140, start: 20),
                        child: Text(
                            'It gives me great pleasure to invite\nyou to take initial peek into the heart that\nbeats behind the appealing facade of\nAishwarya College.I thank you for your\ninterest in this exceptional institution.',
                            style: TextStyle(fontSize: 14)),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 230, start: 150),
                        child: Text('-Mr.Naveen Dutt Joshi',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      )
                    ]),
                  ),
                  SizedBox(width: 20),
                  Card(
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Stack(children: [
                      Container(
                        height: 260,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black12),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 20, start: 20),
                        child: Text("Professor's\nMessage",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            start: 185, top: 20),
                        child: Stack(children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.asset(
                                'assets/images/shailendrasir.jpg',
                                fit: BoxFit.fill),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                start: 16, top: 90),
                            child: Stack(children: [
                              Container(
                                height: 20,
                                width: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.green),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 7, top: 7),
                                child: Text('Dr.Shailendra Purohit',
                                    style: TextStyle(
                                        fontSize: 6,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              )
                            ]),
                          ),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 140, start: 20),
                        child: Text(
                            'It gives me great pleasure to invite\nyou to take initial peek into the heart that\nbeats behind the appealing facade of\nAishwarya College.I thank you for your\ninterest in this exceptional institution.',
                            style: TextStyle(fontSize: 14)),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 230, start: 150),
                        child: Text('-Dr.Shailendra Purohit',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      )
                    ]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width:20),
                Text('Top Courses',style:TextStyle(fontSize:26)),
                SizedBox(
                  width:130
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(top:7),
                  child: Text('SEE ALL',style:TextStyle(fontWeight:FontWeight.bold,color:Colors.blue)),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(top:7),
                  child: Icon(Icons.arrow_circle_right,size:20,color:Colors.blue),
                )
              ],
            ),
            SizedBox(height:30),
            Padding(
              padding: const EdgeInsetsDirectional.only(start:20),
              child: Column(
                children: [
                  SizedBox(width:20),
                  Stack(
                    children:[
                      Card(
                        elevation:15,
                        shape:RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(12)
                        ),
                        child: Container(
                            height:180,
                            width:350,
                            decoration:BoxDecoration(
                                borderRadius:BorderRadius.circular(12),
                                color:Colors.black12
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top:30,start:20),
                        child: Text('Introduction to C',style:TextStyle(fontWeight:FontWeight.bold,fontSize:26)),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.only(top:70,start:20),
                            child: Text('4.6',style:TextStyle(fontWeight:FontWeight.bold,fontSize:16,color:Colors.grey)),
                          ),
                          SizedBox(width:5),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(top:70),
                            child: Icon(Icons.star,color:Colors.yellow),
                          ),
                          SizedBox(width:5),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(top:50),
                            child: Text('.',style:TextStyle(fontWeight: FontWeight.bold,color:Colors.grey,fontSize:40)),
                          ),
                          SizedBox(width:7),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(top:70),
                            child: Text('196K learners',style:TextStyle(fontWeight:FontWeight.bold,color:Colors.grey)),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top:105,start:20),
                        child: Stack(
                          children:[
                            Container(
                                height:20,
                                width:100,
                                decoration:BoxDecoration(
                                    borderRadius:BorderRadius.circular(6),
                                    color:Colors.blue
                                )
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(top:2,start:3),
                              child: Text('Video Lessons',style:TextStyle(fontWeight:FontWeight.bold,color:Colors.white)),
                            )
                          ]
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.only(top:140,start:20),
                            child: Image.asset('assets/images/trophy.png',height:30),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(top:140,start:6),
                            child: Text('Enroll Now',style:TextStyle(fontWeight:FontWeight.bold,color:Colors.grey,fontSize:16)),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start:230,top:35),
                        child: Stack(
                          children:[
                            Container(
                                clipBehavior: Clip.antiAlias,
                                height:100,
                                width:100,
                                decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(12),
                                ),
                                child:Image.asset('assets/images/c.jpg',fit:BoxFit.cover)
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(top:90,start:10),
                              child: Stack(
                                children:[
                                  Container(
                                      height:20,
                                      width:80,
                                      decoration:BoxDecoration(
                                          borderRadius:BorderRadius.circular(12),
                                          color:Colors.green
                                      )
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(start:5,top:2),
                                    child: Text('C language',style:TextStyle(fontWeight:FontWeight.bold,fontSize:14,color:Colors.white)),
                                  )
                                ] 
                              ),
                            )
                          ] 
                        ),
                      )
                    ]
                  ),
                  SizedBox(height:20),
                  Stack(
                      children:[
                        Card(
                          elevation:15,
                          shape:RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(12)
                          ),
                          child: Container(
                              height:180,
                              width:350,
                              decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(12),
                                  color:Colors.black12
                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(top:30,start:20),
                          child: Text('Introduction to C++',style:TextStyle(fontWeight:FontWeight.bold,fontSize:23)),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.only(top:70,start:20),
                              child: Text('4.6',style:TextStyle(fontWeight:FontWeight.bold,fontSize:16,color:Colors.grey)),
                            ),
                            SizedBox(width:5),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(top:70),
                              child: Icon(Icons.star,color:Colors.yellow),
                            ),
                            SizedBox(width:5),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(top:50),
                              child: Text('.',style:TextStyle(fontWeight: FontWeight.bold,color:Colors.grey,fontSize:40)),
                            ),
                            SizedBox(width:7),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(top:70),
                              child: Text('196K learners',style:TextStyle(fontWeight:FontWeight.bold,color:Colors.grey)),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(top:105,start:20),
                          child: Stack(
                              children:[
                                Container(
                                    height:20,
                                    width:100,
                                    decoration:BoxDecoration(
                                        borderRadius:BorderRadius.circular(6),
                                        color:Colors.blue
                                    )
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(top:2,start:3),
                                  child: Text('Video Lessons',style:TextStyle(fontWeight:FontWeight.bold,color:Colors.white)),
                                )
                              ]
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.only(top:140,start:20),
                              child: Image.asset('assets/images/trophy.png',height:30),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(top:140,start:6),
                              child: Text('Enroll Now',style:TextStyle(fontWeight:FontWeight.bold,color:Colors.grey,fontSize:16)),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start:230,top:35),
                          child: Stack(
                              children:[
                                Container(
                                    clipBehavior: Clip.antiAlias,
                                    height:100,
                                    width:100,
                                    decoration:BoxDecoration(
                                      borderRadius:BorderRadius.circular(12),
                                    ),
                                    child:Image.asset('assets/images/cpp.png',fit:BoxFit.cover)
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(top:90,start:10),
                                  child: Stack(
                                      children:[
                                        Container(
                                            height:20,
                                            width:80,
                                            decoration:BoxDecoration(
                                                borderRadius:BorderRadius.circular(12),
                                                color:Colors.green
                                            )
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional.only(start:5,top:3),
                                          child: Text('C++ language',style:TextStyle(fontWeight:FontWeight.bold,fontSize:12,color:Colors.white)),
                                        )
                                      ]
                                  ),
                                )
                              ]
                          ),
                        )
                      ]
                  ),
                  SizedBox(height:20),
                  Stack(
                      children:[
                        Card(
                          elevation:15,
                          shape:RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(12)
                          ),
                          child: Container(
                              height:180,
                              width:350,
                              decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(12),
                                  color:Colors.black12
                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(top:30,start:20),
                          child: Text('DBMS',style:TextStyle(fontWeight:FontWeight.bold,fontSize:23)),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.only(top:70,start:20),
                              child: Text('4.6',style:TextStyle(fontWeight:FontWeight.bold,fontSize:16,color:Colors.grey)),
                            ),
                            SizedBox(width:5),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(top:70),
                              child: Icon(Icons.star,color:Colors.yellow),
                            ),
                            SizedBox(width:5),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(top:50),
                              child: Text('.',style:TextStyle(fontWeight: FontWeight.bold,color:Colors.grey,fontSize:40)),
                            ),
                            SizedBox(width:7),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(top:70),
                              child: Text('196K learners',style:TextStyle(fontWeight:FontWeight.bold,color:Colors.grey)),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(top:105,start:20),
                          child: Stack(
                              children:[
                                Container(
                                    height:20,
                                    width:100,
                                    decoration:BoxDecoration(
                                        borderRadius:BorderRadius.circular(6),
                                        color:Colors.blue
                                    )
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(top:2,start:3),
                                  child: Text('Video Lessons',style:TextStyle(fontWeight:FontWeight.bold,color:Colors.white)),
                                )
                              ]
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.only(top:140,start:20),
                              child: Image.asset('assets/images/trophy.png',height:30),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(top:140,start:6),
                              child: Text('Enroll Now',style:TextStyle(fontWeight:FontWeight.bold,color:Colors.grey,fontSize:16)),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start:230,top:35),
                          child: Stack(
                              children:[
                                Container(
                                    clipBehavior: Clip.antiAlias,
                                    height:100,
                                    width:100,
                                    decoration:BoxDecoration(
                                      borderRadius:BorderRadius.circular(12),
                                    ),
                                    child:Image.asset('assets/images/dbms.jpg',fit:BoxFit.cover)
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(top:90,start:10),
                                  child: Stack(
                                      children:[
                                        Container(
                                            height:20,
                                            width:80,
                                            decoration:BoxDecoration(
                                                borderRadius:BorderRadius.circular(12),
                                                color:Colors.green
                                            )
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional.only(start:25,top:3),
                                          child: Text('DBMS',style:TextStyle(fontWeight:FontWeight.bold,fontSize:12,color:Colors.white)),
                                        )
                                      ]
                                  ),
                                )
                              ]
                          ),
                        )
                      ]
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}