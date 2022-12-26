import 'package:flutter/material.dart';
import 'package:listeleme_kullanimi/filmler.dart';

class FilmlerDetaySayfa extends StatefulWidget {
 Filmler film;

 FilmlerDetaySayfa({required this.film});

  @override
  State<FilmlerDetaySayfa> createState() => _FilmlerDetaySayfaState();
}

class _FilmlerDetaySayfaState extends State<FilmlerDetaySayfa> {
  @override
  Widget build(BuildContext context) {
    var f = widget.film;
    return Scaffold(
      appBar: AppBar(
        title: Text(f.ad),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("resimler/${f.resimAdi}"),
            Text("${f.fiyat}₺",style: TextStyle(fontSize: 48,color: Colors.blue),),
            SizedBox(width: 200,
              height: 50,
              child: ElevatedButton(onPressed: (){
                print("${f.fiyat }₺ kiralandı");
              },
                  child: Text("Kirala",style: TextStyle(color: Colors.white),
                  ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
