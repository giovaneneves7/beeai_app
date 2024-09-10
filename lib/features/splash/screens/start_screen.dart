import 'package:flutter/material.dart';
import 'package:beeai/util/images.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme.backgroundColor, 
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
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: Theme.of(context).textColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor, 
                foregroundColor: Theme.of(context).textColor, 
              ),
              child: Text('ENTRAR'),
            ),
          ],
        ),
      ),
    );
  }
}
