import 'package:flutter/material.dart';

class OnboardingPage1 extends StatelessWidget {
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
            Icons.hive_outlined,
            size: 100,
            color: theme.scaffoldBackgroundColor, // Cor do background
          ),
          SizedBox(height: 20),
          Text(
            "Bem-Vindo Ao Sistema De Monitoramento De Colmeias",
            style: theme.textTheme.bodyText1!.copyWith(fontSize: 24), // Usando o textTheme do tema
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              PageController controller = PageView.of(context)!;
              controller.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
            child: Text("Próximo >"),
          ),
        ],
      ),
    );
  }
}
