import 'package:mahasiswa/core/services/jwt.dart';
import 'package:mahasiswa/core/services/orm.dart';
import 'package:mahasiswa/features/mahasiswa/data/datasources/mahasiswa_local_datasource.dart';
import 'package:mahasiswa/features/mahasiswa/data/datasources/mahasiswa_local_datasource_impl.dart';
import 'package:mahasiswa/features/mahasiswa/data/repositories/mahasiswa_repository_impl.dart';
import 'package:mahasiswa/features/mahasiswa/domain/repositories/mahasiswa_repository.dart';
import 'package:mahasiswa/features/mahasiswa/domain/usecases/create_mahasiswa.dart';
import 'package:mahasiswa/features/mahasiswa/domain/usecases/delete_mahasiswa.dart';
import 'package:mahasiswa/features/mahasiswa/domain/usecases/get_all_mahasiswa.dart';
import 'package:mahasiswa/features/mahasiswa/domain/usecases/get_by_id_mahasiswa.dart';
import 'package:mahasiswa/features/mahasiswa/domain/usecases/update_mahasiswa.dart';
import 'package:mahasiswa/features/users/data/datasources/users_local_datasource.dart';
import 'package:mahasiswa/features/users/data/datasources/users_local_datasource_impl.dart';
import 'package:mahasiswa/features/users/data/repositories/users_repository_impl.dart';
import 'package:mahasiswa/features/users/domain/repositories/users_repository.dart';
import 'package:mahasiswa/features/users/domain/usescases/create_user.dart';
import 'package:mahasiswa/features/users/domain/usescases/delete_user.dart';
import 'package:mahasiswa/features/users/domain/usescases/get_all_user.dart';
import 'package:mahasiswa/features/users/domain/usescases/get_by_id_user.dart';
import 'package:mahasiswa/features/users/domain/usescases/login_usecases.dart';
import 'package:mahasiswa/features/users/domain/usescases/update_user.dart';

/// initialize instance
final JwtService jwtService = JwtServiceImpl();
final ORM orm = ORM();

/// Mahasiswa
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
final GetByIdMahasiswaUsesCases getByIdMahasiswaUsesCases =
    GetByIdMahasiswaUsesCases(
  mahasiswaRepository: mahasiswaRepository,
);

/// Users
final UsersLocalDataSource usersLocalDataSource =
    UsersLocalDataSourceImpl(usersServiceDB: orm);

final UsersRepository usersRepository = UserRepositoryImpl(
  usersLocalDataSource: usersLocalDataSource,
);
final LoginUsesCases loginUsesCases = LoginUsesCases(
  usersRepository: usersRepository,
);
final CreateUserUsesCases createUserUsesCases = CreateUserUsesCases(
  usersRepository: usersRepository,
);
final GetAllUserUsesCases getAllUserUsesCases = GetAllUserUsesCases(
  usersRepository: usersRepository,
);
final GetByIdUserUsesCases getByIdUserUsesCases = GetByIdUserUsesCases(
  usersRepository: usersRepository,
);
final UpdateUserUsesCases updateUserUsesCases = UpdateUserUsesCases(
  usersRepository: usersRepository,
);
final DeleteUserUsesCases deleteUserUsesCases = DeleteUserUsesCases(
  usersRepository: usersRepository,
);
