import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

card(String foto){
  return Card(elevation: 10,
    child: Container(
      child: Image.asset(foto,fit: BoxFit.fill,),
    ),
  );
}

void openURL()async{
  const url = 'https://github.com/rafaelhenrique31';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('nao dei certo');
  }
}void twiter()async{
  const url = 'https://twitter.com/home';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('nao dei certo');
  }
}