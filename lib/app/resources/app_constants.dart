import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class ColorConstant {
  static const blueGradient = [
    // Color(0xff996699),
    // Color(0xffCCFF33),
    Colors.white,
    Color(0xff003366),
  ];
  static const progress_background_color = const Color(0xff1B2153);
  // static const common_bg_dark = Color.fromARGB(255, 23, 32, 74);
  static const common_bg_dark = Color.fromARGB(255, 23, 32, 74);

  static const transparent = Colors.transparent;
  static const primary = Color(0xff003366);
  static const secondary = Color(0xff00FF99);
  static const secondary1 = Color(0xffCCFF33);
  static const black = Color(0xff000326);
  static const white = Color(0xfff0f2f1);
  static const gray9e9e9e = Color(0xff9e9e9e);
  static const text = Color(0xff9e9e9e);
  static const grey70747E = Color(0xff70747E);
  static const pinkFFF1F3 = Color(0xffFFF1F3);
  static const blue265AE8 = Color(0xff265AE8);
  static const yellowFFF2AF = Color(0xffFFF2AF);
  static const grey = Color.fromARGB(12, 118, 118, 128);
  static const redpink = Color(0xfffe546e);
  static const redStop = Color(0xffF70D1A);
  static const cyanResume = Color(0xffCCFFFF);
  static const green = Color(0xff5adc78);
}

class TextStyleConstant {
  static const _fontWeightBold = FontWeight.w500;
  static const _fontWeightNormal = FontWeight.normal;

  static const black16Roboto =
      TextStyle(fontSize: 16, color: Colors.black, fontFamily: "Roboto");
            static const black22RobotoBold =
      TextStyle(fontSize: 22, color: Colors.black, fontFamily: "Roboto-Bold");
              static const black40RobotoBold =
      TextStyle(fontSize: 40, color: Colors.black, fontFamily: "Roboto-Bold");
         static const black60RobotoBold =
      TextStyle(fontSize: 60, color: Colors.black, fontFamily: "Roboto-Bold");
              static const black16RobotoThin =
      TextStyle(fontSize: 16, color: Colors.black, fontFamily: "Roboto-Thin");
  static const white16Roboto =
      TextStyle(fontSize: 16, color: Colors.white, fontFamily: "Roboto");
        static const white18Roboto =
      TextStyle(fontSize: 18, color: Colors.white, fontFamily: "Roboto");
        static const white16RobotoThin =
      TextStyle(fontSize: 16, color: Colors.white, fontFamily: "Roboto-Thin");
       static const white22RobotoBold =
      TextStyle(fontSize: 22, color: Colors.white, fontFamily: "Roboto-Bold");
       static const white50RobotoBold =
      TextStyle(fontSize: 50, color: Colors.white, fontFamily: "Roboto-Bold");
        static const purple16RobotoBold =
      TextStyle(fontSize: 16, color: Colors.purple, fontFamily: "Roboto-Bold");
        static const purple22RobotoBold =
      TextStyle(fontSize: 22, color: Colors.purple, fontFamily: "Roboto-Bold");
              static const grey16RobotoBold =
      TextStyle(fontSize: 16, color: Colors.grey, fontFamily: "Roboto-Bold");
       static const red22RobotoBold =
      TextStyle(fontSize: 22, color: Colors.redAccent, fontFamily: "Roboto-Bold");
//purple
  static const blueBold16 = TextStyle(
    fontSize: 16,
    color: ColorConstant.blue265AE8,
    fontWeight: _fontWeightBold,
  );
  static const blueRegular16 = TextStyle(
    fontSize: 16,
    color: ColorConstant.blue265AE8,
    fontWeight: _fontWeightNormal,
  );

  static const blackBold16 = TextStyle(
    fontSize: 16,
    color: ColorConstant.black,
    fontWeight: _fontWeightBold,
  );

  static const blackRegular16 = TextStyle(
    fontSize: 16,
    color: ColorConstant.black,
    fontWeight: _fontWeightNormal,
  );

  static const whiteBold16 = TextStyle(
    fontSize: 16,
    color: ColorConstant.white,
    fontWeight: _fontWeightBold,
  );
  static const whiteBold22 = TextStyle(
    fontSize: 22,
    color: ColorConstant.white,
    fontWeight: _fontWeightBold,
  );
  static const whiteBold25 = TextStyle(
    fontSize: 25,
    color: ColorConstant.white,
    fontWeight: _fontWeightBold,
  );

