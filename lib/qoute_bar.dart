//import 'dart:nativewrappers/_internal/vm/lib/async_patch.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class QuoteBar extends StatefulWidget implements PreferredSizeWidget {
  const QuoteBar({super.key});

  @override
  State<QuoteBar> createState() => _QuoteBarState();
  
  @override
  Size get preferredSize => throw UnimplementedError();
}

class _QuoteBarState extends State<QuoteBar> {
  String _qoute ="Loading...";
  Future<void> fetchQuote() async {
    try{
      final result = await http.get(Uri.parse('https://api.api-ninjas.com/v1/quotes'));
      if(result.statusCode==200){
        final data = json.decode(result.body)[0];
        setState(() {
          _qoute=data['quote'];
        });
      }
      else{
        setState(() {
          _qoute='Keep Going';
        });
      }
    }
    catch(e){
      setState(() {
        _qoute='Take a Break.';
      });
    }
  }
  @override
  void initState() {
    super.initState();
    fetchQuote();
    Timer.periodic(Duration(seconds: 30), (_) => fetchQuote());
  }
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 255, 220, 220),
      elevation: 2,
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
        child: Text(
          _qoute,
          style: TextStyle(
            fontFamily: 'Beau Rivage',
          ),
          textAlign: TextAlign.center
          ),
          
        ),
        );
  }
}