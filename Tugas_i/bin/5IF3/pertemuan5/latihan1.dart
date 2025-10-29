  class Motor{
    String? merek;
    String? warna;
    int? tahun;
    int? harga;
  }

class Dosen{
  String? nama;
  int? nip;
}

void main() {
  Motor motor = Motor();
  print(motor.merek = "BMW");
  print(motor.tahun = 2007);
  print(motor.warna = "hitam");
}






