import 'package:provider/provider.dart';
import 'package:teste_vaga/app/core/modules/attendance_management_module.dart';
import 'package:teste_vaga/app/modules/auth/login/login_controller.dart';
import 'package:teste_vaga/app/modules/auth/login/login_page.dart';

class AuthModule extends AttendanceManagementModule {
  AuthModule()
      : super(
          routers: {
            '/login': (context) => const LoginPage(),
          },
          bindings: [
            ChangeNotifierProvider(
              create: (_) => LoginController(),
            )
          ],
        );
}
