import 'package:flutter/material.dart';
import 'package:provider/single_child_widget.dart ';
import 'package:teste_vaga/app/core/modules/attendance_menagement_page.dart';

abstract class AttendanceManagementModule {
  final Map<String, WidgetBuilder> _routers;
  final List<SingleChildWidget>? _bindings;

  AttendanceManagementModule({
    List<SingleChildWidget>? bindings,
    required Map<String, WidgetBuilder> routers,
  })  : _routers = routers,
        _bindings = bindings;

  Map<String, WidgetBuilder> get routers {
    return _routers.map(
      (key, pageBuilder) => MapEntry(
        key,
        (_) => AttendanceMenagementPage(
          bindings: _bindings,
          page: pageBuilder,
        ),
      ),
    );
  }
}
