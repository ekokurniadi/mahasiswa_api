
import 'package:dart_frog/dart_frog.dart';
import 'package:mahasiswa/core/injectors/injector_behavior.dart';
import 'package:mahasiswa/features/mahasiswa/data/datasources/mahasiswa_local_datasource.dart';
import 'package:mahasiswa/features/mahasiswa/domain/repositories/mahasiswa_repository.dart';
import 'package:mahasiswa/features/mahasiswa/domain/usecases/create_mahasiswa.dart';
import 'package:mahasiswa/features/mahasiswa/domain/usecases/delete_mahasiswa.dart';
import 'package:mahasiswa/features/mahasiswa/domain/usecases/get_all_mahasiswa.dart';
import 'package:mahasiswa/features/mahasiswa/domain/usecases/get_by_id_mahasiswa.dart';
import 'package:mahasiswa/features/mahasiswa/domain/usecases/update_mahasiswa.dart';

Handler mahasiswaInjector(Handler handler) {
  return handler
      .use(provider<MahasiswaLocalDataSource>((_) => mahasiswaLocalDataSource))
      .use(provider<MahasiswaRepository>((_) => mahasiswaRepository))
      .use(provider<CreateMahasiswaUsesCases>((_) => createMahasiswaUsesCases))
      .use(provider<UpdateMahasiswaUsesCases>((_) => updateMahasiswaUsesCases))
      .use(provider<GetAllMahasiswaUsesCases>((_) => getAllMahasiswaUsesCases))
      .use(
        provider<GetByIdMahasiswaUsesCases>((_) => getByIdMahasiswaUsesCases),
      )
      .use(provider<DeleteMahasiswaUsesCases>((_) => deleteMahasiswaUsesCases));
}
