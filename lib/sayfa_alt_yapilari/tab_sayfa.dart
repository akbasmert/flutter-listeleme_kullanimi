import 'package:flutter/material.dart';
import 'package:listeleme_kullanimi/sayfa_alt_yapilari/sayfa_bir_dart.dart';
import 'package:listeleme_kullanimi/sayfa_alt_yapilari/sayfa_iki_dart.dart';

class TabSayfa extends StatefulWidget {

  @override
  State<TabSayfa> createState() => _TabSayfaState();
}

class _TabSayfaState extends State<TabSayfa> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(title: const Text("Tabs"),
        backgroundColor: Colors.deepPurple,
          bottom: const TabBar(tabs: [
            Tab(text: "Bir",icon: Icon(Icons.looks_one_outlined),),
            Tab(text: "Iki",icon: Icon(Icons.looks_two_outlined),),

          ],
            indicatorColor:Colors.pink ,
            labelColor: Colors.orange,
          ),
        ),
        body: const TabBarView(children: [
          SayfaBir(),SayfaIki()
        ]),
      ),
    );
  }
}
