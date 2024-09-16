import 'package:flutter/material.dart';

class OnboardingPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Acessando o tema com Theme.of(context)
    final theme = Theme.of(context);

    return Container(
      color: theme.primaryColor, // Usando a cor primária do tema
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.phone_android_outlined,
            size: 100,
            color: theme.scaffoldBackgroundColor, // Cor do background
          ),
          SizedBox(height: 20),
          Text(
            "Todos Os Dados Das Suas Colmeias Estão Disponíveis Na Palma Da Sua Mão",
            style: theme.textTheme.bodyText1!.copyWith(fontSize: 24), // Usando o textTheme do tema
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
