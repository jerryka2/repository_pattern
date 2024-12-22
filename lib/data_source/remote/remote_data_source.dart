import 'package:repository_pattern_di/model/user.dart';

class RemoteDataSource {
  List<User> lstUsers = [
    User(
      id: 1,
      fname: 'Remote Salman',
      age: 60,
    ),
    User(
      id: 2,
      fname: 'Remote Balman',
      age: 30,
    ),
    User(
      id: 3,
      fname: 'Remote alman',
      age: 20,
    ),
  ];

  bool addUser(User user) {
    lstUsers.add(user);
    return true;
  }

  List<User> getAllUser() {
    return lstUsers;
  }
}
