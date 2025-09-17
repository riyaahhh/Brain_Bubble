import 'package:brain_bubble/my_thoughts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentPage =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
           BottomNavigationBarItem(icon: Icon(Icons.auto_awesome_mosaic_rounded), label: 'My Thoughts',backgroundColor:Color.fromARGB(255, 214, 169, 157)),
           BottomNavigationBarItem(icon: Icon(Icons.chat_outlined), label: 'Chatbot',backgroundColor:Color.fromARGB(255, 214, 169, 157)),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'New Thought',backgroundColor:Color.fromARGB(255, 214, 169, 157)),
        ]
        )
    );
  }
}