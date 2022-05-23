import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_flutter_1/constants/enums.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool rememberPW = false;

  void _onRememberMeChanged(bool? newValue) =>
      setState(() {
        rememberPW = !rememberPW;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(colorGradientTop), Color(colorGradientBottom)]),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: Image.asset(
                    'images/logo.png',
                    width: 200,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Find and Meet people around\nyou to find LOVE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'sign in'.toUpperCase(),
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 24,
                      ),
                      const TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            hintText: 'Enter Email',
                            hintStyle: TextStyle(color: Colors.white54),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white54)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                        cursorColor: Colors.white,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.white54),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white54)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                        cursorColor: Colors.white,
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Checkbox(
                            onChanged: _onRememberMeChanged,
                            value: rememberPW,
                            side: MaterialStateBorderSide.resolveWith(
                                  (states) =>
                              const BorderSide(
                                  width: 1.0, color: Colors.white),
                            ),
                          ),
                          const Text('Remember Password',
                              style:
                              TextStyle(color: Colors.white, fontSize: 14)),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15),
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "Get Started".toUpperCase(),
                              style: const TextStyle(
                                color: Color(colorGradientBottom),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipOval(
                            child: Material(
                              color: Colors.white,
                              child: InkWell(
                                splashColor: Colors.red,
                                onTap: () {},
                                child: SizedBox(
                                    width: 56,
                                    height: 56,
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Image.asset('images/facebook.png'),
                                    )),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          ClipOval(
                            child: Material(
                              color: Colors.white,
                              child: InkWell(
                                splashColor: Colors.red,
                                onTap: () {},
                                child: SizedBox(
                                    width: 56,
                                    height: 56,
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Image.asset('images/twitter.png'),
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            "Forgot Password?".toUpperCase(),
                            style: const TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.white,
                                fontSize: 12),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 70,
                        color: Colors.black.withOpacity(0.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("DONT HAVE ACOUNT ? ", style: TextStyle(color: Colors.yellow.shade200, fontSize: 12),),
                            const Text("SIGN UP", style: TextStyle(color: Colors.white, fontSize: 12, decoration: TextDecoration.underline)),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
