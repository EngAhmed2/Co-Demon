import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    // Lock the orientation to portrait mode for this screen
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    // Reset orientation settings when leaving the screen
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffbbc1b7),
      body: SizedBox(
        height: deviceHeight,
        width: deviceWidth,
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 0,
              child: SizedBox(
                width: deviceHeight > deviceWidth
                    ? deviceWidth * 0.4
                    : deviceHeight * 0.3,
                height: deviceHeight > deviceWidth
                    ? deviceWidth * 0.3
                    : deviceHeight * 0.2,
                child: Image.asset(
                  "assets/images/login_page/lamp.png",
                  fit: BoxFit.contain,
                  height: deviceHeight,
                  width: deviceWidth,
                ),
              ),
            ),
            Positioned(
              top: 120,
              right: 0,
              child: SizedBox(
                width: deviceHeight > deviceWidth
                    ? deviceWidth * 0.4
                    : deviceHeight * 0.3,
                height: deviceHeight > deviceWidth
                    ? deviceWidth * 0.3
                    : deviceHeight * 0.2,
                child: Image.asset(
                  "assets/images/login_page/pencil.png",
                  fit: BoxFit.contain,
                  height: deviceHeight,
                  width: deviceWidth,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                width: deviceWidth * 0.6,
                height: deviceWidth * 0.5,
                child: Image.asset(
                  "assets/images/login_page/office-desk.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              top: deviceHeight * 0.3,
              left: 0,
              height: deviceHeight * 0.45,
              width: deviceWidth,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    height: deviceHeight * 0.43,
                    width: deviceWidth * 0.9,
                    color: const Color(0xffffffff),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 3,
                          left: 0,
                          child: SizedBox(
                            width: deviceWidth * 0.25,
                            height: deviceWidth * 0.15,
                            child: Image.asset(
                              "assets/images/login_page/logo.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 18,
                          left: 90,
                          child: SizedBox(
                            child: Text(
                              "Remaining Time!",
                              style: TextStyle(
                                  fontFamily: "LamaSans",
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 60,
                          left: 90,
                          child: SizedBox(
                            width: deviceWidth * 0.45,
                            height: deviceWidth * 0.35,
                            child: Image.asset(
                              "assets/images/login_page/sandtime.gif",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 100,
                          left: 25,
                          child: SizedBox(
                            width: deviceWidth * 0.75,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Months",
                                  style: TextStyle(
                                      fontFamily: "LamaSans",
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900,
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "Days",
                                  style: TextStyle(
                                      fontFamily: "LamaSans",
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900,
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 50,
                          left: 60,
                          child: SizedBox(
                            width: deviceWidth * 0.60,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "0",
                                  style: TextStyle(
                                      fontFamily: "LamaSans",
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900,
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "7",
                                  style: TextStyle(
                                      fontFamily: "LamaSans",
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900,
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
