import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer бул меню чыгарып берет, өзүнө Drawer widgetin алат
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Flutter Piano'),
        // title да берилген Text тин атын центрге коюп берет
        centerTitle: true,
      ),
      body: ListView.builder(
        // scrollDirection: Axis.horizontal,  бул ListView.builder дин прапортиси
        // кызматы экранда чыккан элементтерди горизонтально коюп берет

        scrollDirection: Axis.horizontal,
        //   itemCount: --, бул ListView.builder дин прапортиси кызматы экранга чыккан элементтердин санныны көргөзөбүз
        itemCount: 2,
        // itemBuilder: бул ListView.builder дин прапортиси return чыгаруу үчүн
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Row(
                children: [
                  // SizedBox тун бул жердеги кызматы ElevatedButton ду SizedBox виджетине ороп алдык себеби кнопканын узун туурасын берүү үчун
                  SizedBox(
                    width: 80,
                    child: ElevatedButton(
                      onPressed: () {},
                      // style: ButtonStyle кнопкага стил берүү үчүн
                      style: ButtonStyle(
                          // backgroundColor: MaterialStateColor.resolveWith(
                          //(states) => Colors.white) кнопканын түсүн өзгөтүү үчүн
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => Colors.white)),
                      // Align (выровнять) бул виджет
                      child: const Align(
                        //   alignment: Alignment.bottomCenter, align дин ропортиси жана мааниси кызматы текстте берилген элементти экрандын башынанан акырына чейин созуп берет
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'do',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
