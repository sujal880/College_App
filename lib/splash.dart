import 'dart:async';
import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

main() {
  runApp(My_App());
}

class My_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Log In',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>SplashScreen();

}

class SplashScreen extends State<Splash>{
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
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
              // randColorList: [
              // Colors.red.withAlpha(210),
              // Colors.white.withAlpha(210),
              // Colors.yellow.withAlpha(210),
              // Colors.green.withAlpha(210),
              // ],
              enableHover: true,
              hoverColor: Colors.black12,
              hoverRadius: 90,
            ),
            Center(child: Image.asset('assets/images/WhatsApp Image 2022-08-24 at 8.37.01 AM.jpeg'))
          ],
        )

      //for only animation
      // CircularParticle(
      //   width: w,
      //   height: h,
      //   awayRadius: w / 5,
      //   numberOfParticles: 150,
      //   speedOfParticles: 1.5,
      //   maxParticleSize: 7,
      //   particleColor: Colors.blue.withOpacity(.7),
      //   awayAnimationDuration: Duration(milliseconds: 600),
      //   awayAnimationCurve: Curves.easeInOutBack,
      //   onTapAnimation: true,
      //   isRandSize: true,
      //   isRandomColor: false,
      //   connectDots: true,
      //   // randColorList: [
      //   // Colors.red.withAlpha(210),
      //   // Colors.white.withAlpha(210),
      //   // Colors.yellow.withAlpha(210),
      //   // Colors.green.withAlpha(210),
      //   // ],
      //   enableHover: true,
      //   hoverColor: Colors.black12,
      //   hoverRadius: 90,
      // ),
    );
  }

}

class HomeScreen extends StatelessWidget {

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
                height: 800,
                child: Image.asset(
                  'assets/images/login.jpeg',
                  fit: BoxFit.fitHeight,
                ),
              ),
              CircularParticle(
                width: w,
                height: h,
                awayRadius: w / 5,
                numberOfParticles: 150,
                speedOfParticles: 1.5,
                maxParticleSize: 7,
                //for color change
                particleColor: Colors.lightBlue.withOpacity(.7),
                awayAnimationDuration: Duration(milliseconds: 600),
                awayAnimationCurve: Curves.easeInOutBack,
                onTapAnimation: true,
                isRandSize: true,
                isRandomColor: false,
                connectDots: true,
                // randColorList: [
                // Colors.red.withAlpha(210),
                // Colors.white.withAlpha(210),
                // Colors.yellow.withAlpha(210),
                // Colors.green.withAlpha(210),
                // ],
                enableHover: true,
                hoverColor: Colors.black12,
                hoverRadius: 90,
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
                                         /* ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage())
                                                );
                                              },
                                              child: Text(
                                                'LOG IN',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              )),*/
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
              // Container(
              //   height: 950,
              //   width: double.infinity,
              //   child: Image.asset('assets/images/backsign.jpeg',),
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //   ),
              // ),
              Column(
                children: [

                  Container(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(
                          start: 35, bottom: 200, end: 35),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.only(top: 100),
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