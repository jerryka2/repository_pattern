import 'package:repository_pattern_di/model/user.dart';

class LocalDataSource {
  List<User> lstUsers = [
    User(
      id: 1,
      fname: 'Local Salman',
      age: 60,
    ),
    User(
      id: 2,
      fname: 'Local Balman',
      age: 30,
    )
  ];

  bool addUser(User user) {
    lstUsers.add(user);
    return true;
  }

  List<User> getAllUser() {
    return lstUsers;
  }
}
