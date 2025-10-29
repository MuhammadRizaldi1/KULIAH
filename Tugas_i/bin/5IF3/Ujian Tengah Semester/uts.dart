abstract class Transportasi{
  String id;
  String nama;
  double _tarifDasar;
  int kapasitas;

  Transportasi(this.id, this.nama, this._tarifDasar, this.kapasitas);

  double get tarifDasar => _tarifDasar;

  double hitungTarif(int jumlahPenumpang);

  void tampilInfo(){
    print('ID : $id');
    print('Nama : $nama');
    print('Tarif Dasar : $_tarifDasar');
    print('Kapasitas : $kapasitas');
  }
}

class Taksi extends Transportasi{
  double jarak;

  Taksi(String id, String nama, double tarifDasar, int kapasitas, this.jarak)
  : super(id, nama, tarifDasar, kapasitas);

  @override
  double hitungTarif(int jumlahPenumang){
    return tarifDasar * jarak;
  }

  @override
  void tampilInfo(){
    super.tampilInfo();
    print('Jarak: $jarak');
  }
}

class Bus extends Transportasi{
  bool adaWifi;

  Bus(String id, String nama, double tarifDasar, int kapasitas, this.adaWifi)
   : super(id, nama, tarifDasar, kapasitas);


  @override
  double hitungTarif(int jumlahPenumpang){
    return (tarifDasar + jumlahPenumpang) + (adaWifi ? 5000 : 0);
  }

  @override
  void tampilInfo(){
    super.tampilInfo();
    print('Ada wifi: ${adaWifi ? "Ya" : "Tidak"}');
  }
}

class Pesawat extends Transportasi{
  String kelas;

  Pesawat(String id, String nama, double tarifDasar, int kapasitas, this.kelas)
  :super(id, nama, tarifDasar, kapasitas);

  @override
  double hitungTarif(int jumlahPenumpang){
    double multiplier = (kelas == "Bisnis") ? 1.5 : 1.0;
    return tarifDasar * jumlahPenumpang * multiplier;
  }

  @override
  void tampilInfo(){
    super.tampilInfo();
    print('Kelas Penerbangan: $kelas');
  }
}

class Pemesanan{
  String idPemesanan;
  String namaPelanggan;
  Transportasi transportasi;
  int jumlahPenumpang;
  double totalTarif;

  Pemesanan(this.idPemesanan, this.namaPelanggan, this.transportasi, this.jumlahPenumpang, this.totalTarif);

  void cetakStruk(){
    print('\n-- Struk Pemesanan ----');
    print('ID Pemesanan: $idPemesanan');
    print('Nama Pelanggan: $namaPelanggan');
    transportasi.tampilInfo();
    print('Jumlah Penumpang: $jumlahPenumpang');
    print('Total Tarif: Rp${totalTarif.toStringAsFixed(2)}');
  }

  Map<String, dynamic> toMap(){
    return{
      'idPemesanan': idPemesanan,
      'namaPelanggan' : namaPelanggan,
      'Transportasi' : transportasi.nama,
      'JumlahPenumpang' : jumlahPenumpang,
      'TotalTarif' : totalTarif,
    };
  }
}

Pemesanan buatPemesanan(Transportasi t, String nama, int jumlahPenumpang){
  double total = t.hitungTarif(jumlahPenumpang);
  String id = 'p${DateTime.now().millisecondsSinceEpoch}';
  return Pemesanan(id, nama, t, jumlahPenumpang, total);
}

void tampilSemuaPemesanan(List<Pemesanan> daftar){
  print('\n=== Riwayat Pemesanan ===');
  for (var pemesanan in daftar){
    pemesanan.cetakStruk();
  }
}

void main(){
  var taksi = Taksi('A002', 'Taksi Grab', 5000, 13, 14.5);
  var bus = Bus('B110', 'TransSofifi', 4000, 50, true);
  var pesawat = Pesawat('C111', 'LionAir', 7000000, 200, 'Ekonomi');

  List<Pemesanan> daftarPemesanan = [];

  daftarPemesanan.add(buatPemesanan(taksi, 'Rizaldi', 1));
  daftarPemesanan.add(buatPemesanan(bus, 'fakih', 10));
  daftarPemesanan.add(buatPemesanan(pesawat, 'ari', 3));
  
  tampilSemuaPemesanan(daftarPemesanan);
}