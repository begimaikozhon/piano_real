import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PianoWhiteBtn extends StatelessWidget {
  const PianoWhiteBtn({
    super.key,
    required this.nameNote,
  });

  final String nameNote;

  @override
  Widget build(BuildContext context) {
    // Padding(padding: const EdgeInsets.all(2.0), бул sized box ту орогон виджет касиети менен, кызматы кнопкалардын арасын ачып берет
    return Padding(
      padding: const EdgeInsets.all(2.0),
      // SizedBox ( width: 80,)тун бул жердеги кызматы ElevatedButton ду SizedBox виджетине ороп алдык себеби кнопканын узун туурасын берүү үчун
      child: SizedBox(
        width: 80,
        child: ElevatedButton(
          onPressed: () {
            //бул жазылган кодто кнопканы басканда нотес папкасындагы каалаган музыканы чакыра алабыз
            AudioPlayer().play(AssetSource('notes/$nameNote.mp3'));
          },
          // style: ButtonStyle кнопкага стил берүү үчүн
          style: ButtonStyle(
            // backgroundColor: MaterialStateColor.resolveWith(
            //(states) => Colors.white) кнопканын түсүн өзгөтүү үчүн
            backgroundColor:
                MaterialStateColor.resolveWith((states) => Colors.white),
            // overlayColor:
            //MaterialStateProperty.resolveWith((states) {
            //return states.contains(MaterialState.pressed)
            //? Colors.grey
            //: null;
            // жогоруда көргөзүлгөн buttonStyle дын касиетинин маанисинде
            // эгерде кнопканы басканда түсү grey болот а.э. басылбаса
            // bacgroundcolor до көргөзүлгөндөй ак боюнча калат
            overlayColor: MaterialStateProperty.resolveWith(
              (states) {
                return states.contains(MaterialState.pressed)
                    ? Colors.grey
                    : null;
              },
            ),
          ),
          // Align (выровнять) бул виджет
          child: const Align(
            //   alignment: Alignment.bottomCenter, align дин касиети жана мааниси кызматы текстте берилген элементти экрандын башынанан акырына чейин созуп берет
            alignment: Alignment.bottomCenter,
            child: Text(
              '',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
