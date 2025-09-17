import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NewEntry extends StatefulWidget {
  const NewEntry({super.key});

  @override
  State<NewEntry> createState() => _NewEntryState();
}

class _NewEntryState extends State<NewEntry> {
  late TextEditingController _controller = TextEditingController();
   @override 
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }
   @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 220, 220),
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 255, 220, 220), 
         title: Text('"Be yourself; everyone else is already taken."',
         style: GoogleFonts.beauRivage(fontSize: 25),
         textAlign: TextAlign.center,
         )
      ),
      body:Padding(padding: EdgeInsets.all(16),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text('oh dear dairy', style:GoogleFonts.beauRivage(fontSize: 40),textAlign: TextAlign.center, ),
          TextField(
            
            controller: _controller,
            decoration: InputDecoration(
              fillColor: Color.fromARGB(255, 255, 214, 186),
              filled: true,
              labelText: 'Express it...'
            ),
          ),
          SizedBox(
            height:50,
          ),
          ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
    backgroundColor: Color.fromARGB(255, 255, 180, 180),
    foregroundColor: Colors.white,
  ), child: Text('Save?',style:GoogleFonts.beauRivage(fontSize: 20,color: Colors.black)),)
        ]
      )
      )
    );
    
  }
}