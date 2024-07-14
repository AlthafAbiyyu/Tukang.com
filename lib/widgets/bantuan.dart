import 'package:flutter/material.dart';

class BantuanWidget extends StatefulWidget {
  const BantuanWidget({super.key});

  @override
  State<BantuanWidget> createState() => _BantuanWidgetState();
}

class _BantuanWidgetState extends State<BantuanWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.white,
      shadowColor: Colors.black,
      elevation: 15,
      title: Text("Bantuan"),
    ));
  }
}