  static const whiteRegular16 = TextStyle(
    fontSize: 16,
    color: ColorConstant.white,
    fontWeight: _fontWeightNormal,
  );
  static const greyRegular16 = TextStyle(
    fontSize: 16,
    color: ColorConstant.grey,
    fontWeight: _fontWeightNormal,
  );
  static const textBold16 = TextStyle(
    fontSize: 16,
    color: ColorConstant.text,
    fontWeight: _fontWeightBold,
  );

  static const textRegular16 = TextStyle(
    fontSize: 16,
    color: ColorConstant.text,
    fontWeight: _fontWeightNormal,
  );

  static const text1Regular116 = TextStyle(
    fontSize: 16,
    color: ColorConstant.secondary,
    fontWeight: _fontWeightNormal,
  );
}

class Palette {
  static final Color scaffold = Colors.blueGrey.shade900;
  static const Color foregroundColor = Colors.white;
  static final Color secondaryForegroundColor =
      foregroundColor.withOpacity(0.3);

  static const Color blue = Color.fromARGB(255, 63, 167, 252);
  static const Color lighterBlue = Color.fromARGB(255, 106, 188, 255);
}



class Colur {
  static const purple_gradient_color1 = const Color(0xff8A3CFF);
  static const purple_gradient_color2 = const Color(0xffC040FF);
  static const blue_gredient_1 = const Color(0xff0A71FE);
  static const blue_gredient_2 = const Color(0xff0AEFFE);

  static const purple_gradient_shadow = const Color(0x908C3CFF);

  static const progress_background_color = const Color(0xff1B2153);
  static const light_yellow_gredient1 = const Color(0xffF9CF45);
  static const light_yellow_gredient2 = const Color(0xffEE9B1D);
  static const light_red_gredient1 = const Color(0xffFF5757);
  static const light_red_gredient2 = const Color(0xffFF3E3F);
  static const light_red_stop_gredient1 = const Color(0xffF15432);
  static const light_red_stop_gredient2 = const Color(0xffE73F34);
  static const light_green_play_gredient1 = const Color(0xff7BE445);
  static const light_green_play_gredient2 = const Color(0xff22BE11);
  static const green_For_NotReally = const Color(0xff28853a);
  static const ligh_green_For_NotReally = const Color(0xff1ED247);
  static const purple_Lock_screen = const Color(0xffC95CFF);

  static const water_level_wave1 = const Color(0xff42B2FF);
  static const water_level_wave2 = const Color(0xff00AEFF);

  static const green_gradient_color1 = const Color(0xff21BE10);
  static const green_gradient_color2 = const Color(0xff7BDE56);

  static const green_gradient_shadow = const Color(0x902fc31c);
  static const red_gradient_shadow = Color(0x90ff4343);

  static const txt_grey = const Color(0xff9195B6);
  static const txt_white = const Color(0xffFFFFFF);
  static const txt_black = const Color(0xff000000);
  static const txt_purple = const Color(0xffC040FF);
  static const txt_green = const Color(0xff24BF12);
  static const white = const Color(0xffFFFFFF);
  static const common_bg_dark = const Color(0xff070E3D);
  static const rounded_rectangle_color = const Color(0xff1B2153);
  static const transparent = Colors.transparent;

  static const unselected_star = const Color(0x909195B6);
  static const selected_star = const Color(0xffFFC804);

  static const gray_border = const Color(0xff9195B6);
  static const graph_water = const Color(0xff00A3FF);
  static const graph_health = const Color(0xff8C3CFF);

  static const red_turn_off = const Color(0xffEB5757);
}

class AppConstants {
  static const String mapBoxAccessToken =
      'pk.eyJ1IjoiZ2Fkb2NoYW5uZWwyNTA0IiwiYSI6ImNsN3lpMmdtZzB6ZXYzb3FjeHZybjIzMzQifQ.M4PAPawqM1NoCpiBH7obEA';

  static const String mapBoxStyleId = 'clb31sved000515n8tu9pp6xf';

