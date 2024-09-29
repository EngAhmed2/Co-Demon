import 'package:co_demon/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
              (route) => false,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffbbc1b7),
      appBar: AppBar(
        backgroundColor: const Color(0xffbbc1b7),
        systemOverlayStyle: const SystemUiOverlayStyle(
          systemNavigationBarColor: Color(0xffbbc1b7),
        ),
      ),
      body: Center(
        child: SizedBox(
          height: 220,
          width: 220,
          child: Image.asset(
            "assets/images/splash_logo.png",
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
