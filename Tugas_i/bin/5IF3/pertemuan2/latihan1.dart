import 'dart:io';

void main() {
  stdout.write('Masukkan nilai mahasiswa: ');
  int nilaimahasiswa = int.parse(stdin.readLineSync()!);
  if (nilaimahasiswa > 90) {
    print("a");
  } else if (nilaimahasiswa > 75) {
    print("ab");
  } else if (nilaimahasiswa > 71) {
    print("b");
  } else if (nilaimahasiswa > 66) {
    print("bc");
  } else if (nilaimahasiswa > 60) {
    print("c");
  } else if (nilaimahasiswa > 50) {
    print("d");
  } else {
    print("d");
  }
}
