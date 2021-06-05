import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.purple, Colors.orange]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: FlutterLogo(
                  size: 150,
                  style: FlutterLogoStyle.stacked,
                  curve: Curves.bounceInOut,
                  duration: Duration(seconds: 5),
                ),
              ),
              
              Container(
                padding: const EdgeInsets.only(left: 18, top: 12, right: 18, bottom: 12),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Email',
                  ),
                )
              ),
              Container(
                padding: const EdgeInsets.only(left: 18, top: 12, right: 18, bottom: 12),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Password'
                  ),
                )
              ),
              Container(
                padding: const EdgeInsets.only(left: 18, top: 12, right: 18, bottom: 12),
                height: 70,
                child: OutlinedButton(onPressed: (){}, child: Text('Login'),),
              )
            ],
          )
        ),
      ),
    );
  }
}