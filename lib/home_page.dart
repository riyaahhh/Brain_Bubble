import 'package:brain_bubble/bottom_bar.dart';
import 'package:brain_bubble/new_entry.dart';
import 'package:brain_bubble/qoute_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 220, 220),
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 255, 220, 220), 
         title: Text('"Be yourself; everyone else is already taken."',
         style: GoogleFonts.beauRivage(fontSize: 25),
         textAlign: TextAlign.center,
         )
      ),
      body: Padding(padding: EdgeInsets.all(26.0),
      child: Center(
        child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text('What is on your mind today?',
          style: GoogleFonts.beauRivage(fontSize: 70),
          textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 120,
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>NewEntry()));
          }, 
          style: ElevatedButton.styleFrom(
         backgroundColor: Color.fromARGB(255, 255, 214, 186),
         foregroundColor: Colors.black,
  ),
          child: Text('Journalize',
          style: GoogleFonts.beauRivage(
          fontSize: 70,
          ))
          ),
        ],
        
      ),
      ),

      ),
      bottomNavigationBar: SizedBox(
          height:90,
          child: BottomBar()
        )
    );
  }
}