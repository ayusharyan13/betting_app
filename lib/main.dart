import 'package:assigin1/player_bet.dart';
import 'package:flutter/material.dart';
void main() {
  runApp( const MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions:  [
          IconButton(
            icon:  const Icon(Icons.search_rounded , color: Color(0xFF59154a)),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon:  const Icon(Icons.account_circle_outlined, color:Color(0xFF59154a)),
            tooltip: 'Setting Icon',
            onPressed: () {
            },
          ), //Icon
        ],
      ),
      body: const PlayerBet(),
    );
  }
}
