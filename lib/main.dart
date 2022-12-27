import 'package:flutter/material.dart';
import 'package:listeleme_kullanimi/filmler_sayfa.dart';
import 'package:listeleme_kullanimi/odev_5/hesap_makinesi.dart';
import 'package:listeleme_kullanimi/sabit_liste_sayfa.dart';
import 'package:listeleme_kullanimi/sayfa_alt_yapilari/tab_sayfa.dart';
import 'package:listeleme_kullanimi/yemekler_sayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HesapMakinesi()//TabSayfa()//FilmlerSayfa()//YemeklerSayfa() //SabitListeSayfa(),
    );
  }
}
