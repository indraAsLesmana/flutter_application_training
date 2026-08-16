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
      id: (json['id'] ?? '').toString(),
      tingkat: (json['tingkat'] ?? '').toString(),
      namaKelas: (json['namaKelas'] ?? json['nama_kelas'] ?? '').toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'tingkat': tingkat, 'namaKelas': namaKelas};
  }
}
