import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

import '../Global Variables/Constants.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //_navigateToNextScreen();
  }
  Future<bool> checkFirstTimeUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstTimeUser = prefs.getBool('isFirstTimeUser') ?? true;
    return isFirstTimeUser;
  }

  Future<bool> LogedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstTimeUser = prefs.getBool('LogedIn') ?? false;
    return isFirstTimeUser;
  }
  Future<void> _navigateToNextScreen() async {

    await Future.delayed(Duration(seconds: 3)); // Display splash screen for 2 seconds
    // if(await checkFirstTimeUser()){
    //   Get.to(()=>OnboardingScreen());
    // }else{
    //   if(await LogedIn()){
    //     Get.to(()=>Home(passedIndex: 0));
    //   }
    //   else {
    //     Get.to(() => LoginPage());
    //   }
    //
    // }
    // Navigate to onboarding screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor, // Background color for the splash screen
      body: Center(
        child: WidgetAnimator(
          atRestEffect: WidgetRestingEffects.wave(effectStrength: 0.6),

          incomingEffect: WidgetTransitionEffects.incomingSlideInFromLeft(
            curve: Curves.easeInToLinear,
            duration: Duration(milliseconds: 3000)
          ),
          child: Image.asset(
            'assets/surgeLogo.png', // Replace with your own image path
            width: 200,
            height: 150,
          ),
        ),
      ),
    );
  }
}

