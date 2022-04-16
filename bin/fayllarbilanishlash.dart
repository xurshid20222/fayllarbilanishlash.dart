import 'dart:convert';
import 'dart:io';

import 'package:fayllarbilanishlash/fayllarbilanishlash.dart';

void main() async {
  Directory directory = Directory.fromUri(Uri(path: 'D:/PDPDart'));

  Directory directory1 = Directory(directory.parent.path + '/USer');
  directory1.create();
  File file = File(directory1.path + '/user.dart');
  await file.create();

  List<Map<String, dynamic>> list = [];
  do {
    print('Yangi odam qushish uchun 1 ni bosing');
    print('Datani olishi uchun 0 ni bosing');
    int start = int.parse(stdin.readLineSync()!);
    if (start != 0) {
      stdout.write('FirstName: ');
      String firstName = stdin.readLineSync()!;
      stdout.write('LastName: ');
      String lastName = stdin.readLineSync()!;
      stdout.write('email: ');
      String email = stdin.readLineSync()!;
      stdout.write('password: ');
      String password = stdin.readLineSync()!;
      User user = User(firstName, lastName, email, password);
      list.add(user.toJson());
    } else {
      file.writeAsStringSync(jsonEncode(list));
      print(await file.readAsString());
    }
  } while (true);
}
