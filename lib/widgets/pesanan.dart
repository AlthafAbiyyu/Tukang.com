import 'package:flutter/material.dart';
import 'package:tukang_com/models/item.dart';

class PesananWidget extends StatefulWidget {
  PesananWidget({super.key});

  final List<item> items = [
    item(
        tanggal: '20/11/06',
        jam: '00.20',
        foto: 'assets/mufc.png',
        nama: 'Manchester is red',
        desc1: '1000 ucl',
        desc2: 'Menunggu konfirmasi'),
    item(
        tanggal: '27/11/01',
        jam: '12.00',
        foto: 'assets/cpr.png',
        nama: 'Saya suka UKL',
        desc1: 'Saya suka',
        desc2: 'Menunggu konfirmasi'),
    item(
        tanggal: '1/11/01',
        jam: '15.30',
        foto: 'assets/ars.png',
        nama: 'Aby anak Rajin',
        desc1: '',
        desc2: 'Menunggu konfirmasi'),
  ];

  @override
  State<PesananWidget> createState() => _PesananWidgetState();
}

class _PesananWidgetState extends State<PesananWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 15,
        title: Text("Pesanan Dalam Proses"),
        titleTextStyle: TextStyle(fontSize: 20, color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(Icons.list_alt),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: widget.items.length,
            itemBuilder: (context, index) {
              final item = widget.items[index];
              return Card(
                color: const Color.fromARGB(255, 222, 222, 222),
                shadowColor: Colors.white,
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(1, 1),
                          blurRadius: 5)
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: ClipOval(
                                child: Image(image: NetworkImage(item.foto)),
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.nama,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(item.tanggal),
                              SizedBox(
                                width: 20,
                              ),
                              Text(item.jam),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                item.desc1,
                                style: TextStyle(color: Colors.blue),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                item.desc2,
                                style: TextStyle(color: Colors.orange),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
