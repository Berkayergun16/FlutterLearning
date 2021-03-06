import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Container containerOlustur(String harf, Color renk, {double margin = 0}) {
    return Container(
      color: renk,
      height: 75,
      width: 75,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: margin),
      child: Text(
        harf,
        style: TextStyle(fontSize: 24),
      ),
    );
  }

  Row dartRowunuOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        containerOlustur("D", Colors.orange.shade200),
        containerOlustur("A", Colors.red.shade200),
        containerOlustur("R", Colors.yellow.shade200),
        containerOlustur("T", Colors.blue.shade200),
      ],
    );
  }

  Column dartDersleriColumnOlustur() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      //expanded her yeri kapladığı için boşluk bırakmaz.
      children: [
        Expanded(
          child: containerOlustur("E", Colors.orange.shade300, margin: 15),
        ),
        Expanded(
          child: containerOlustur("r", Colors.orange.shade300, margin: 15),
        ),
        Expanded(
          child: containerOlustur("S", Colors.orange.shade300, margin: 15),
        ),
        Expanded(
          child: containerOlustur("L", Colors.orange.shade300, margin: 15),
        ),
        Expanded(
          child: containerOlustur("E", Colors.orange.shade300, margin: 15),
        ),
        Expanded(
          child: containerOlustur("R", Colors.orange.shade300, margin: 15),
        ),
        Expanded(
          child: containerOlustur("İ", Colors.orange.shade300, margin: 15),
        ),
      ],
    );
  }

  String _img1 =
      "https://images.unsplash.com/photo-1525609004556-c46c7d6cf023?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2Fyc3xlbnwwfHwwfHw%3D&w=1000&q=80";

  String _img2 =
      "https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme:
            ThemeData(primaryColor: Colors.green, accentColor: Colors.purple),
        home: Scaffold(
            body: Container(
              color: Colors.red.shade100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  dartRowunuOlustur(),
                  Expanded(child: dartDersleriColumnOlustur()),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                debugPrint("Tıklandı");
              },
              child: const Icon(
                Icons.account_circle_rounded,
                color: Colors.blueGrey,
              ),
              backgroundColor: Colors.red,
            )));
  }

  Widget benimYaptigimOdev() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 75,
                  height: 75,
                  color: Colors.yellow,
                  child: const Text(
                    'D',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 64,
                    ),
                  ),
                ),
                Container(
                  width: 75,
                  height: 75,
                  color: Colors.yellow,
                  child: const Text(
                    'A',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 64,
                    ),
                  ),
                ),
                Container(
                  width: 75,
                  height: 75,
                  color: Colors.yellow,
                  child: const Text(
                    'R',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 64,
                    ),
                  ),
                ),
                Container(
                  width: 75,
                  height: 75,
                  color: Colors.yellow,
                  child: const Text(
                    'T',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 64,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 75,
              height: 75,
              color: Colors.yellow,
              child: const Text(
                'E',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 64,
                ),
              ),
            ),
            Container(
              width: 75,
              height: 75,
              color: Colors.yellow,
              child: const Text(
                'R',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 64,
                ),
              ),
            ),
            Container(
              width: 75,
              height: 75,
              color: Colors.yellow,
              child: const Text(
                'S',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 64,
                ),
              ),
            ),
            Container(
              width: 75,
              height: 75,
              color: Colors.yellow,
              child: const Text(
                'L',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 64,
                ),
              ),
            ),
            Container(
              width: 75,
              height: 75,
              color: Colors.yellow,
              child: const Text(
                'E',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 64,
                ),
              ),
            ),
            Container(
              width: 75,
              height: 75,
              color: Colors.yellow,
              child: const Text(
                'R',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 64,
                ),
              ),
            ),
            Container(
              width: 75,
              height: 75,
              color: Colors.yellow,
              child: const Text(
                'İ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 64,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  List<Widget> get SorunluContainer {
    return [
      Container(
        width: 75,
        height: 75,
        color: Colors.yellow,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.orange,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.orange,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
    ];
  }

  List<Widget> get flexibleContainer {
    //expanded kullansaydık bütün alana yayılıyordu.
    //flexible ise, verdiğin değer kadar yer tut. Lazımsa küçül. Daha da büyüme. O yüzden verdiğimiz widthden üzerine çıkmaz.
    return [
      Flexible(
        child: Container(
          width: 200,
          height: 300,
          color: Colors.yellow,
        ),
      ),
      Flexible(
        child: Container(
          width: 200,
          height: 300,
          color: Colors.red,
        ),
      ),
    ];
  }

  List<Widget> get expandedContainer {
    //expanded yapınca sığdırır ama width heigh değerlerini devredışı bırakır.
    //bir şeyi değiştirmek için flex kullanıyoruz. React native de de vardır 2 birim 1 birim olayı.
    return [
      Expanded(
        flex: 2,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.yellow,
        ),
      ),
      Expanded(
        flex: 3,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.red,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.blue,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.orange,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.orange,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.blue,
        ),
      ),
    ];
  }

  Widget containerDersleri() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: const Text(
          'Berkay',
          style: TextStyle(fontSize: 128, fontWeight: FontWeight.bold),
        ),
        decoration: BoxDecoration(
            color: Colors.orange,
            border: Border.all(width: 4, color: Colors.purple),
            borderRadius: BorderRadius.circular(50),
            image: DecorationImage(
              image: NetworkImage(_img2),
              fit: BoxFit.scaleDown,
            ),
            boxShadow: const [
              BoxShadow(color: Colors.green, offset: Offset(10, 20)),
              BoxShadow(),
            ]),
      ),
    );
  }
}
