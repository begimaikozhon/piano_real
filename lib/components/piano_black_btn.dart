import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PianoBlackBtn extends StatelessWidget {
  const PianoBlackBtn({
    super.key,
    // this.visible = true, бул жерде конструкторго маанини беребиз,себеби бул маанини сырттан беребиз
    this.visible = true,
    required this.notaName,
  });
// final bool visible; бул жерде өзгөрмө түзүп алдык жана маанисин  бербедик, аны конструкторго беребиз
  final bool visible;
  final String notaName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: const EdgeInsets.symmetric(horizontal: 10) Padding дин касиети,кызматы элементти эки жан тарабынан жылдырып берет
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: 63,
        height: 180,
        // Visibility виджети кызматы бала класстын элементтин экранга көргөзүү же көргөзбөөнү чечет
        child: Visibility(
          // visible:Visibility виджетинин касиети манисине өзгөрмөнүн атыны беребиз М: visibile,
          visible: visible,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) => Colors.black,
              ),
            ),
            onPressed: () {
              AudioPlayer().play(AssetSource('notes/$notaName.mp3'));
            },
            child: Text(''),
          ),
        ),
      ),
    );
  }
}
