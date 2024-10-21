import 'package:beeai/helper/route_helper.dart';
import 'package:beeai/util/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor, 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Images.hive, 
              height: 150,
            ),
            SizedBox(height: 20),
            Text(
              'BEE.AI',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).textTheme.headlineSmall?.color,
                    fontWeight: FontWeight.bold,
                  ),
            ),

            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteHelper.getOnboardingScreen());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor, 
                foregroundColor: Theme.of(context).textTheme.labelLarge?.color, 
              ),
              child: Text('ENTRAR'),
            ),

          ],
        ),
      ),
    );
  }
}
