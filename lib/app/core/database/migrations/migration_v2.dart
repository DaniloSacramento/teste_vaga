import 'package:sqflite_common/sqlite_api.dart';

import 'migration.dart';

class MigrationV2 implements Migration {
  @override
  void create(Batch batch) {
    batch.execute('create table teste (id interger)');
  }

  @override
  void update(Batch batch) {
    batch.execute('create table teste(id integer)');
  }
}