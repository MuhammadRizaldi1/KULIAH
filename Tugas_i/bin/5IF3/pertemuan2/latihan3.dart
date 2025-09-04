import 'dart:io';

void main(List<String> args) {
  Map<String, dynamic> users = {
    'admin': '123',
    'username': '123',
    'password': 123,
  };

  stdout.write('Masukkan username: ');
  String username = stdin.readLineSync()!;
  stdout.write('Masukkan password: ');
  String password = stdin.readLineSync()!;
  if (users.containsKey(username) && users[username] == int.parse(password)) {
    print('Login berhasil');
  } else {
    print('Login gagal');
  }
}
