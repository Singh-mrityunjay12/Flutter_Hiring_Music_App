import 'package:flutter/material.dart';

import '../../../utils/constant/colors.dart';
import '../../../utils/constant/text_strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // ChangeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MColors.error,
      body: Center(
        child: Column(children: [
          Align(
            alignment: Alignment.topLeft,
            // child: Image.asset(
            //   MImage.icSplashBg,
            //   width: 300,
            //   // height: 200,
            //   fit: BoxFit.cover,
            // )
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 300,
          ),
          // applogoWidget(),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 5,
          ),
          Text(
            MTexts.appname,
            style: TextStyle(
                fontFamily: MTexts.bold1, fontSize: 22, color: Colors.white),
          ),
          SizedBox(
            height: 5,
          ),
          Text(MTexts.appversion, style: TextStyle(color: Colors.white)),
          Spacer(), //use for responsive height ,Creates a flexible space to insert into a [Flexible] widget.
          Text(MTexts.credits,
              style:
                  TextStyle(fontFamily: MTexts.semibold, color: Colors.white)),
          SizedBox(
            height: 30,
          )
          //our splash screen ui is completed
        ]),
      ),
    );
  }
}
