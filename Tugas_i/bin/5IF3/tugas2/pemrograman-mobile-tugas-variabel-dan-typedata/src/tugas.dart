import 'dart:io';
void main() {
  stdout.write('Masukkan skor Anda (0-100): ');
  String? inputSkor = stdin.readLineSync();
  try {
    if (inputSkor == null || inputSkor.isEmpty) {
      print('Input tidak boleh kosong!');
      return;
    }
    int skor = int.parse(inputSkor);
    if (skor < 0 || skor > 100) {
      print('Skor tidak valid. Mohon masukkan nilai antara 0 hingga 100.');
      return;
    }
    String grade;
    if (skor >= 85) {
      grade = 'A';
    } else if (skor >= 70) {
      grade = 'B';
    } else if (skor >= 60) {
      grade = 'C';
    } else if (skor >= 50) {
      grade = 'D';
    } else {
      grade = 'E';
    }
    print('\nSkor Anda: $skor');
    print('Grade Anda: $grade');
  } on FormatException {
    print('Input tidak valid. Mohon masukkan angka numerik.');
  }
}