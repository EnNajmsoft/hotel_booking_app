import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color cyan60014 = fromHex('#141aadb6');

  static Color black900B2 = fromHex('#b2000000');

  static Color blueGray90059 = fromHex('#59353535');

  static Color gray80046 = fromHex('#463a3a3a');

  static Color redA2001e = fromHex('#1ef75555');

  static Color gray80000 = fromHex('#004b4b4b');

  static Color green500 = fromHex('#4aaf57');

  static Color gray9008f = fromHex('#8f282828');

  static Color black900 = fromHex('#000000');

  static Color teal900 = fromHex('#0c5054');

  static Color gray8001d = fromHex('#1d444444');

  static Color blueGray90001 = fromHex('#24272f');

  static Color blueGray700 = fromHex('#53565b');

  static Color blueGray900 = fromHex('#31343b');

  static Color gray600 = fromHex('#757575');

  static Color gray90002 = fromHex('#1f1f1f');

  static Color gray700 = fromHex('#565960');

  static Color gray400 = fromHex('#bdbdbd');

  static Color gray500 = fromHex('#9e9e9e');

  static Color blueGray400 = fromHex('#769495');

  static Color indigoA20014 = fromHex('#145a6cea');

  static Color gray800 = fromHex('#35383f');

  static Color redA200 = fromHex('#f75555');

  static Color gray900 = fromHex('#181a20');
  // static Color gray900 = Color.fromARGB(224, 255, 255, 255);

  static Color gray90001 = fromHex('#24262e');

  static Color greenA7001e = fromHex('#1e1ab65c');

  static Color greenA7003f = fromHex('#3f1ab65c');

  static Color black9000c = fromHex('#0c04060f');

  static Color gray200 = fromHex('#eeeeee');

  static Color yellowA700 = fromHex('#ffd300');

  static Color gray300 = fromHex('#e0e0e0');

  static Color cyan60001 = fromHex('#19acb6');

  static Color gray100 = fromHex('#f5f5f5');

  static Color cyan60002 = fromHex('#19acb6');

  static Color gray900D8 = fromHex('#d8181a20');

  static Color green40033 = fromHex('#334ade80');

  static Color gray8002d = fromHex('#2d404040');

  static Color gray90096 = fromHex('#961f1f1f');

  static Color blueGray90076 = fromHex('#762e2e2e');

  static Color cyan600 = fromHex('#1aadb6');

  static Color black90014 = fromHex('#1404060f');

  static Color blueGray40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color blueGray70001 = fromHex('#53555b');

  static Color redA20033 = fromHex('#33f75555');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
