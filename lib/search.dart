//Wap in Flutter To Design Search Bar
import 'package:flutter/material.dart';
class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(height: 50),
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                hintText: 'What do you want Search?',
                prefixIcon: Icon(Icons.search)
            ),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              Text('BCA',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue)),
              SizedBox(width: 10),
              Text('MCA',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue)),
              SizedBox(width: 10),
              Text('BSC',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue)),
              SizedBox(width: 10),
              Text('MSC',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue)),
              SizedBox(width: 10),
              Text('BA',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue)),
              SizedBox(width:10),
              Text('MA',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue)),
              SizedBox(width: 10)
            ],
          )
        ],
      )
    );
  }
}