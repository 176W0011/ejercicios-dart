import 'package:flutter/material.dart';
import 'package:fondo/fondo.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/fondo3.jpg"),
                fit: BoxFit.cover
            ),
          ),

          child: Scaffold(

              backgroundColor: Colors.transparent,
              body: const RegexForm(
              ),
              appBar: AppBar(
                title: const Text('INICIAR SESION'),
              )

          )
      ),
    );

  }

}



