import 'package:repository_pattern_di/di/di.dart';
import 'package:repository_pattern_di/model/user.dart';
import 'package:repository_pattern_di/repository/user_repository.dart';

void main() {
  initModulue();
  User user = User(
    id: 4,
    fname: 'Suman',
    age: 19,
  );

  UserRepository userRepository = getIt<UserRepository>();
  userRepository.addUser(user);

  print(userRepository.getAllUser());
}
