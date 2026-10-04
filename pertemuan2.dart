//mebuat status menggunakan enum
enum StatusMember { member, nonmember }

//membuat variabel parkir langganan
class parkir {
  String nama;
  String nomorkendaraan;
  String jeniskendaraan;
  StatusMember statusMember;
  int durasi;
  bool tikethilang;
  // membuat class untuk mengisi data variabel dari objek yang dibuat
  parkir({
    required this.nama,
    required this.nomorkendaraan,
    required this.jeniskendaraan,
    required this.statusMember,
    required this.durasi,
    required this.tikethilang,
  });

  int hitungParkir() {
    if (statusMember == StatusMember.member) {
      return 0;
    }

    if (durasi <= 1) {
      return 5000;
    } else if (durasi == 2) {
      return 8000;
    } else {
      return 8000 + ((durasi - 2) * 2000);
    }
  }

  int hitungdenda() {
    if (tikethilang) {
      return 20000;
    }
    return 0;
  }

  int hitungtotal() {
    return hitungParkir() + hitungdenda();
  }

  void tampilkanhasil() {
    print("===== DATA PARKIR =====");
    print("Nama             : $nama");
    print("Nomor Kendaraan  : $nomorkendaraan");
    print("Jenis Kendaraan  : $jeniskendaraan");
    print("Status Member    : $statusMember");
    print("Durasi           : $durasi");
    print("Biaya Parkir     : Rp${hitungParkir()}");
    print("Denda            : Rp${hitungdenda()}");
    print("Total            : Rp${hitungtotal()}");
  }
}

void main() {
  var dataParkir = parkir(
    nama: "umam",
    nomorkendaraan: "G 1121 UAF",
    jeniskendaraan: "motor",
    statusMember: StatusMember.nonmember,
    durasi: 5,
    tikethilang: true,
  );

  dataParkir.tampilkanhasil();
}
