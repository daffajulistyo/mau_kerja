import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {

  bool test = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              test = !test;
            });
          },
          child: Container(
            width: double.infinity,
            height: 360,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: test ? Colors.green : Colors.yellow,
              border: Border.all(color: test ? Colors.red : Colors.blue, width: 14)
            ),
            
          ),
        ),
      ),
    );
  }
}
