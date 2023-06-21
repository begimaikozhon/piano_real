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
        // centerTitle: true, бул AppBarдын касиети менен мааниси title да берилген Text тин атын центрге коюп берет
        centerTitle: true,
      ),
      //  ListView.builder бул виджеттин кызматы экранга каалаган санда элементтерди кошо алабыз.
      // Экран жылып көрүнө берет
      body: ListView.builder(
        // scrollDirection: Axis.horizontal,  бул ListView.builder дин касиети жана маниси
        // кызматы экранда чыккан элементтерди горизонтально коюп берет

        scrollDirection: Axis.horizontal,
        //   itemCount: --, бул ListView.builder дин касиети жана мааниси, маанисине сан беребиз, кызматы экранга чыккан элементтердин саныны көргөзөбүз
        itemCount: 2,
        // itemBuilder: бул ListView.builder дин касиети return чыгаруу үчүн
        itemBuilder: (context, index) {
          return const Stack(
            children: [
              Row(
                children: [
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
                //left:  бул  Positioned виджетинин касиети,кызматы берилген элементти кандайдыр бир башка элементтин үстүнө оңду көздөй жылдырып берет
                left: 40,
                // right:   бул  Positioned виджетинин касиети,кызматы берилген элементти кандайдыр бир башка элементтин үстүнө солду көздөй жылдырып берет
                right: 0,
                //top:  бул  Positioned виджетинин касиети,кызматы берилген элементти кандайдыр бир башка элементтин үстүнө ылдыйды көздөй жылдырып берет
                top: 0,
                child: Row(
                  children: [
                    PianoBlackBtn(),
                    PianoBlackBtn(),
                    PianoBlackBtn(
                      //visible: false, бул жерде  PianoBlackBtn классында конструктордо берилген маанини false эле аны true кылып өзгөртүп алабыз. Ошондо ушул кнопка экранга чыкпай калат.
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