  // static final myLocation = LatLng(51.5090214, -0.1982948);
}
class ColorConstants {
  static Color gray50 = hexToColor('#e9e9e9');
  static Color gray100 = hexToColor('#bdbebe');
  static Color gray200 = hexToColor('#929293');
  static Color gray300 = hexToColor('#666667');
  static Color gray400 = hexToColor('#505151');
  static Color gray500 = hexToColor('#242526');
  static Color gray600 = hexToColor('#202122');
  static Color gray700 = hexToColor('#191a1b');
  static Color gray800 = hexToColor('#121313');
  static Color gray900 = hexToColor('#0e0f0f');
  static Color textFieldBgColor = const Color(0xfff7faf9);
  static Color appColors = const   Color(0xff3ac4ac);

}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex));

  return Color(int.parse(hex.substring(1), radix: 16) +
      (hex.length == 7 ? 0xFF000000 : 0x00000000));
}

class Themes {
  static ThemeData lightTheme = ThemeData(
      fontFamily: "Open Sans",
      primarySwatch: Colors.blue,
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
          titleTextStyle:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.grey.shade50,
          elevation: 0),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
        hintStyle: const TextStyle(
          fontSize: 14,
        ),
      ),
      cardColor: Colors.grey.shade200,
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: Colors.red),
      textTheme: TextTheme(
          headline1: const TextStyle(
              letterSpacing: -1.5,
              fontSize: 48,
              color: Colors.black,
              fontWeight: FontWeight.bold),
          headline2: const TextStyle(
              letterSpacing: -1.0,
              fontSize: 40,
              color: Colors.black,
              fontWeight: FontWeight.bold),
          headline3: const TextStyle(
              letterSpacing: -1.0,
              fontSize: 32,
              color: Colors.black,
              fontWeight: FontWeight.bold),
          headline4: const TextStyle(
              letterSpacing: -1.0,
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.w600),
          headline5: const TextStyle(
              letterSpacing: -1.0,
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w500),
          headline6: const TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w600),
          subtitle1: const TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500),
          subtitle2: const TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
          bodyText1: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 16,
              fontWeight: FontWeight.w400),
          bodyText2: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 14,
              fontWeight: FontWeight.w400),
          button: const TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
          caption: TextStyle(
              color: Colors.grey.shade800,
              fontSize: 12,
              fontWeight: FontWeight.w400),
          overline: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 10,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.5)));

  static ThemeData darkTheme = ThemeData(
    fontFamily: "Open Sans",
    primaryColor: Colors.blue,
    primarySwatch: Colors.blue,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: ColorConstants.gray900,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorConstants.gray900,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    bottomAppBarColor: ColorConstants.gray800,
    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
        hintStyle: const TextStyle(
          fontSize: 14,
        )),
    cardColor: ColorConstants.gray700,
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: Colors.white),
    textTheme: TextTheme(
        headline1: TextStyle(
            letterSpacing: -1.5,
            fontSize: 48,
            color: Colors.grey.shade50,
            fontWeight: FontWeight.bold),
        headline2: TextStyle(
            letterSpacing: -1.0,
            fontSize: 40,
            color: Colors.grey.shade50,
            fontWeight: FontWeight.bold),
        headline3: TextStyle(
            letterSpacing: -1.0,
            fontSize: 32,
            color: Colors.grey.shade50,
            fontWeight: FontWeight.bold),
        headline4: TextStyle(
            letterSpacing: -1.0,
            color: Colors.grey.shade50,
            fontSize: 28,
            fontWeight: FontWeight.w600),
        headline5: TextStyle(
            letterSpacing: -1.0,
            color: Colors.grey.shade50,
            fontSize: 24,
            fontWeight: FontWeight.w500),
        headline6: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 22,
            fontWeight: FontWeight.w500),
        subtitle1: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 17,
            fontWeight: FontWeight.w500),
        subtitle2: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 14,
            fontWeight: FontWeight.w500),
        bodyText1: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 16,
            fontWeight: FontWeight.w400),
        bodyText2: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 14,
            fontWeight: FontWeight.w400),
        button: const TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
        caption: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 12,
            fontWeight: FontWeight.w500),
        overline: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 10,
            fontWeight: FontWeight.w400)),
  );
}