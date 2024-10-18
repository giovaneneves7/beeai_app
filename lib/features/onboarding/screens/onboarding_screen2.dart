import 'package:beeai/helper/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingPage2 extends StatelessWidget {
  final PageController controller; 

  OnboardingPage2({required this.controller}); 

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      color: theme.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.phone_android_outlined,
            size: 100,
            color: theme.scaffoldBackgroundColor,
          ),
          SizedBox(height: 20),
          Text(
            "Todos Os Dados Das Suas Colmeias Estão Disponíveis Na Palma Da Sua Mão",
            style: theme.textTheme.bodyText1!.copyWith(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              
              Get.toNamed(RouteHelper.getHomeScreen());

            },
            child: Text("Próximo >"),
          ),
        ],
      ),
    );
  }
}
