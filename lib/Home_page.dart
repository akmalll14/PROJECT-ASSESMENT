import 'package:flutter/material.dart';
import 'package:aplikasi/basket.dart';
import 'package:aplikasi/date.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      if (index == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Bskt()),
        );
      }
       if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Date()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double globalWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               Flexible(
            child: Container(
              margin: EdgeInsets.only(left: 20, top: 25),
              decoration: BoxDecoration(
                  color: Colors.yellow, borderRadius: BorderRadius.circular(50)),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu),
              ),
            ),
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.only(right: 30, top: 25),
              decoration: BoxDecoration(
                  color: Colors.yellow, borderRadius: BorderRadius.circular(50)),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
              ),
            ),
          )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  width: (globalWidth / 4.9),
                  height: (globalWidth / 5.5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: Offset(2, 3)),
                    ],
                    border: Border.all(color: Colors.yellow, width: 10),
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("images/ayamBakar.jpeg")),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Text(
                      "Semua",
                    )),
              ],
            ),
            Column(
              children: [
                Container(
                  width: (globalWidth / 4.9),
                  height: (globalWidth / 5.5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: Offset(2, 3)),
                    ],
                    border: Border.all(color: Colors.yellow, width: 10),
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("images/download.jpeg")),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Text(
                      "Makanan",
                    )),
              ],
            ),
            Column(
              children: [
                Container(
                  width: (globalWidth / 4.9),
                  height: (globalWidth / 5.5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: Offset(2, 3)),
                    ],
                    border: Border.all(color: Colors.yellow, width: 10),
                    borderRadius: BorderRadius.circular(20),
                    image:
                        DecorationImage(
                          image: AssetImage("images/estehmanis.jpeg")),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Text(
                      "Minuman",
                    )),
              ],
            ),
          ],
        ),
            ),
            Row(
              children: [
                
              ],
            ),
            // Card with food items
            Card(
              color: Colors.yellow,
              child: Column(
                children: [
                  Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(2, 3)),
                        ],
                        border: Border.all(
                          color: Colors.white,
                          width: 10,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: (globalWidth / 2.9),
                            height: (globalWidth / 2.9),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  "images/ayamBakar.jpeg",
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 90),
                                  child: Text(
                                "Ayam Bakar",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 30),
                                child: Text("Rp 50.000,00")),
                                Container(
                                  width: 20,
                                  height: 20,
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.green,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                  ), 
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Pesanan 2
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(2, 3)),
                        ],
                        border: Border.all(
                          color: Colors.white,
                          width: 15,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: (globalWidth / 2.9),
                            height: (globalWidth / 2.9),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  "images/download.jpeg",
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 110),
                                  child: Text(
                                "Ketoprak",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 80),
                                child: Text("Rp 12.000,00")),
                                Container(
                                  width: 20,
                                  height: 20,
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.green,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
            // ROW 2
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(2, 3)),
                        ],
                        border: Border.all(
                          color: Colors.white,
                          width: 15,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: (globalWidth / 2.9),
                            height: (globalWidth / 2.9),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  "images/jusMangga.jpeg",
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 67),
                                  child: Text(
                                "Jus Mangga",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 70),
                                child: Text("Rp 7.000,00")),
                              Container(
                                  width: 20,
                                  height: 20,
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.green,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                  ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Pesanan 2
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(2, 3)),
                        ],
                        border: Border.all(
                          color: Colors.white,
                          width: 15,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: (globalWidth / 2.8),
                            height: (globalWidth / 2.9),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  "images/ikanGoreng.jpeg",
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 120),
                                  child: Text(
                                "Ikan Goreng",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 40),
                                child: Text("Rp 12.000,00")),
                                Container(
                                  width: 20,
                                  height: 20,
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.green,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                  ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
             Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(2, 3)),
                        ],
                        border: Border.all(
                          color: Colors.white,
                          width: 15,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: (globalWidth / 2.9),
                            height: (globalWidth / 2.9),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  "images/estehmanis.jpeg",
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 30),
                                  child: Text(
                                "Es Teh Manis",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )),
                            ],
                            
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 70),
                                child: Text("Rp 7.000,00")),
                                Container(
                                  width: 20,
                                  height: 20,
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.green,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                  ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Pesanan 2
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(2, 3)),
                        ],
                        border: Border.all(
                          color: Colors.white,
                          width: 15,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: (globalWidth / 2.8),
                            height: (globalWidth / 2.9),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  "images/pecelAyam.jpeg",
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 100),
                                  child: Text(
                                "Pecel Ayam",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 30),
                                child: Text("Rp 15.000,00")),
                                Container(
                                  width: 20,
                                  height: 20,
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.green,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                  ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
                ],
              ),
            ),
            // ... More content as needed
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add_outlined),
            label: 'Add Data',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
