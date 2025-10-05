// 1. Definisikan Class Dosen
class Dosen {
  String nama;
  String nidn;
  String spesialisasi;

  Dosen(this.nama, this.nidn, this.spesialisasi);

  void infoDosen() {
    print('Dosen: $nama (NIDN: $nidn)');
    print('Spesialisasi: $spesialisasi');
  }
}


class Mahasiswa {
  String nama;
  String nim;
  String programStudi;

  Mahasiswa(this.nama, this.nim, this.programStudi);

  void infoMahasiswa() {
    print('- $nama (NIM: $nim)');
  }
}


class KelasPerkuliahan {
  String namaKelas;
  Dosen dosenPengampu; 
  List<Mahasiswa> daftarMahasiswa = []; 

  KelasPerkuliahan(this.namaKelas, this.dosenPengampu);

  void tambahMahasiswa(Mahasiswa mhs) {
    daftarMahasiswa.add(mhs);
  }

  void tampilkanDetailKelas() {
    print('============================================');
    print('Kelas: $namaKelas');
    dosenPengampu.infoDosen();
    print('--------------------------------------------');
    print('Daftar Mahasiswa (${daftarMahasiswa.length} orang):');

    if (daftarMahasiswa.isEmpty) {
      print('Belum ada mahasiswa terdaftar.');
    } else {
      for (var mhs in daftarMahasiswa) {
        mhs.infoMahasiswa();
      }
    }
    print('============================================\n');
  }
}


void main() {

  var dosenMobile = Dosen('yasir muin, S.T., M.Kom.', '00123456', 'Pemrograman Mobile');
  var dosenWeb = Dosen('Ir. SALKIN LUTFI S.Kom.,M.T', '00654321', 'Pemrograman Web');

  
  var mhs1 = Mahasiswa('Magfira', '07352311107', 'Informatika');
  var mhs2 = Mahasiswa('Chindy', '07352311129', 'Informatika');
  var mhs3 = Mahasiswa('Amelia', '07352311127', 'Informatika');
  var mhs4 = Mahasiswa('Cantika', '07352311140', 'Informatika');

  
  var kelasMobile = KelasPerkuliahan('Pemrograman Mobile (A)', dosenMobile);
  var kelasWeb = KelasPerkuliahan('Pemrograman Web (B)', dosenWeb);

  
  kelasMobile.tambahMahasiswa(mhs1);
  kelasMobile.tambahMahasiswa(mhs2);

  kelasWeb.tambahMahasiswa(mhs3);
  kelasWeb.tambahMahasiswa(mhs4);
  kelasWeb.tambahMahasiswa(mhs2); 

  
  kelasMobile.tampilkanDetailKelas();
  kelasWeb.tampilkanDetailKelas();
}