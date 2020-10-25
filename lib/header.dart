import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - Scaffold.of(context).appBarMaxHeight,
      child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/jhlogo.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child:Text('Jaisalmeria Handloom',
                  textAlign: TextAlign.center,
                  textScaleFactor: 1.2,
                  style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold)
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('We deliver the product which enhances the look of your room. We make your dream bedroom complete! ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                  )
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FilterChip(
                        label: Text('📞 Call'),
                        backgroundColor: Colors.black,
                        labelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.white),
                        onSelected: (b){launch("tel://+919414130356");}
                    ),
                    FilterChip(
                        label: Text('💬 Chat'),
                        backgroundColor: Colors.black,
                        labelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.white),
                        onSelected: (b){FlutterOpenWhatsapp.sendSingleMessage("919414130356", "Hello");}
                    ),
                  ],
                ),
              ),
            ],
          ),
    );
  }
}