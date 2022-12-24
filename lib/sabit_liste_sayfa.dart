import 'package:flutter/material.dart';

class SabitListeSayfa extends StatefulWidget {
  const SabitListeSayfa({Key? key}) : super(key: key);

  @override
  State<SabitListeSayfa> createState() => _SabitListeSayfaState();
}

class _SabitListeSayfaState extends State<SabitListeSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sabit Liste"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 3 / 1,
        children: [
          ListTile(
            leading: const Icon(Icons.sunny),
            title: const Text("Güneş"),
            subtitle: const Text("Güneş alt başlık"),
            trailing: const Icon(Icons.arrow_right),
            onTap: (){
              print("Güneş tıklandı");
            },
          ),
          ListTile(
            leading: const Icon(Icons.brightness_2),
            title: const Text("Ay"),
            subtitle: const Text("Ay alt başlık"),
            trailing: const Icon(Icons.arrow_right),
            onTap: (){
              print("Ay tıklandı");
            },
          ),
          GestureDetector(
            onTap: (){
              print("Yıldız Tıklandı");
            },
            child: Card(
              child: Row(
                children:  [
                   Padding(
                     padding: const EdgeInsets.only(left: 15.0,right: 31),
                     child: Icon(Icons.star,color:  Colors.black54,),
                   ),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Yıldız",style: TextStyle(fontSize: 16),),
                      Text("Yıldız Alt Başlık",style: TextStyle(fontSize: 13,color:Colors.black54 ),)
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Icon(Icons.keyboard_arrow_right,color: Colors.black54,),
                  ),
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
