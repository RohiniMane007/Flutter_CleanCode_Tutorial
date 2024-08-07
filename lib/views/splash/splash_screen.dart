import 'package:flutter/material.dart';

import '../../config/components/components.dart';
import '../../services/splash_services.dart';

// import '../../config/routes/routes_name.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  final SplashServices _splashServices = SplashServices();
   @override
  void initState() {
    super.initState();
    _splashServices.isLogin(context);
    // _navigate();
  }

  /*_navigate() async {
    await Future.delayed(const Duration(milliseconds: 1500));
    if (!mounted) return;
    Navigator.pushNamedAndRemoveUntil(context, RoutesName.loginScreen,(route)=>false);
    
  }*/
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: LoadingWidget(size: 40,)),
    );
  }
}