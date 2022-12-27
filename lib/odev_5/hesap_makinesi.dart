import 'dart:ffi';

import 'package:flutter/material.dart';

class HesapMakinesi extends StatefulWidget {
  const HesapMakinesi({Key? key}) : super(key: key);

  @override
  State<HesapMakinesi> createState() => _HesapMakinesiState();
}

class _HesapMakinesiState extends State<HesapMakinesi> {
  var sayi1 = [];
  var sayi2 = [];
  String asilSayi1 = "";
  String asilSayi2 = "";
  bool sayi1Secildi = false;
  bool islem = false;
  double toplam = 0;


  void sayiEkle(String deger){
    if(sayi1Secildi){
     sayi2.add(deger);
    }else{
      sayi1.add(deger);
    }
  }

  void sayi1sonuc(){
    for(int i=0;i<sayi1.length;i++){
      asilSayi1 = asilSayi1 + sayi1[i];
    }
    print(asilSayi1);
  }
  void sayi2sonuc(){
    for(int i=0;i<sayi2.length;i++){
      asilSayi2 = asilSayi2 + sayi2[i];
    }
    print(asilSayi2);
  }
  void sonuc(){
    sayi1sonuc();
    sayi2sonuc();

    if(islem){
      toplam = double.parse(asilSayi1) - double.parse(asilSayi2);
    }else{
       toplam = double.parse(asilSayi1) + double.parse(asilSayi2);
    }

    print(toplam);
    sayi1Secildi = false;
  }
  void sonuc1(){
    sayi1sonuc();
    sayi2sonuc();
    double toplam = double.parse(asilSayi1) - double.parse(asilSayi2);
    print(toplam);
    sayi1Secildi = false;
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height =  MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
     // appBar: AppBar(title: Text("Hesap Makinesi"),),
      body: Column(
        children: [
          SizedBox(height: height/10,),
         Spacer(),
         Container(
           padding: EdgeInsets.all(20),
              width: width,
              height: height / 5,
             alignment: Alignment.bottomRight,

             child: Text("$toplam",style: TextStyle(fontSize: 46,color:Colors.white,fontWeight: FontWeight.w300 ))
         ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: width / 4.5,
                height: width / 4.5 ,

                child: TextButton(onPressed: (){
                  sayiEkle("7");
                },
                    child: Text("7",style: TextStyle(fontSize: 34,color:Colors.white ),)
                 ),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white24,
                ),
              ),
              Container(
                width: width / 4.5,
                height: width / 4.5 ,

                child: TextButton(onPressed: (){
                  sayiEkle("8");
                },
                    child: Text("8",style: TextStyle(fontSize: 34,color:Colors.white ),)
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white24,
                ),
              ),
              Container(
                width: width / 4.5,
                height: width / 4.5 ,

                child: TextButton(onPressed: (){
                  sayiEkle("9");
                },
                    child: Text("9",style: TextStyle(fontSize: 34,color:Colors.white ),)
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white24,
                ),
              ),
              Container(
                width: width / 4.5,
                height: width / 4.5 ,

                child: TextButton(onPressed: (){
                  setState(() {
                    sayi1.clear();
                    sayi2.clear();
                    asilSayi1 = "";
                    asilSayi2 = "";
                    sayi1Secildi =false;
                    toplam = 0.0;
                  });



                },
                    child: Text("C",style: TextStyle(fontSize: 34,color:Colors.white ),)
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: width / 4.5,
                height: width / 4.5 ,

                child: TextButton(onPressed: (){
                  sayiEkle("4");
                },
                    child: Text("4",style: TextStyle(fontSize: 34,color:Colors.white ),)
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white24,
                ),
              ),
              Container(
                width: width / 4.5,
                height: width / 4.5 ,

                child: TextButton(onPressed: (){
                  sayiEkle("5");
                },
                    child: Text("5",style: TextStyle(fontSize: 34,color:Colors.white ),)
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white24,
                ),
              ),
              Container(
                width: width / 4.5,
                height: width / 4.5 ,

                child: TextButton(onPressed: (){
                  sayiEkle("6");
                },
                    child: Text("6",style: TextStyle(fontSize: 34,color:Colors.white ),)
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white24,
                ),
              ),
              Container(
                width: width / 4.5,
                height: width / 4.5 ,

                child: TextButton(onPressed: (){
                  islem = true;
                    sayi1Secildi = true;
                },
                    child: Text("-",style: TextStyle(fontSize: 34,color:Colors.white ),)
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: width / 4.5,
                height: width / 4.5 ,

                child: TextButton(onPressed: (){
                  sayiEkle("1");
                },
                    child: Text("1",style: TextStyle(fontSize: 34,color:Colors.white ),)
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white24,
                ),
              ),
              Container(
                width: width / 4.5,
                height: width / 4.5 ,

                child: TextButton(onPressed: (){
                  sayiEkle("2");
                },
                    child: Text("2",style: TextStyle(fontSize: 34,color:Colors.white ),)
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white24,
                ),
              ),
              Container(
                width: width / 4.5,
                height: width / 4.5 ,

                child: TextButton(onPressed: (){
                  sayiEkle("3");
                },
                    child: Text("3",style: TextStyle(fontSize: 34,color:Colors.white ),)
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white24,
                ),
              ),
              Container(
                width: width / 4.5,
                height: width / 4.5 ,

                child: TextButton(onPressed: (){
                  islem = false;
                  sayi1Secildi = true;
                },
                    child: Text("+",style: TextStyle(fontSize: 34,color:Colors.white ),)
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: width / 4.5,
                height: width / 4.5 ,

                child: TextButton(onPressed: (){
                  sayiEkle("0");
                },
                    child: Text("0",style: TextStyle(fontSize: 34,color:Colors.white ),)
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white24,
                ),
              ),
              Container(
                width: width / 4.5 * 2.1,
                height: width / 4.5 ,

                child: TextButton(onPressed: (){
                  sayiEkle("00");
                },
                    child: Text("00",style: TextStyle(fontSize: 34,color:Colors.white ),)
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white24,
                ),
              ),

              Container(
                width: width / 4.5,
                height: width / 4.5 ,

                child: TextButton(onPressed: (){

                    setState(() {
                      sonuc();
                      sayi1.clear();
                      sayi2.clear();
                      asilSayi1 = "";
                      asilSayi2 = "";
                    });
                },
                    child: Text("=",style: TextStyle(fontSize: 34,color:Colors.white ),)
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          SizedBox(height: height/7,)
        ],
      ),
    );
  }
}
