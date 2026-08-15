class ClassModel {
  final String id;
  final String tingkat;
  final String namaKelas;

  ClassModel({
    required this.id,
    required this.tingkat,
    required this.namaKelas,
  });

  factory ClassModel.fromJson(Map<String, dynamic> json) {
    return ClassModel(
      id: json['id'] as String,
      tingkat: json['tingkat'] as String,
      namaKelas: json['nama_kelas'] as String,
    );
  }
}
