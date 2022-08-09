import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tech_blog_app_3/gen/assets.gen.dart';
import 'package:tech_blog_app_3/view/main_screen.dart';
import 'package:tech_blog_app_3/component/my_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => MainScreen()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: Image.asset(Assets.images.logo.path).image,
                  height: 64,
                ),
                const SizedBox(
                  height: 32,
                ),
                const SpinKitFadingCube(
                  color: SolidColors.primeryColor,
                  size: 32.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
