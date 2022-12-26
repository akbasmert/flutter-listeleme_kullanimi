import 'package:flutter/material.dart';

class SayfaIki extends StatefulWidget {
  const SayfaIki({Key? key}) : super(key: key);

  @override
  State<SayfaIki> createState() => _SayfaIkiState();
}

class _SayfaIkiState extends State<SayfaIki> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Iki",style: TextStyle(fontSize: 30,color: Colors.black45),),
    );
  }
}
