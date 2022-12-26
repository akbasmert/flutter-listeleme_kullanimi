import 'package:flutter/material.dart';
import 'package:listeleme_kullanimi/yemekler.dart';

class YemeklerDetaySayfa extends StatefulWidget {
Yemekler yemek;

YemeklerDetaySayfa({required this.yemek}); // veri transverinde ust clasa yazılır

  @override
  State<YemeklerDetaySayfa> createState() => _YemeklerDetaySayfaState();
}

class _YemeklerDetaySayfaState extends State<YemeklerDetaySayfa> {
  @override
  Widget build(BuildContext context) {
    var y = widget.yemek;
    return Scaffold(
      appBar:  AppBar(
        title: Text(y.ad),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("resimler/${y.resimAdi}"),
            Text("${y.fiyat}₺",style: TextStyle(fontSize: 48,color: Colors.blue),),
          ElevatedButton(onPressed: (){
            print("${y.ad} sipariş verildi");
          },
              child: Text("Sipariş ver", style: TextStyle(color: Colors.white),
              ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),

          ),
          ],
        ),
      ),
    );
  }
}
