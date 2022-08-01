import 'package:flutter/material.dart';

import '../../../../core/presentation/widgets/loading_widget.dart';
import '../../../home/presentation/view/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> loading() async {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: ((context) => const HomeScreen()),
          ),
          ((route) => false),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    loading();
  }

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: LoadingWidget(),
    );
  }
}
