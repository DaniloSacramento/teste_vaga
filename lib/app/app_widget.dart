import 'package:flutter/material.dart';
import 'package:teste_vaga/app/core/database/sqlite_adm_connection.dart';
import 'package:teste_vaga/app/core/ui/ui_config.dart';
import 'package:teste_vaga/app/modules/auth/auth_module.dart';
import 'package:teste_vaga/app/modules/splash/splash_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final sqliteAdmConnection = SqliteAdmConnection();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(sqliteAdmConnection);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(sqliteAdmConnection);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerencia de Atendimentos',
      initialRoute: '/login',
      theme: UiConfig.theme,
      routes: {...AuthModule().routers},
      home: const SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
