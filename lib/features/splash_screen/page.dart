part of '../features.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 7)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const OnBoarding(),
          ),
              (route) => false);
    });
    
    return  Scaffold(
      body: Center(
        child: Lottie.asset('assets/lottie/splash.json', repeat: false),
      ),
    );
  }
}
