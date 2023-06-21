import 'package:flutter/material.dart';
import 'package:piano_real/components/piano_black_btn.dart';
import 'package:piano_real/components/piano_white_btn.dart';

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
      //  ListView.builder бул виджеттин кызматы экранга каалаган санда элементтерди кошо алабыз.
      // Экран жылып көрүнө берет
      body: ListView.builder(
        // scrollDirection: Axis.horizontal,  бул ListView.builder дин прапортиси
        // кызматы экранда чыккан элементтерди горизонтально коюп берет

        scrollDirection: Axis.horizontal,
        //   itemCount: --, бул ListView.builder дин прапортиси кызматы экранга чыккан элементтердин санныны көргөзөбүз
        itemCount: 2,
        // itemBuilder: бул ListView.builder дин прапортиси return чыгаруу үчүн
        itemBuilder: (context, index) {
          return const Stack(
            children: [
              Row(
                children: [
                  // Padding(padding: const EdgeInsets.all(2.0), бул sized box ту орогон виджет прапортиси менен, кызматы кнопкалардын арасын ачып берет
                  PianoWhiteBtn(),
                  PianoWhiteBtn(),
                  PianoWhiteBtn(),
                  PianoWhiteBtn(),
                  PianoWhiteBtn(),
                  PianoWhiteBtn(),
                  PianoWhiteBtn(),
                ],
              ),
              // Positioned виджети бул Stack виджетинин ичине жазабыз.
              // кызматы элементтин үстүнө элемент коюп берет.
              Positioned(
                //left  бул  Positioned виджетинин прапортиси,кызматы берилген элементти кандайдыр бир башка элементтин үстүнө оңду көздөй жылдырып берет
                left: 40,
                // right   бул  Positioned виджетинин прапортиси,кызматы берилген элементти кандайдыр бир башка элементтин үстүнө солду көздөй жылдырып берет
                right: 0,
                //top  бул  Positioned виджетинин прапортиси,кызматы берилген элементти кандайдыр бир башка элементтин үстүнө ылдыйды көздөй жылдырып берет
                top: 0,
                child: Row(
                  children: [
                    PianoBlackBtn(),
                    PianoBlackBtn(),
                    PianoBlackBtn(
                      visible: false,
                    ),
                    PianoBlackBtn(),
                    PianoBlackBtn(),
                    PianoBlackBtn(),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
