import 'package:flutter/material.dart';
import 'package:teste_vaga/app/core/ui/theme_extensions.dart';

class LogoApp extends StatelessWidget {
  const LogoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //  mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/logo.png',
          height: 200,
        ),
        Text(
          'Gerencia de Atendimentos',
          style: context.textTheme.headlineMedium,
        )
      ],
    );
  }
}
