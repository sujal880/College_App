//Wap in Flutter To Design A Arts Page
import 'package:flutter/material.dart';
main(){
  runApp(Arts());
}
class Arts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
        child: Scaffold(
     appBar: AppBar(
       title: Text('Tab'),
       bottom: TabBar(
         tabs: [
           Tab(
             child: Text('Chats'),
           ),
           Tab(
             child: Text('Calls'),
           )
         ],
       ),
     ),
      body: TabBarView(
        children: [
          Chats(),
          Status()
        ],
      )
    )
    );
  }
}
class Chats extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
      ),
    );
  }
}
class Status extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calls'),
      ),
    );
  }
}