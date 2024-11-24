import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qoutesapp/main.dart';
import 'package:qoutesapp/main_screen.dart';
import 'package:http/http.dart' as http;

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() { 
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF37474F), Color(0xFFB0BEC5)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Using a built-in Flutter icon
              Icon(
                Icons.format_quote,
                color: Colors.white,
                size: 100,
              ),
              const SizedBox(height: 20),
              // Circular Progress Indicator
              const CircularProgressIndicator(
                color: Colors.white,
              ),
              const SizedBox(height: 20),
              // Loading Text
              const Text(
                "Fetching quotes...",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> fetchData() async{
    final url = Uri.parse("https://zenquotes.io/api/quotes");

    try{
      final response = await http.get(url);
      if(response.statusCode == 200){
        print(response.body);
        final data =  jsonDecode(response.body);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainScreen(qoutes: data,),));
      }
      else{
        throw Exception("Failed to load");
      }
    }catch(e){
      throw Exception("Error: ${e}");
    }
  }
}