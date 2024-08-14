import 'package:delivery_app/common/color_extension.dart';
import 'package:delivery_app/view/login/welcome_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override

  //  ---------------------------------------------------------------------------------------
  void initState() {
    // TODO: implement initState
    super.initState();
    fireOpenApp();
  }

  // ---------------------------------------------------------------------------------------

  void fireOpenApp() async {
    await Future.delayed(
        const Duration(seconds: 3)); // for the duration of splash screen logo.
    startApp();
  }

  // ---------------------------------------------------------------------------------------

  void startApp() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                const WelcomeView())); // from here, we are entering into our main app screens.
  }

  // ---------------------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    // Important parameters of sketching the splash screen.
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.primary,
      body: Center(
        child: Image.asset("assets/img/splash_logo.png",
            width: media.width * 0.5), //Splash logo
      ),
    );
  }
}
