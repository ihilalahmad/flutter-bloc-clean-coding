import 'package:flutter/material.dart';
import 'package:flutter_bloc_clean_coding/config/routes/routes_name.dart';
import 'package:flutter_bloc_clean_coding/views/components/loading_widget.dart';
import 'package:flutter_bloc_clean_coding/views/components/no_internet_widget.dart';
import 'package:flutter_bloc_clean_coding/views/components/round_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const NoInternetWidget(errorMessage: 'No internet connection'),
            TextButton(
              onPressed: (){
                Navigator.pushNamed(context, RoutesName.homeScreen);
              },
              child: Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
