import 'package:repository_pattern_di/data_source/local/local_data_source.dart';
import 'package:repository_pattern_di/data_source/remote/remote_data_source.dart';
import 'package:repository_pattern_di/model/user.dart';

class UserRepository {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;

  UserRepository({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  bool isNetwork = true;

  bool addUser(User user) {
    if (isNetwork) {
      return remoteDataSource.addUser(user);
    } else {
      return localDataSource.addUser(user);
    }
  }

  List<User> getAllUser() {
    if (isNetwork) {
      return remoteDataSource.getAllUser();
    } else {
      return localDataSource.getAllUser();
    }
  }
}
