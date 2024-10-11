import 'package:flutter/material.dart';

class OnboardingPage2 extends StatelessWidget {
  final PageController controller; // Add this line

  OnboardingPage2({required this.controller}); // Update constructor to accept a named parameter

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
              // Ação quando finaliza o onboarding
            },
            child: Text("Próximo >"),
          ),
        ],
      ),
    );
  }
}
