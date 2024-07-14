import 'package:flutter/material.dart';

class AkunWidget extends StatefulWidget {
  const AkunWidget({super.key});

  @override
  State<AkunWidget> createState() => _AkunWidgetState();
}

class _AkunWidgetState extends State<AkunWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 15,
        title: Padding(
          padding: EdgeInsets.all(8),
          child: Text("Akun"),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 110,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "abidin",
                                style: TextStyle(fontSize: 20),
                              ),
                              Expanded(child: Container()),
                              TextButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                      overlayColor: MaterialStatePropertyAll(
                                          Colors.grey[100])),
                                  child: Text(
                                    'Ubah',
                                    style: TextStyle(color: Colors.grey),
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text("bidincaem@gmail.com"),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Terverifikasi',
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text("081358087866"),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Terverifikasi',
                                  style: TextStyle(color: Colors.green))
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 5,
              color: Colors.grey[200],
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          shadowColor: Colors.transparent,
                          child: InkWell(
                            hoverColor: Colors.black,
                            onTap: () {
                              //
                            },
                            child: Container(
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 2,
                                            color: const Color.fromARGB(
                                                255, 219, 218, 218)),
                                        shape: BoxShape.circle),
                                    child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.white,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.corporate_fare),
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Daftar Alamat",
                                        style: TextStyle(
                                            decoration: TextDecoration.none),
                                      ),
                                    ],
                                  ),
                                  Expanded(child: Container()),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.keyboard_arrow_right))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          shadowColor: Colors.transparent,
                          child: InkWell(
                            hoverColor: Colors.black,
                            onTap: () {},
                            child: Container(
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 2,
                                            color: const Color.fromARGB(
                                                255, 219, 218, 218)),
                                        shape: BoxShape.circle),
                                    child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.white,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.info),
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Ketentuan Layanan",
                                        style: TextStyle(
                                            decoration: TextDecoration.none),
                                      ),
                                    ],
                                  ),
                                  Expanded(child: Container()),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.keyboard_arrow_right))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Beri penilaian di Play Store",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 191, 190, 190)),
                            ),
                            Expanded(child: Container()),
                            Text(
                              "Version 4.2.2 (196)",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 191, 190, 190)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Keluar",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.yellow),
                        minimumSize: MaterialStateProperty.all(Size(400, 50)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8))))),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
