import 'package:dart_frog/dart_frog.dart';
import 'package:mahasiswa/core/services/jwt.dart';
import 'package:mahasiswa/core/services/orm.dart';
import 'package:mahasiswa/features/mahasiswa/data/datasources/mahasiswa_local_datasource.dart';
import 'package:mahasiswa/features/mahasiswa/data/datasources/mahasiswa_local_datasource_impl.dart';
import 'package:mahasiswa/features/mahasiswa/data/repositories/mahasiswa_repository_impl.dart';
import 'package:mahasiswa/features/mahasiswa/domain/repositories/mahasiswa_repository.dart';
import 'package:mahasiswa/features/mahasiswa/domain/usecases/create_mahasiswa.dart';
import 'package:mahasiswa/features/mahasiswa/domain/usecases/delete_mahasiswa.dart';
import 'package:mahasiswa/features/mahasiswa/domain/usecases/get_all_mahasiswa.dart';
import 'package:mahasiswa/features/mahasiswa/domain/usecases/update_mahasiswa.dart';

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(provider<JwtService>((_) => jwtService))
      .use(provider<ORM>((_) => orm))
      .use(provider<MahasiswaLocalDataSource>((_) => mahasiswaLocalDataSource))
      .use(provider<MahasiswaRepository>((_) => mahasiswaRepository))
      .use(provider<CreateMahasiswaUsesCases>((_) => createMahasiswaUsesCases))
      .use(provider<UpdateMahasiswaUsesCases>((_) => updateMahasiswaUsesCases))
      .use(provider<GetAllMahasiswaUsesCases>((_) => getAllMahasiswaUsesCases))
      .use(provider<DeleteMahasiswaUsesCases>((_) => deleteMahasiswaUsesCases));
}

/// initialize instance
final JwtService jwtService = JwtServiceImpl();
final ORM orm = ORM();
final MahasiswaLocalDataSource mahasiswaLocalDataSource =
    MahasiswaLocalDataSourceImpl(
  mahasiswaServiceDB: orm,
);
final MahasiswaRepository mahasiswaRepository = MahasiswaRepositoryImpl(
  mahasiswaLocalDataSource: mahasiswaLocalDataSource,
);
final GetAllMahasiswaUsesCases getAllMahasiswaUsesCases =
    GetAllMahasiswaUsesCases(
  mahasiswaRepository: mahasiswaRepository,
);
final CreateMahasiswaUsesCases createMahasiswaUsesCases =
    CreateMahasiswaUsesCases(
  mahasiswaRepository: mahasiswaRepository,
);
final DeleteMahasiswaUsesCases deleteMahasiswaUsesCases =
    DeleteMahasiswaUsesCases(
  mahasiswaRepository: mahasiswaRepository,
);
final UpdateMahasiswaUsesCases updateMahasiswaUsesCases =
    UpdateMahasiswaUsesCases(
  mahasiswaRepository: mahasiswaRepository,
);
