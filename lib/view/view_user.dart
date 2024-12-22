import 'package:repository_pattern_di/di/di.dart';
import 'package:repository_pattern_di/model/user.dart';
import 'package:repository_pattern_di/repository/user_repository.dart';

void main() {
  initModulue();
  UserRepository userRepository = getIt<UserRepository>();
  List<User> lstUser = userRepository.getAllUser();
  print(lstUser);
}
