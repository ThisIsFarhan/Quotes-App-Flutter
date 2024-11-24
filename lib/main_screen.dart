import 'package:flutter/material.dart';
import 'package:qoutesapp/qoute_screen.dart';

class MainScreen extends StatelessWidget{
  final List<dynamic> qoutes;
  const MainScreen({super.key, required this.qoutes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu),onPressed: (){
          print("Menu pressed!");
        }),
        actions: [
          SizedBox(width: 10,),
          Icon(Icons.notifications, color: Colors.black,)
        ],
        title: Text("Qoutes",
        style: TextStyle(fontFamily: 'Roboto', fontSize: 24, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blueGrey,
        elevation: 10,
        shadowColor: Colors.black,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF37474F), Color(0xFFB0BEC5)],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            )
          ),
        ),
      ),
      body: Scaffold(
        body: Center(
          child: ListView.builder(
              itemCount: qoutes.length,
              itemBuilder: (context,index){
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => QuoteScreen(quote: qoutes[index]['q'], author: qoutes[index]['a'],),));
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Image.asset("images/qouteicon.png", height: 25,),
                        // leading: Icon(Icons.format_quote_outlined, color: Colors.blueGrey,),
                        title: Text("\"${qoutes[index]["q"]}\"", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        subtitle: Text("~${qoutes[index]["a"]}", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16),),
                        // tileColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                );
              })
        ),
      ),
    );
  }


}