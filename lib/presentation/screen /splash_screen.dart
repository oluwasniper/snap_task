import 'package:auto_route/auto_route.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:snap_task/core/routes/app_router.gr.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: [SystemUiOverlay.top]),
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.light,
        ),
        child: FlutterSplashScreen(
          splashScreenBody: Image.asset(
            "assets/images/splash.jpg",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          duration: Duration(seconds: 5),
          onEnd: () => context.router.push(const HomeRoute()),
        ),
      ),
    );
  }
}
