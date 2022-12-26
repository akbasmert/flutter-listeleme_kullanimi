import 'package:flutter/material.dart';
import 'package:listeleme_kullanimi/filmler.dart';
import 'package:listeleme_kullanimi/filmler_detay_sayfa.dart';

class FilmlerSayfa extends StatefulWidget {
  const FilmlerSayfa({Key? key}) : super(key: key);

  @override
  State<FilmlerSayfa> createState() => _FilmlerSayfaState();
}

class _FilmlerSayfaState extends State<FilmlerSayfa> {

  Future<List<Filmler>> filmleriGetir()async{
    var filmlerListesi = <Filmler>[];
    var f1 = Filmler(id: 1, ad: "anadoluda", resimAdi: "anadoluda.png", fiyat: 24.0);
    var f2 = Filmler(id: 2, ad: "Django", resimAdi: "django.png", fiyat: 18.0);
    var f3 = Filmler(id: 1, ad: "Inception", resimAdi: "inception.png", fiyat:32.0);
    var f4 = Filmler(id: 1, ad: "interstellar", resimAdi: "interstellar.png", fiyat: 21.0);
    var f5 = Filmler(id: 1, ad: "The Hataful Eight", resimAdi: "thehatefuleight.png", fiyat: 14.0);
    var f6 = Filmler(id: 1, ad: "The pianist", resimAdi: "thepianist.png", fiyat: 54.0);
filmlerListesi.add(f1);
filmlerListesi.add(f2);
filmlerListesi.add(f3);
filmlerListesi.add(f4);
filmlerListesi.add(f5);
filmlerListesi.add(f6);

    return filmlerListesi;


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filmler"),
        backgroundColor: Colors.deepPurple,
      ),
      body: FutureBuilder<List<Filmler>>(
        future: filmleriGetir(),
        builder: (context,snapsahot){
          if(snapsahot.hasData){
            var filmlerListesi = snapsahot.data;
            return GridView.builder(
              itemCount:  filmlerListesi!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // bir satırda iki tane olacka
              childAspectRatio: 2 / 3.5, // en boy oranı

              ),
              itemBuilder: (context,indeks){
                var film = filmlerListesi[indeks];
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> FilmlerDetaySayfa(film: film)));
                  },
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("resimler/${film.resimAdi}"),
                        ),
                        Text(film.ad,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Text("${film.fiyat}₺",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: Colors.blue),),

                      ],
                    ),
                  ),
                );
              },
            );
          }else{
            return const Center();
          }
        },
      ),
    );
  }
}
