class UserModel {
  final String id;
  final String nama;
  final String role;
  final String nipNik;
  final String? email;
  final String? classId;

  UserModel({
    required this.id,
    required this.nama,
    required this.role,
    required this.nipNik,
    this.email,
    this.classId,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: (json['id'] ?? '').toString(),
      nama: (json['nama'] ?? '').toString(),
      role: (json['role'] ?? '').toString(),
      nipNik: (json['nipNik'] ?? json['nip_nik'] ?? '').toString(),
      email: json['email'] as String?,
      classId: json['classId'] as String? ?? json['class_id'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama': nama,
      'role': role,
      'nipNik': nipNik,
      'email': email,
      'classId': classId,
    };
  }
}
