 import 'package:mahasiswa/features/mahasiswa/domain/entities/mahasiswa_entity.codegen.dart';
import 'package:mahasiswa/features/users/domain/entities/user_entity.codegen.dart';

final listTables = <Map<String, dynamic>>[
      {'tableName': 'mahasiswa', 'fields': MahasiswaEntity.initial().toJson()},
      {'tableName': 'users', 'fields': UserEntity.initial().toJson()},
    ];
