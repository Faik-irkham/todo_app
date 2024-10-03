import 'package:flutter/material.dart';
import 'package:todo_app/todo_page.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Menunggu selama 3 detik
    Future.delayed(const Duration(seconds: 4), () {
      if (!mounted) return;
      // Navigasi ke halaman utama setelah delay
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const TodoPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          'assets/splash-animate.json',
          width: 200,
          height: 200,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
