import 'package:sqflite_common/sqlite_api.dart';

import 'migration.dart';

class MigrationV1 implements Migration {
  @override
  void create(Batch batch) {
    batch.execute('''
    create gerencia de atendimentos(
      id Interger primary key autoincrement, 
      descricao varchar(500) not null, 
      data_hora datetime, 
      finalizado interger
    )
''');
  }

  @override
  void update(Batch batch) {}
}
