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
            child: FlutterSplashScreen.fadeIn(
              childWidget: SizedBox(
                height: 200,
                width: 200,
                child: Image.asset("assets/images/splash.jpg"),
              ),
              onAnimationEnd: () => context.router.push(const HomeRoute()),
            )));
  }
}
